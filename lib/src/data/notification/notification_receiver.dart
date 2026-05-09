import 'package:flutter/material.dart';

class NotificationReceiver {
  static void dismissNotification(
    BuildContext context,
    int notificationId,
    int groupId,
  ) {
    // TODO: Implementar descarte de notificación
    // Interactua con el sistema de notificaciones nativo
    debugPrint('Dismissing notification: $notificationId, group: $groupId');
  }
}
