import 'package:flutter/material.dart';
import 'package:flutterbook/constants/colors/colors.dart';
import 'package:flutterbook/generated/assets.dart';
import 'package:line_icons/line_icons.dart';

class CardNewPost extends StatelessWidget {
  const CardNewPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(Assets.imagesPerfilImage),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(0, 8, 8, 8),
                        child: Align(alignment: Alignment.centerLeft,child: Text("No que você está pensando, Felippe?")),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Divider(color: AppColors.bluish_grey, height: 1, thickness: 0,),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(
                          LineIcons.broadcastTower,
                          color: Colors.redAccent,
                        ),
                        Text(
                          "Ao vivo",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontWeight: FontWeight.bold,
                              fontSize: 11),
                        )
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(
                          LineIcons.image,
                          color: Colors.green,
                        ),
                        Text(
                          "Foto/Video",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontWeight: FontWeight.bold,
                              fontSize: 11),
                        )
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(
                          LineIcons.smilingFace,
                          color: Colors.yellowAccent,
                        ),
                        Text(
                          "Sentimento/Atividade",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontWeight: FontWeight.bold,
                          fontSize: 11),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}