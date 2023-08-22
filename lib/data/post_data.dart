import 'package:faker/faker.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../models/post_model.dart';

class PostData {
  final faker = Faker();

  List<PostModel> getPosts() => [
        PostModel(
            timePost: faker.date.dateTime(),
            userImgProfile: faker.image.image(random: true),
            nameUser: faker.person.name(),
            nameID: faker.randomGenerator.string(10),
            imgPost: faker.image.image(random: true),
            postBody: lorem(paragraphs: 2),
            shareds: [
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
            ],
            reactions: ReactionsPostModel(
              angry: [
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10)
              ],
              happy: [
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
              ],
              like: [
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10)
              ],
            ),
            comments: [
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name(),
                  Replies: [
                    CommentPostModel(
                        imgUser: faker.image.image(random: true),
                        Comentario: faker.lorem.sentence(),
                        Date: faker.date.dateTime(),
                        User: faker.person.name()),
                    CommentPostModel(
                        imgUser: faker.image.image(random: true),
                        Comentario: faker.lorem.sentence(),
                        Date: faker.date.dateTime(),
                        User: faker.person.name()),
                  ]),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
            ]),
        PostModel(
            timePost: faker.date.dateTime(),
            userImgProfile: faker.image.image(random: true),
            nameUser: faker.person.name(),
            nameID: faker.randomGenerator.string(10),
            postBody: faker.lorem.sentence(),
            shareds: [
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
            ],
            reactions: ReactionsPostModel(
              angry: [
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10)
              ],
              happy: [
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
              ],
              like: [
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10)
              ],
            ),
            comments: [
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name(),
                  Replies: [
                    CommentPostModel(
                        imgUser: faker.image.image(random: true),
                        Comentario: faker.lorem.sentence(),
                        Date: faker.date.dateTime(),
                        User: faker.person.name()),
                    CommentPostModel(
                        imgUser: faker.image.image(random: true),
                        Comentario: faker.lorem.sentence(),
                        Date: faker.date.dateTime(),
                        User: faker.person.name()),
                  ]),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
            ]),
        PostModel(
            timePost: faker.date.dateTime(),
            userImgProfile: faker.image.image(random: true),
            nameUser: faker.person.name(),
            nameID: faker.randomGenerator.string(10),
            imgPost: faker.image.image(random: true),
            postBody: faker.lorem.sentence(),
            reactions: ReactionsPostModel(
              angry: [
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10)
              ],
              happy: [
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
              ],
              like: [
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
              ],
            ),
            comments: [
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name(),
                  Replies: [
                    CommentPostModel(
                        imgUser: faker.image.image(random: true),
                        Comentario: faker.lorem.sentence(),
                        Date: faker.date.dateTime(),
                        User: faker.person.name()),
                    CommentPostModel(
                        imgUser: faker.image.image(random: true),
                        Comentario: faker.lorem.sentence(),
                        Date: faker.date.dateTime(),
                        User: faker.person.name()),
                  ]),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
            ]),
        PostModel(
            timePost: faker.date.dateTime(),
            userImgProfile: faker.image.image(random: true),
            nameUser: faker.person.name(),
            nameID: faker.randomGenerator.string(10),
            postBody: faker.lorem.sentence(),
            shareds: [
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
              faker.randomGenerator.toString(),
            ],
            reactions: ReactionsPostModel(
              angry: [
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10)
              ],
              happy: [
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
              ],
              like: [
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10),
                faker.randomGenerator.string(10)
              ],
            ),
            comments: [
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name(),
                  Replies: [
                    CommentPostModel(
                        imgUser: faker.image.image(random: true),
                        Comentario: faker.lorem.sentence(),
                        Date: faker.date.dateTime(),
                        User: faker.person.name()),
                    CommentPostModel(
                        imgUser: faker.image.image(random: true),
                        Comentario: faker.lorem.sentence(),
                        Date: faker.date.dateTime(),
                        User: faker.person.name()),
                  ]),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
              CommentPostModel(
                  imgUser: faker.image.image(random: true),
                  Comentario: faker.lorem.sentence(),
                  Date: faker.date.dateTime(),
                  User: faker.person.name()),
            ]),
      ];
}
