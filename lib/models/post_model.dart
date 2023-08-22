class CommentPostModel {
  String? Comentario;
  DateTime? Date;
  String? User;
  String imgUser;
  List<CommentPostModel>? Replies = [];

  CommentPostModel(
      {this.Comentario,
      this.Date,
      this.User,
      this.Replies,
      required this.imgUser});
}

class ReactionsPostModel {
  List<String>? angry = [];
  List<String>? happy = [];
  List<String>? like = [];
  List<String>? sad = [];

  ReactionsPostModel({this.angry, this.happy, this.like, this.sad});
}

class PostModel {
  String? imgPost;
  String nameUser;
  String nameID;
  String userImgProfile;
  DateTime timePost;
  String? postBody;
  List<String>? shareds = [];
  List<CommentPostModel>? comments = [];
  ReactionsPostModel? reactions;

  PostModel(
      {this.imgPost,
      required this.nameUser,
      required this.nameID,
      required this.timePost,
      this.postBody,
      this.comments,
      this.reactions,
      this.shareds,
      required this.userImgProfile});
}
