import 'package:flutter/material.dart';

class AppStateBanners extends StatelessWidget {
  final bool downloadedOnlyMode;
  final bool incognitoMode;
  final bool indexing;

  static const incognitoModeBannerBackgroundColor = Color(0xFF4CAF50);
  static const downloadedOnlyBannerBackgroundColor = Color(0xFFFF9800);
  static const indexingBannerBackgroundColor = Color(0xFF2196F3);

  const AppStateBanners({
    super.key,
    required this.downloadedOnlyMode,
    required this.incognitoMode,
    required this.indexing,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (indexing)
          _buildBanner(
            context,
            backgroundColor: indexingBannerBackgroundColor,
            icon: Icons.sync,
            text: 'Indexing library...',
          ),
        
        if (downloadedOnlyMode)
          _buildBanner(
            context,
            backgroundColor: downloadedOnlyBannerBackgroundColor,
            icon: Icons.cloud_off,
            text: 'Downloaded only',
          ),
        
        if (incognitoMode)
          _buildBanner(
            context,
            backgroundColor: incognitoModeBannerBackgroundColor,
            icon: Icons.visibility_off,
            text: 'Incognito mode',
          ),
      ],
    );
  }

  Widget _buildBanner(
    BuildContext context, {
    required Color backgroundColor,
    required IconData icon,
    required String text,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: backgroundColor,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
