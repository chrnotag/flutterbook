import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutterbook/data/users_data.dart';
import 'package:flutterbook/generated/assets.dart';
import 'package:flutterbook/screens/home/home.dart';
import '../../constants/colors/colors.dart';
import '../../constants/strings/strings_constants.dart';
import '../../widgets/misc/miscs.dart';
import '../../widgets/textfield/textfields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.azul300,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(Faker().image.image()),
              opacity: 0.6,
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Assets.imagesLogo,
                width: 250,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextField(
                      decoration: TextFieldsCustons.loginDecoration.copyWith(
                        prefixIcon: const Icon(Icons.email),
                        hintText: "Email",
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextField(
                      decoration: TextFieldsCustons.loginDecoration.copyWith(
                          prefixIcon: Icon(Icons.password), hintText: "Senha"),
                      obscureText: true,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home(
                                    data: UsersData.getUsers()[0],
                                  )),
                          (route) => false,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Entrar"),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    TextButton(onPressed: () {}, child: Text("Registre-se")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 50,
                          child: WidgetMiscs.separatorLine,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Text("Ou"),
                        ),
                        SizedBox(
                          width: 50,
                          child: WidgetMiscs.separatorLine,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Image.network(
                                ConstStrings.google_logo,
                                width: 50,
                              ),
                              Text(
                                "Login via google",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Image.network(
                                ConstStrings.facebook_logo,
                                width: 50,
                                height: 50,
                              ),
                              Text(
                                "Login via facebook",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Image.network(
                                ConstStrings.twitter_logo,
                                width: 50,
                                height: 50,
                              ),
                              Text(
                                "Login via twitter",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                ConstStrings.rodape,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
