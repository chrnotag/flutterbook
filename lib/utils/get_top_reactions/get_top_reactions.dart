import 'package:flutterbook/generated/assets.dart';
import 'package:flutterbook/models/post_model.dart';

class GetTopReactions{
  PostModel postModel;
  GetTopReactions({required this.postModel});
  // Função para encontrar as duas reações com maior número de IDs
  List<String> findTopTwoReactions(ReactionsPostModel reactions) {
    final allReactions = {
      'angry': reactions.angry?.length ?? 0,
      'happy': reactions.happy?.length ?? 0,
      'like': reactions.like?.length ?? 0,
      'sad': reactions.sad?.length ?? 0,
    };

    allReactions.removeWhere((key, value) => value == 0);

    final sortedReactions =
    allReactions.entries.toList()..sort((a, b) => b.value.compareTo(a.value));

    return sortedReactions.sublist(0, 2).map((e) => e.key).toList();
  }

// Função para retornar as imagens referentes às duas reações com maior número de IDs
  List<String> getTopReactionsImages() {
    final topReactions = findTopTwoReactions(postModel.reactions ?? ReactionsPostModel());

    List<String> reactionImages = [];

    for (var reaction in topReactions) {
      if (reaction == 'angry') {
        reactionImages.add(Assets.imagesAngryEmoji);
      } else if (reaction == 'happy') {
        reactionImages.add(Assets.imagesHahaIcon);
      } else if (reaction == 'like') {
        reactionImages.add(Assets.imagesLikeIcon);
      } else if (reaction == 'sad') {
        reactionImages.add(Assets.imagesSadEmoji);
      }
    }

    return reactionImages;
  }

}