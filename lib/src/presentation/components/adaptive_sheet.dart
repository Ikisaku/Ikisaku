import 'package:flutter/material.dart';

class AdaptiveSheet extends StatelessWidget {
  final VoidCallback onDismissRequest;
  final Widget child;
  final bool enableImplicitDismiss;

  const AdaptiveSheet({
    super.key,
    required this.onDismissRequest,
    required this.child,
    this.enableImplicitDismiss = true,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (enableImplicitDismiss) {
          onDismissRequest();
          return true;
        }
        return false;
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        ),
        child: SafeArea(
          child: child,
        ),
      ),
    );
  }
}
