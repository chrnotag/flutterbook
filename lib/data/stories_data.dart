import 'package:faker/faker.dart';

import '../models/storie_model.dart';

class StoriesData {
  StoriesData._();

  static List<StorieModel> getStories() {
    return [
      StorieModel(
          imgProfile: Faker().image.image(random: true),
          nameUser: Faker().person.name(),
          userID: Faker().vehicle.model(),
          stories: [
            Story(content: Faker().image.image(random: true), isImage: true),
            Story(content: Faker().lorem.sentence(), isImage: false),
            Story(content: Faker().image.image(random: true), isImage: true),
            Story(content: Faker().lorem.sentence(), isImage: false),
          ]),
      StorieModel(
          imgProfile: Faker().image.image(random: true),
          nameUser: Faker().person.name(),
          userID: Faker().vehicle.model(),
          stories: [Story(content: Faker().image.image(random: true), isImage: true)]),
      StorieModel(
          imgProfile: Faker().image.image(random: true),
          nameUser: Faker().person.name(),
          userID: Faker().vehicle.model(),
          stories: [Story(content: Faker().lorem.sentence(), isImage: false)]),
      StorieModel(
          imgProfile: Faker().image.image(random: true),
          nameUser: Faker().person.name(),
          userID: Faker().vehicle.model(),
          stories: [Story(content: Faker().image.image(random: true), isImage: true)]),
      StorieModel(
          imgProfile: Faker().image.image(random: true),
          nameUser: Faker().person.name(),
          userID: Faker().vehicle.model(),
          stories: [Story(content: Faker().lorem.sentence(), isImage: false)]),
    ];
  }
}
