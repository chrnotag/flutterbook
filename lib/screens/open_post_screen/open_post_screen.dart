import 'package:flutter/material.dart';
import 'package:flutterbook/constants/colors/colors.dart';
import 'package:flutterbook/models/post_model.dart';
import 'package:flutterbook/utils/truncated_text/truncated_text.dart';
import 'package:line_icons/line_icons.dart';

import '../../utils/get_top_reactions/get_top_reactions.dart';

class OpenPost extends StatelessWidget {
  PostModel postModel;

  OpenPost({super.key, required this.postModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          shadowColor: Colors.transparent, backgroundColor: Colors.transparent),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(postModel.imgPost!), fit: BoxFit.contain),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0x53000000),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 500),
                  child: SingleChildScrollView(
                    child: Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                postModel.nameUser,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        fontSize: 18),
                              ),
                              Text(
                                "${postModel.timePost.hour}h",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              if (postModel.postBody != null)
                                TruncatedTextWithMoreButton(
                                  text: postModel.postBody!,
                                  maxLines: 2,
                                  textColor: Colors.white,
                                ),
                              SizedBox(
                                width: double.maxFinite,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 15,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(GetTopReactions(
                                                      postModel: postModel)
                                                  .getTopReactionsImages()[1]),
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            border: Border.all(
                                                color: Colors.black,
                                                width: 2,
                                                strokeAlign: BorderSide
                                                    .strokeAlignOutside)),
                                      ),
                                    ),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(GetTopReactions(
                                                    postModel: postModel)
                                                .getTopReactionsImages()[0]),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          border: Border.all(
                                              color: Colors.black,
                                              width: 2,
                                              strokeAlign: BorderSide
                                                  .strokeAlignOutside)),
                                    ),
                                    Positioned(
                                      left: 40,
                                      child: Text(
                                        "${getTotalReactionIndices(postModel)}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    containerOption(
                                        context,
                                        Icons.comment,
                                        postModel.comments?.isEmpty ?? true
                                            ? "0"
                                            : postModel.comments!.length
                                                .toString()),
                                    containerOption(
                                        context,
                                        LineIcons.share,
                                        postModel.shareds?.isEmpty ?? true
                                            ? "0"
                                            : postModel.shareds!.length
                                                .toString()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  int getTotalReactionIndices(PostModel post) {
    int totalIndices = 0;

    if (post.reactions != null) {
      final reactions = post.reactions!;
      totalIndices += (reactions.angry?.length ?? 0);
      totalIndices += (reactions.happy?.length ?? 0);
      totalIndices += (reactions.like?.length ?? 0);
      totalIndices += (reactions.sad?.length ?? 0);
    }

    return totalIndices;
  }

  Widget containerOption(
      BuildContext context, IconData icone, String nameCard) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: AppColors.ligth_grey,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icone,
              color: AppColors.bluish_grey,
              size: 30,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              nameCard,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
