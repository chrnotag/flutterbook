import 'package:flutter/material.dart';
import 'package:flutterbook/generated/assets.dart';
import 'package:flutterbook/screens/notifications/notifications_screen.dart';
import 'package:flutterbook/screens/profile/profile_screen.dart';
import 'package:flutterbook/utils/providers/theme_provider.dart';
import '../../constants/colors/colors.dart';
import 'package:provider/provider.dart';

import '../../models/user_model.dart';

class AppBarHome {
  final UserModel data;

  const AppBarHome({required this.data});

  AppBar get appBarHome =>
      AppBar(
        title: Builder(builder: (context) {
          final appProvider = Provider.of<AppProvider>(context);

          Color getButtonColor() {
            return appProvider.isDarkMode
                ? AppColors.darker_grey
                : AppColors.deepblue;
          }

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(40),
                      child: CircleAvatar(
                        radius: 18,
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Image.asset(Assets.imagesLogoRounded,
                              fit: BoxFit.cover),
                        ),
                        backgroundColor: appProvider.isDarkMode
                            ? AppColors.darker_grey
                            : AppColors.deepblue,
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(40),
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: getButtonColor()),
                      width: 30,
                      height: 30,
                      child: Icon(
                        Icons.search,
                        color: Theme
                            .of(context)
                            .iconTheme
                            .color,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(40),
                    onTap: () {},
                    child: Icon(Icons.menu,
                        size: 20, color: Theme
                            .of(context)
                            .iconTheme
                            .color),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(40),
                    onTap: () {
                      appProvider.toggleVisibility(); //A TELA É CHAMADA AQUI
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: getButtonColor()),
                      width: 30,
                      height: 30,
                      child: Icon(
                        Icons.message,
                        color: Theme
                            .of(context)
                            .iconTheme
                            .color,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(40),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationsScreen(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: getButtonColor()),
                      width: 30,
                      height: 30,
                      child: Icon(
                        Icons.notifications,
                        color: Theme
                            .of(context)
                            .iconTheme
                            .color,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(40),
                    onTap: () {
                      appProvider.toggleTheme();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: getButtonColor()),
                      width: 30,
                      height: 30,
                      child: AnimatedCrossFade(
                        duration: Duration(milliseconds: 500),
                        crossFadeState: appProvider.isDarkMode
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                        firstChild: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Icon(
                            Icons.light_mode,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        secondChild: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.dark_mode,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(40),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => PerfilScreen(data: data),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                            image: NetworkImage(data.basicInfo.perfilImg ??
                                "https://www.softdownload.com.br/wp-content/uploads/2018/03/como_trocar_foto_perfil_facebook.jpg",),
                            fit: BoxFit.cover,
                          )),
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
            ],
          );
        }),
      );
}
