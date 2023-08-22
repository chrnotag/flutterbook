import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutterbook/constants/colors/colors.dart';
import 'package:flutterbook/models/post_model.dart';
import 'package:flutterbook/screens/open_post_screen/open_post_screen.dart';
import 'package:flutterbook/utils/providers/theme_provider.dart';
import 'package:flutterbook/widgets/card_posts/comment_card/reply_card.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

import '../../generated/assets.dart';
import '../../utils/truncated_text/truncated_text.dart';

class CardPost extends StatefulWidget {
  PostModel datas;

  CardPost({super.key, required this.datas});

  @override
  State<CardPost> createState() => _CardPostState();
}

class _CardPostState extends State<CardPost> {
  @override
  Widget build(BuildContext context) {
    final data = widget.datas;
    return Builder(builder: (context) {
      final provider = Provider.of<AppProvider>(context);
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          child: Card(
            color: provider.isDarkMode ? AppColors.darkest_grey : Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(data.userImgProfile),
                            radius: 20,
                          ),
                          Wrap(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.78,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    // Define o alinhamento à esquerda
                                    children: [
                                      Text(
                                        data.nameUser,
                                        style: Theme.of(context).textTheme.bodyLarge,
                                      ),
                                      Text(
                                        "${data.timePost.hour}h",
                                        style: Theme.of(context).textTheme.bodySmall,
                                      ),
                                      if (data.imgPost != null)
                                        TruncatedTextWithMoreButton(text: data.postBody ?? "")
                                      else
                                        Container(),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.more_horiz,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                  if (data.imgPost != null)
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => OpenPost(postModel: data),));
                      },
                      child: Container(
                        height: 300,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(data.imgPost!),
                                fit: BoxFit.cover)),
                      ),
                    )
                  else
                    Container(
                      height: 300,
                      width: double.maxFinite,
                      decoration:BoxDecoration(
                        image: DecorationImage(image: AssetImage(_getRandomImage()), fit: BoxFit.contain)
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            data.postBody!,
                            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                              color: AppColors.black
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  Divider(),
                  Row(
                    children: [
                      Expanded(
                          child: TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(LineIcons.thumbsUp),
                                  Text(
                                    "Curtir",
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  )
                                ],
                              ))),
                      Expanded(
                          child: TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(LineIcons.comment),
                                  Text(
                                    "Comentar",
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  )
                                ],
                              ))),
                      Expanded(
                          child: TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(LineIcons.share),
                                  Text(
                                    "Compartilhar",
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  )
                                ],
                              ))),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 0,
                      height: 0.5,
                    ),
                  ),
                  CommentCard(commentPostModel: data.comments![0]),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: Divider(
                      thickness: 0,
                      height: 0.5,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Ver todos os comentários",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ))
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  Color _getRandomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  String _getRandomImage(){
    final random = Random();
    final List<String> images = [
      Assets.imagesParty,
      Assets.imagesEmoji,
      Assets.imagesLove,
    ];
    return images[random.nextInt(3)];
  }
}
