import 'package:flutterbook/data/users_data.dart';

import '../models/notifications_model.dart';

class NotificationsData {
  static List<NotificationsModel> notifications = [
        NotificationsModel(
            user: UsersData.getUsers()[0],
            notificationType: NotificationType.comment,
            timePost: DateTime(2023, 7, 25, 9, 28, 6, 123)),
        NotificationsModel(
          user: UsersData.getUsers()[1],
          notificationType: NotificationType.shared,
          timePost: DateTime(2023, 7, 26, 9, 28, 6, 123),
        ),
        NotificationsModel(
            user: UsersData.getUsers()[2],
            notificationType: NotificationType.reaction,
            timePost: DateTime(2023, 7, 29)),
        NotificationsModel(
            user: UsersData.getUsers()[3],
            notificationType: NotificationType.reaction,
            timePost: DateTime.now().subtract(Duration(minutes: 15))),
    NotificationsModel(
        user: UsersData.getUsers()[3],
        notificationType: NotificationType.comment,
        timePost: DateTime.now().subtract(Duration(minutes: 15))),
    NotificationsModel(
        user: UsersData.getUsers()[3],
        notificationType: NotificationType.shared,
        timePost: DateTime.now().subtract(Duration(minutes: 15))),
      ];

  static List<NotificationsModel> getNotifications() {
    return notifications;
  }
}
