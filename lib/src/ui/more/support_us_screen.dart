import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportUsScreen extends StatelessWidget {
  const SupportUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support Us'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.volunteer_activism,
                    size: 80,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Support Ikisaku',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Help us keep the project alive',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),
            
            _buildSection(
              context,
              title: 'Why Support?',
              content: 'Ikisaku is a free and open-source manga reader. '
                  'We don\'t show ads or sell your data. Your support helps us:\n\n'
                  '• Maintain and improve the app\n'
                  '• Keep servers running\n'
                  '• Develop new features\n'
                  '• Stay independent and ad-free',
            ),
            
            const SizedBox(height: 24),
            
            _buildSection(
              context,
              title: 'Ways to Support',
              content: '',
            ),
            
            const SizedBox(height: 16),
            
            _buildSupportButton(
              context,
              icon: Icons.favorite,
              title: 'GitHub Sponsors',
              description: 'Support via GitHub',
              url: 'https://github.com/sponsors/Ikisaku',
            ),
            
            const SizedBox(height: 12),
            
            _buildSupportButton(
              context,
              icon: Icons.coffee,
              title: 'Ko-fi',
              description: 'Buy us a coffee',
              url: 'https://ko-fi.com/Ikisaku',
            ),
            
            const SizedBox(height: 12),
            
            _buildSupportButton(
              context,
              icon: Icons.attach_money,
              title: 'Patreon',
              description: 'Become a patron',
              url: 'https://patreon.com/Ikisaku',
            ),
            
            const SizedBox(height: 32),
            
            _buildSection(
              context,
              title: 'Other Ways to Help',
              content: 'Can\'t donate? You can still help by:\n\n'
                  '• Reporting bugs and issues\n'
                  '• Suggesting new features\n'
                  '• Contributing code\n'
                  '• Translating the app\n'
                  '• Spreading the word',
            ),
            
            const SizedBox(height: 24),
            
            OutlinedButton.icon(
              onPressed: () => _launchUrl('https://github.com/Ikisaku'),
              icon: const Icon(Icons.code),
              label: const Text('Contribute on GitHub'),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size.fromHeight(48),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, {required String title, required String content}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        if (content.isNotEmpty) ...[
          const SizedBox(height: 8),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ],
    );
  }

  Widget _buildSupportButton(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String description,
    required String url,
  }) {
    return Card(
      child: InkWell(
        onTap: () => _launchUrl(url),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.open_in_new),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
