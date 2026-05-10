import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'download_queue_screen_model.dart';

class DownloadQueueScreen extends ConsumerStatefulWidget {
  const DownloadQueueScreen({super.key});

  @override
  ConsumerState<DownloadQueueScreen> createState() =>
      _DownloadQueueScreenState();
}

class _DownloadQueueScreenState extends ConsumerState<DownloadQueueScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(downloadQueueScreenModelProvider);
    final notifier = ref.watch(downloadQueueNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Download Queue'),
        actions: [
          IconButton(
            icon: const Icon(Icons.pause),
            onPressed: () {
              notifier.pauseDownloads();
            },
          ),
          IconButton(
            icon: const Icon(Icons.clear_all),
            onPressed: () {
              _showClearQueueDialog(notifier);
            },
          ),
        ],
      ),
      body: state.when(
        data: (downloads) {
          if (downloads.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.download_outlined, size: 64),
                  SizedBox(height: 16),
                  Text('No downloads in queue'),
                ],
              ),
            );
          }

          return ListView.builder(
            itemCount: downloads.length,
            itemBuilder: (context, index) {
              final download = downloads[index];
              return Card(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: ListTile(
                  leading: download.coverUrl != null
                      ? Image.network(
                          download.coverUrl!,
                          width: 40,
                          height: 60,
                          fit: BoxFit.cover,
                        )
                      : Container(
                          width: 40,
                          height: 60,
                          color: Colors.grey,
                        ),
                  title: Text(download.mangaTitle),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(download.chapterName),
                      const SizedBox(height: 4),
                      LinearProgressIndicator(
                        value: download.progress,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${(download.progress * 100).toStringAsFixed(0)}%',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      notifier.cancelDownload(download.id);
                      ref.invalidate(downloadQueueScreenModelProvider);
                    },
                  ),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text('Error: $error'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(downloadQueueScreenModelProvider);
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showClearQueueDialog(DownloadQueueNotifier notifier) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Clear download queue'),
        content: const Text('Are you sure you want to clear all downloads?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              notifier.clearQueue();
              ref.invalidate(downloadQueueScreenModelProvider);
              Navigator.of(context).pop();
            },
            child: const Text('Clear'),
          ),
        ],
      ),
    );
  }
}
