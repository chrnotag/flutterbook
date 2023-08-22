class Neighborhood {
  String? name;
  String? city;

  Neighborhood({
    this.name,
    this.city,
  });
}

class StudyLocation {
  String? name;
  String? city;
  DateTime? fromDate;
  DateTime? toDate; // toDate é opcional, pois representa o local atual

  StudyLocation({
    this.name,
    this.city,
    this.fromDate,
    this.toDate,
  });
}

class PlacesLived {
  Neighborhood? neighborhood;
  DateTime? fromDate;
  DateTime? toDate; // toDate é opcional, pois representa o local atual

  PlacesLived({
    this.neighborhood,
    this.fromDate,
    this.toDate,
  });
}

class AdditionalUserInfo {
  List<PlacesLived>? placesLivedHistory = [];
  List<StudyLocation>? placesStudiedHistory = [];
  String? biography;
  String? maritalStatus;
  List<String>? idFriends = [];

  AdditionalUserInfo({
    this.placesLivedHistory = const [],
    this.placesStudiedHistory = const [],
    this.biography = '',
    this.maritalStatus = '',
    this.idFriends = const [],
  });
}

class BasicUserInfo {
  String nameUser;
  String userID;
  String? perfilImg;
  String? coverImg;

  BasicUserInfo({required this.nameUser, required this.userID, this.perfilImg, this.coverImg});
}

class UserModel {
  BasicUserInfo basicInfo;
  AdditionalUserInfo? additionalInfo;

  UserModel({
    required this.basicInfo,
    this.additionalInfo,
  });
}
