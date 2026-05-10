import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewUtil {
  static String getSpoofedPackageName() {
    return 'com.android.chrome';
  }

  static Future<void> clearCache() async {
    try {
      await InAppWebViewController.clearAllCache();
      debugPrint('WebView cache cleared');
    } catch (e) {
      debugPrint('Error clearing WebView cache: $e');
    }
  }

  static Future<void> clearCookies() async {
    try {
      final cookieManager = CookieManager.instance();
      await cookieManager.deleteAllCookies();
      debugPrint('WebView cookies cleared');
    } catch (e) {
      debugPrint('Error clearing WebView cookies: $e');
    }
  }

  static Future<List<Cookie>> getCookies(String url) async {
    try {
      final cookieManager = CookieManager.instance();
      final cookies = await cookieManager.getCookies(url: WebUri(url));
      return cookies;
    } catch (e) {
      debugPrint('Error getting cookies: $e');
      return [];
    }
  }

  static Future<void> setCookie({
    required String url,
    required String name,
    required String value,
    String? domain,
    String? path,
    int? expiresDate,
    int? maxAge,
    bool? isSecure,
    bool? isHttpOnly,
    HTTPCookieSameSitePolicy? sameSite,
  }) async {
    try {
      final cookieManager = CookieManager.instance();
      await cookieManager.setCookie(
        url: WebUri(url),
        name: name,
        value: value,
        domain: domain,
        path: path ?? '/',
        expiresDate: expiresDate,
        maxAge: maxAge,
        isSecure: isSecure,
        isHttpOnly: isHttpOnly,
        sameSite: sameSite ?? HTTPCookieSameSitePolicy.LAX,
      );
      debugPrint('Cookie set: $name=$value for $url');
    } catch (e) {
      debugPrint('Error setting cookie: $e');
    }
  }

  static Future<String?> getUserAgent() async {
    try {
      if (Platform.isAndroid) {
        return await InAppWebViewController.getDefaultUserAgent();
      } else if (Platform.isIOS) {
        return await InAppWebViewController.getDefaultUserAgent();
      }
      return null;
    } catch (e) {
      debugPrint('Error getting user agent: $e');
      return null;
    }
  }

  static Future<void> configureGlobalOptions() async {
    try {
      if (Platform.isAndroid) {
        await InAppWebViewController.setWebContentsDebuggingEnabled(true);
      }
      
      debugPrint('WebView global options configured');
    } catch (e) {
      debugPrint('Error configuring WebView global options: $e');
    }
  }
}
