import 'package:flutter/material.dart';
import 'package:flutterbook/generated/assets.dart';
import '../../constants/colors/colors.dart';

class PersonStorieCard extends StatelessWidget {
  PersonStorieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  Assets.imagesPerfilImage,
                  fit: BoxFit.cover,
                  height: double.maxFinite,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 142,
                  height: 50,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.vertical(
                          bottom: Radius.circular(20)),
                      color: AppColors.black),
                ),
              ),
              Positioned(
                bottom: 26,
                right: 47,
                child: Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(44),
                    ),
                    color: AppColors.black,
                  ),
                ),
              ),
              Positioned(
                bottom: 29,
                right: 50,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.azul500,
                  ),
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    "Criar Storie",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
