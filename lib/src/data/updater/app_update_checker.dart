import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ikisaku/src/domain/release/interactor/get_application_release.dart';

class AppUpdateChecker {
  static const String _githubApiUrl = 'https://api.github.com/repos/Ikisaku/Ikisaku/releases/latest';

  Future<GetApplicationReleaseResult?> checkForUpdate(BuildContext context) async {
    try {
      final response = await http.get(Uri.parse(_githubApiUrl));
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body) as Map<String, dynamic>;
        final latestVersion = data['tag_name'] as String;
        final currentVersion = await _getCurrentVersion();
        
        if (_isNewerVersion(latestVersion, currentVersion)) {
          return NewUpdateResult(
            ApplicationRelease(
              version: latestVersion,
              info: data['body'] as String? ?? '',
              releaseLink: data['html_url'] as String,
              downloadLink: _getDownloadLink(data),
            ),
          );
        }
      }
      
      return NoUpdateResult();
    } on Exception catch (e) {
      debugPrint('Error checking for updates: $e');
      return null;
    }
  }

  Future<String> _getCurrentVersion() async {
    // TODO: Obtener versión actual de la app desde package_info
    return '1.0.0';
  }

  bool _isNewerVersion(String latest, String current) {
    final latestParts = latest.replaceAll('v', '').split('.');
    final currentParts = current.split('.');
    
    for (int i = 0; i < latestParts.length && i < currentParts.length; i++) {
      final latestNum = int.tryParse(latestParts[i]) ?? 0;
      final currentNum = int.tryParse(currentParts[i]) ?? 0;
      
      if (latestNum > currentNum) return true;
      if (latestNum < currentNum) return false;
    }
    
    return false;
  }

  String _getDownloadLink(Map<String, dynamic> releaseData) {
    final assets = releaseData['assets'] as List?;
    if (assets != null && assets.isNotEmpty) {
      for (var asset in assets) {
        final name = asset['name'] as String;
        if (name.endsWith('.apk') || name.endsWith('.exe')) {
          return asset['browser_download_url'] as String;
        }
      }
    }
    return releaseData['html_url'] as String;
  }
}
