import 'package:flutter/material.dart';
import 'package:flutterbook/data/users_data.dart';
import 'package:flutterbook/models/user_model.dart';
import 'package:flutterbook/utils/providers/theme_provider.dart';
import 'package:flutterbook/widgets/appbar/appbar_app.dart';
import 'package:flutterbook/widgets/header_perfil/header_perfil.dart';
import 'package:provider/provider.dart';

import '../../constants/colors/colors.dart';

class PerfilScreen extends StatefulWidget {
  final UserModel data;

  const PerfilScreen({super.key, required this.data});

  @override
  State<PerfilScreen> createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  @override
  Widget build(BuildContext context) {
    final data = widget.data;
    return Scaffold(
      appBar: AppBar(
          title: Text(data.basicInfo.nameUser),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))]),
      body: Builder(builder: (context) {
        final provider = Provider.of<AppProvider>(context);
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PerfilHeader(
                data: data,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.basicInfo.nameUser,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      data.additionalInfo!.biography ?? "",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.add),
                                  Text(
                                    "Acidionar ao story",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.edit),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Editar perfil",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.bold, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.more_horiz),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    if (data.additionalInfo?.placesStudiedHistory?.isNotEmpty ??
                        false)
                      ...data.additionalInfo!.placesStudiedHistory!.map(
                        (place) => Row(
                          children: [
                            Icon(
                              Icons.school,
                              size: 25,
                              color: provider.isDarkMode
                                  ? Colors.white
                                  : AppColors.black,
                            ),
                            SizedBox(width: 16),
                            Text(
                              "Estudou em ${place.name!}",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    if (data.additionalInfo?.placesLivedHistory?.isNotEmpty ??
                        false)
                      ...data.additionalInfo!.placesLivedHistory!.map(
                        (place) => Row(
                          children: [
                            Icon(
                              Icons.home,
                              size: 25,
                              color: provider.isDarkMode
                                  ? Colors.white
                                  : AppColors.black,
                            ),
                            SizedBox(width: 16),
                            Text(
                              "Mora em ${place.neighborhood!.city!}",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Amigos",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("Ver Todos",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.blue)),
                        ),
                      ],
                    ),
                    GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: 0.794,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: List.generate(6, (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage(UsersData.findFriendsByID(data.additionalInfo!.idFriends!)[index].basicInfo.perfilImg ?? "https://www.softdownload.com.br/wp-content/uploads/2018/03/como_trocar_foto_perfil_facebook.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              width: 130,
                              height: 130,
                            ),
                            Text(UsersData.findFriendsByID(data.additionalInfo!.idFriends!)[index].basicInfo.nameUser, style:Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ))
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
