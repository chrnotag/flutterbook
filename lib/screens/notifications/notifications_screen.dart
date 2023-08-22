import 'package:flutter/material.dart';
import 'package:flutterbook/constants/colors/colors.dart';
import 'package:flutterbook/data/notification_data.dart';
import 'package:flutterbook/models/notifications_model.dart';
import 'package:provider/provider.dart';
import '../../utils/providers/theme_provider.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    List<NotificationsModel> notifications =
        NotificationsData.getNotifications();
    notifications.sort((a, b) => b.timePost.compareTo(a.timePost));
    return Scaffold(
        appBar: AppBar(
          title: const Text("Notificações"),
        ),
        body: Builder(builder: (context) {
          final provider = Provider.of<AppProvider>(context);
          return ListView.builder(
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 1),
                child: ListTile(
                  tileColor: provider.isDarkMode
                      ? notifications[index].visualized
                          ? Colors.transparent
                          : AppColors.darker_grey
                      : notifications[index].visualized
                          ? Colors.transparent
                          : AppColors.gainsboroColor,
                  onTap: () {
                    setState(() {
                      notifications[index].visualized = true;
                    });
                  },
                  leading: SizedBox(
                    height: 70,
                    width: 70,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              notifications[index].user.basicInfo.perfilImg!),
                          radius: 30,
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Image.asset(
                              notifications[index].notificationImage,
                              height: 30,
                              width: 30,
                            ))
                      ],
                    ),
                  ),
                  title: Text.rich(
                    TextSpan(
                        text:
                            "${notifications[index].user.basicInfo.nameUser} ",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.w900),
                        children: <TextSpan>[
                          TextSpan(
                              text: notifications[index].notificationBody,
                              style: Theme.of(context).textTheme.bodyMedium),
                        ]),
                  ),
                  subtitle: Text("Há ${notifications[index].getTimeElapsed()}"),
                ),
              );
            },
          );
        }));
  }
}
