import 'package:flutter/material.dart';
import 'package:flutterbook/models/user_model.dart';
import 'package:flutterbook/utils/providers/theme_provider.dart';
import 'package:provider/provider.dart';

import '../../constants/colors/colors.dart';

class PerfilHeader extends StatelessWidget {
  final UserModel data;

  const PerfilHeader({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final provider = Provider.of<AppProvider>(context);
      return SizedBox(
        height: 275,
        child: Stack(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(data.basicInfo.coverImg ??
                            "https://www.softdownload.com.br/wp-content/uploads/2018/03/como_trocar_foto_perfil_facebook.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              right: 16,
              bottom: 91,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.lightest_grey,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Icon(Icons.add_a_photo, size: 30, color: Colors.black),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 16,
              child: SizedBox(
                height: 160,
                width: 160,
                child: Stack(
                  children: [
                    InkWell(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: provider.isDarkMode
                                  ? AppColors.black
                                  : AppColors.ligth_grey,
                              width: 5,
                              strokeAlign: BorderSide.strokeAlignOutside),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          image: DecorationImage(
                              image: NetworkImage(data.basicInfo.perfilImg ??
                                  "https://www.softdownload.com.br/wp-content/uploads/2018/03/como_trocar_foto_perfil_facebook.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 8,
                      bottom: 8,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: AppColors.lightest_grey,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            border: Border.all(
                                color: provider.isDarkMode
                                    ? AppColors.black
                                    : AppColors.ligth_grey,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                width: 3)),
                        child: Icon(Icons.add_a_photo,
                            size: 30, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
