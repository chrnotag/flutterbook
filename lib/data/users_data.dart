import 'package:faker/faker.dart';

import '../models/user_model.dart';

class UsersData {
  UsersData._();

  static List<UserModel> getUsers() {
    return [
      UserModel(
        basicInfo: BasicUserInfo(
            nameUser: 'João da Silva',
            userID: 'bR6sD2tFpW',
            perfilImg: Faker().image.image(random: true)),
        additionalInfo: AdditionalUserInfo(
          biography:
              "Apaixonado por música e arte. Buscando sempre inspiração e expressão através das cores e notas musicais.",
          maritalStatus: "Solteiro",
          placesLivedHistory: [
            PlacesLived(
              fromDate: DateTime(2021, 4, 15),
              neighborhood: Neighborhood(
                city: "São Paulo",
                name: "Jardim das Flores",
              ),
            ),
          ],
          placesStudiedHistory: [
            StudyLocation(
              name: "Colégio Santa Maria",
              city: "São Paulo",
              fromDate: DateTime(2015, 5, 2),
              toDate: DateTime(2018, 20, 12),
            ),
          ],
          idFriends: [
            'h3Y7gA98Kd',
            'qJ5uT4vRmX',
            'eE2kP7mWzH',
            'eE2kP7mWzHL',
            'eE2kP7mWzHM',
            'eE2kP7mWzHK',
          ],
        ),
      ),
      UserModel(
        basicInfo: BasicUserInfo(
            nameUser: 'Felippe Pinheiro',
            userID: 'h3Y7gA98Kd',
            perfilImg: Faker().image.image(random: true)),
        additionalInfo: AdditionalUserInfo(
          biography:
              "Amante da natureza e entusiasta de viagens. Sempre em busca de novas aventuras e experiências ao redor do mundo.",
          maritalStatus: "Casado",
          placesLivedHistory: [
            PlacesLived(
              fromDate: DateTime(2021, 4, 15),
              neighborhood: Neighborhood(
                city: "Rio de Janeiro",
                name: "Ipanema",
              ),
            ),
          ],
          placesStudiedHistory: [
            StudyLocation(
              name: "Escola Estadual José Silva",
              city: "Rio de Janeiro",
              fromDate: DateTime(2015, 5, 2),
              toDate: DateTime(2018, 20, 12),
            ),
          ],
        ),
      ),
      UserModel(
        basicInfo: BasicUserInfo(
            nameUser: 'Maria Souza',
            userID: 'qJ5uT4vRmX',
            perfilImg: Faker().image.image(random: true)),
        additionalInfo: AdditionalUserInfo(
          biography:
              "Amante da gastronomia e explorador de sabores. Descobrindo novas culturas através da culinária.",
          maritalStatus: "Casado",
          placesLivedHistory: [
            PlacesLived(
              fromDate: DateTime(2021, 4, 15),
              neighborhood: Neighborhood(
                city: "Belo Horizonte",
                name: "Centro",
              ),
            ),
          ],
          placesStudiedHistory: [
            StudyLocation(
              name: "Instituto Educacional São Francisco",
              city: "Belo Horizonte",
              fromDate: DateTime(2015, 5, 2),
              toDate: DateTime(2018, 20, 12),
            ),
          ],
        ),
      ),
      UserModel(
        basicInfo: BasicUserInfo(
            nameUser: 'Pedro Santos',
            userID: 'eE2kP7mWzH',
            perfilImg: Faker().image.image(random: true)),
        additionalInfo: AdditionalUserInfo(
          biography:
              "Sonhador incansável, sempre acreditando que é possível alcançar os objetivos mais ousados.",
          maritalStatus: "Namorando",
          placesLivedHistory: [
            PlacesLived(
              fromDate: DateTime(2021, 4, 15),
              neighborhood: Neighborhood(
                city: "Salvador",
                name: "Vila Nova",
              ),
            ),
          ],
          placesStudiedHistory: [
            StudyLocation(
              name: "Escola Municipal Rio Verde",
              city: "Salvador",
              fromDate: DateTime(2015, 5, 2),
              toDate: DateTime(2018, 20, 12),
            ),
          ],
        ),
      ),
      UserModel(
        basicInfo: BasicUserInfo(
            nameUser: 'Pedro Santos',
            userID: 'eE2kP7mWzHK',
            perfilImg: Faker().image.image(random: true)),
        additionalInfo: AdditionalUserInfo(
          biography:
              "Sonhador incansável, sempre acreditando que é possível alcançar os objetivos mais ousados.",
          maritalStatus: "Namorando",
          placesLivedHistory: [
            PlacesLived(
              fromDate: DateTime(2021, 4, 15),
              neighborhood: Neighborhood(
                city: "Salvador",
                name: "Vila Nova",
              ),
            ),
          ],
          placesStudiedHistory: [
            StudyLocation(
              name: "Escola Municipal Rio Verde",
              city: "Salvador",
              fromDate: DateTime(2015, 5, 2),
              toDate: DateTime(2018, 20, 12),
            ),
          ],
        ),
      ),
      UserModel(
        basicInfo: BasicUserInfo(
            nameUser: 'Pedro Santos',
            userID: 'eE2kP7mWzHL',
            perfilImg: Faker().image.image(random: true)),
        additionalInfo: AdditionalUserInfo(
          biography:
              "Sonhador incansável, sempre acreditando que é possível alcançar os objetivos mais ousados.",
          maritalStatus: "Namorando",
          placesLivedHistory: [
            PlacesLived(
              fromDate: DateTime(2021, 4, 15),
              neighborhood: Neighborhood(
                city: "Salvador",
                name: "Vila Nova",
              ),
            ),
          ],
          placesStudiedHistory: [
            StudyLocation(
              name: "Escola Municipal Rio Verde",
              city: "Salvador",
              fromDate: DateTime(2015, 5, 2),
              toDate: DateTime(2018, 20, 12),
            ),
          ],
        ),
      ),
      UserModel(
        basicInfo: BasicUserInfo(
            nameUser: 'Pedro Santos',
            userID: 'eE2kP7mWzHM',
            perfilImg: Faker().image.image(random: true)),
        additionalInfo: AdditionalUserInfo(
          biography:
              "Sonhador incansável, sempre acreditando que é possível alcançar os objetivos mais ousados.",
          maritalStatus: "Namorando",
          placesLivedHistory: [
            PlacesLived(
              fromDate: DateTime(2021, 4, 15),
              neighborhood: Neighborhood(
                city: "Salvador",
                name: "Vila Nova",
              ),
            ),
          ],
          placesStudiedHistory: [
            StudyLocation(
              name: "Escola Municipal Rio Verde",
              city: "Salvador",
              fromDate: DateTime(2015, 5, 2),
              toDate: DateTime(2018, 20, 12),
            ),
          ],
        ),
      ),
    ];
  }

  static List<UserModel> findFriendsByID(List<String> friendIds) {
    return getUsers().where((user) => friendIds.contains(user.basicInfo.userID)).toList() ?? [];
  }
}
