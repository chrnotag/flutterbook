class Story {
  String content;
  bool isImage;

  Story({required this.content, required this.isImage});
}

class StorieModel {
  String imgProfile;
  String nameUser;
  String userID;
  List<Story> stories;

  StorieModel({
    required this.imgProfile,
    required this.nameUser,
    required this.userID,
    required this.stories,
  });
}
