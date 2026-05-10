import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:ikisaku/src/util/system/webview_util.dart';

class CloudflareWebView extends StatefulWidget {
  final String url;
  final Function(String cfClearance)? onCookieObtained;
  final VoidCallback? onCancel;

  const CloudflareWebView({
    super.key,
    required this.url,
    this.onCookieObtained,
    this.onCancel,
  });

  @override
  State<CloudflareWebView> createState() => _CloudflareWebViewState();
}

class _CloudflareWebViewState extends State<CloudflareWebView> {
  InAppWebViewController? _webViewController;
  bool _isLoading = true;
  String _currentUrl = '';
  double _progress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cloudflare Verification'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            widget.onCancel?.call();
            Navigator.of(context).pop();
          },
        ),
        actions: [
          if (_isLoading)
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
            ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => _webViewController?.reload(),
          ),
        ],
      ),
      body: Column(
        children: [
          if (_progress < 1.0)
            LinearProgressIndicator(
              value: _progress,
              backgroundColor: Colors.grey[200],
            ),
          Expanded(
            child: InAppWebView(
              initialUrlRequest: URLRequest(
                url: WebUri(widget.url),
              ),
              initialSettings: InAppWebViewSettings(
                userAgent:
                    'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
                javaScriptEnabled: true,
                javaScriptCanOpenWindowsAutomatically: true,
                mediaPlaybackRequiresUserGesture: false,
                allowsInlineMediaPlayback: true,
                thirdPartyCookiesEnabled: true,
                cacheEnabled: true,
                supportZoom: true,
                builtInZoomControls: true,
                displayZoomControls: false,
              ),
              onWebViewCreated: (controller) {
                _webViewController = controller;
              },
              onLoadStart: (controller, url) {
                setState(() {
                  _isLoading = true;
                  _currentUrl = url?.toString() ?? '';
                });
              },
              onLoadStop: (controller, url) async {
                setState(() {
                  _isLoading = false;
                  _currentUrl = url?.toString() ?? '';
                });

                await _checkForCloudfareCookie();
              },
              onProgressChanged: (controller, progress) {
                setState(() {
                  _progress = progress / 100;
                });
              },
              onReceivedError: (controller, request, error) {
                debugPrint('WebView error: ${error.description}');
              },
              onReceivedHttpError: (controller, request, errorResponse) {
                debugPrint(
                    'WebView HTTP error: ${errorResponse.statusCode}');
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Complete the verification to continue. The page will close automatically.',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _checkForCloudfareCookie() async {
    try {
      final cookies = await WebViewUtil.getCookies(_currentUrl);

      final cfClearance = cookies.firstWhere(
        (cookie) => cookie.name == 'cf_clearance',
        orElse: () => Cookie(name: '', value: ''),
      );

      if (cfClearance.value.isNotEmpty) {
        debugPrint('Cloudflare cookie obtained: ${cfClearance.value}');

        widget.onCookieObtained?.call(cfClearance.value);

        if (mounted) {
          Navigator.of(context).pop(cfClearance.value);
        }
      }
    } catch (e) {
      debugPrint('Error checking for Cloudflare cookie: $e');
    }
  }
}

Future<String?> showCloudflareWebView(
  BuildContext context,
  String url,
) async {
  return await Navigator.of(context).push<String>(
    MaterialPageRoute(
      builder: (context) => CloudflareWebView(url: url),
      fullscreenDialog: true,
    ),
  );
}
