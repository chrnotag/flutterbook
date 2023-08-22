import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutterbook/constants/colors/colors.dart';
import 'package:flutterbook/data/users_data.dart';

import '../../models/user_model.dart';

class ContactsCard extends StatefulWidget {
  const ContactsCard({super.key});

  @override
  State<ContactsCard> createState() => _ContactsCardState();
}

List<UserModel> contacts = UsersData.getUsers();

class _ContactsCardState extends State<ContactsCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 450,
              width: 300,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(contacts[index].basicInfo.perfilImg!),
                        radius: 20,
                      ),
                      title: Text(contacts[index].basicInfo.nameUser),
                      subtitle: Text(Faker().lorem.sentence(), maxLines: 1, overflow: TextOverflow.ellipsis,),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 42,
              width: 300,
              decoration: BoxDecoration(
                  border:
                      Border(top: BorderSide(color: AppColors.bluish_grey))),
              child: Center(
                  child: Text(
                'Ver no Messenger',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
              )),
            )
          ],
        ),
      ),
    );
  }
}
