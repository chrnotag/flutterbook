import 'package:flutter/material.dart';
import 'package:flutterbook/data/post_data.dart';
import 'package:flutterbook/utils/providers/theme_provider.dart';
import 'package:flutterbook/widgets/appbar/appbar_app.dart';
import 'package:provider/provider.dart';
import '../../models/user_model.dart';
import '../../widgets/card_posts/card_new_post.dart';
import '../../widgets/card_posts/card_post.dart';
import '../../widgets/contact_card/contacts_card.dart';
import '../../widgets/header_feed/header_feed.dart';

class Home extends StatefulWidget {
  final UserModel data;

  const Home({super.key, required this.data});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final data = widget.data;
    final dataPost = PostData().getPosts();
    return Scaffold(
      appBar: AppBarHome(data: data).appBarHome,
      body: Builder(builder: (context) {
        final appProvider = Provider.of<AppProvider>(context);
        return Stack(
          children: [
            GestureDetector(
              onTap: () {
                if (appProvider.showMessager) {
                  appProvider.toggleVisibility(); // Fecha a tela aberta
                }
              },
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 2 + dataPost.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return StorieTab();
                  } else if (index == 1) {
                    return CardNewPost();
                  } else {
                    return CardPost(datas: dataPost[index - 2]);
                  }
                },
              ),
            ),
            Positioned(
              right: 8,
              top: 4,
              child: Visibility(
                visible: appProvider.showMessager,
                child: ContactsCard(),
              ),
            ),
          ],
        );
      }),
    );
  }
}
