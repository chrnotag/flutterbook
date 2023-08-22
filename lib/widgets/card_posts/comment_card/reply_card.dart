import 'package:flutter/material.dart';
import 'package:flutterbook/constants/colors/colors.dart';
import 'package:flutterbook/models/post_model.dart';
import 'package:flutterbook/utils/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class CommentCard extends StatefulWidget {
  CommentPostModel commentPostModel;

  CommentCard({super.key, required this.commentPostModel});

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    final data = widget.commentPostModel;
    return Builder(
      builder: (context) {
        final provider = Provider.of<AppProvider>(context);
        return Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(data.imgUser),
                  radius: 15,
                ),
                Expanded(
                  child: Container(
                    child: Card(
                      color: provider.isDarkMode ? AppColors.darker_grey : AppColors.lightest_grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(data.Comentario!),
                            Divider(
                              height: 1,
                              thickness: 0,
                              color: AppColors.bluish_grey,
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Icon(Icons.thumb_up, size: 20, color: provider.isDarkMode ? AppColors.dark_grey : AppColors.azul500),
                                      Text("Curtir",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium)
                                    ],
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Icon(Icons.comment, size: 20,color: provider.isDarkMode ? AppColors.dark_grey : AppColors.azul500),
                                      Text(
                                        "Responder",
                                        style:
                                            Theme.of(context).textTheme.bodyMedium,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (data
                .Replies!.isNotEmpty) // Usar um if para verificar se há respostas
              Column(
                children: data.Replies!.map((reply) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 8, 0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(reply.imgUser),
                            radius: 13,
                          ),
                          Expanded(
                            child: Container(
                              child: Card(
                                color: provider.isDarkMode ? AppColors.darker_grey : AppColors.lightest_grey,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(reply.Comentario!, style: Theme.of(context).textTheme.bodyMedium,),
                                      Divider(
                                        height: 0,
                                        thickness: 1,
                                        color: AppColors.bluish_grey,
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () {},
                                            child: Row(
                                              children: [
                                                Icon(Icons.thumb_up, size: 20,color: provider.isDarkMode ? AppColors.dark_grey : AppColors.azul500),
                                                Text(
                                                  "Curtir",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium,
                                                )
                                              ],
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            child: Row(
                                              children: [
                                                Icon(Icons.comment, size: 20,color: provider.isDarkMode ? AppColors.dark_grey : AppColors.azul500),
                                                Text(
                                                  "Responder",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
          ],
        );
      }
    );
  }
}
