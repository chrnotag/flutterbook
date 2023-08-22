import 'package:flutterbook/generated/assets.dart';
import 'package:flutterbook/models/user_model.dart';

class NotificationsModel {
  UserModel user;
  NotificationType notificationType;
  DateTime timePost;
  bool visualized;
  NotificationsModel({
    required this.user,
    required this.notificationType,
    required this.timePost,
    this.visualized = false,
  });

  String get notificationBody {
    switch (notificationType) {
      case NotificationType.comment:
        return "comentou na sua postagem";
      case NotificationType.reaction:
        return "reagiu a sua postagem";
      case NotificationType.shared:
        return "compartilhou sua publicação";
    }
  }

  String get notificationImage {
    switch (notificationType) {
      case NotificationType.comment:
        return Assets.imagesCommentRounded;
      case NotificationType.reaction:
        return Assets.imagesHahaIcon;
      case NotificationType.shared:
        return Assets.imagesSharedIcon;
    }
  }

  String getTimeElapsed() {
    Duration difference = DateTime.now().difference(timePost!);
    int minutesElapsed = difference.inMinutes;

    if (minutesElapsed < 60) {
      return '${minutesElapsed}min';
    } else if (minutesElapsed < 1440) {
      int hoursElapsed = difference.inHours;
      return '${hoursElapsed}h';
    } else {
      int daysElapsed = difference.inDays;
      return '${daysElapsed}d';
    }
  }
}

enum NotificationType { comment, reaction, shared }
