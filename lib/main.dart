import 'package:flutter/material.dart';
import 'package:flutterbook/constants/themes/main_theme.dart';
import 'package:flutterbook/screens/login/login.dart';
import 'package:flutterbook/utils/providers/theme_provider.dart';
import 'constants/themes/dark_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(), child: myApp()));
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, themeProvider, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeProvider.isDarkMode
              ? ThemeDark.themeDark
              : ThemeMain.themeMain,
          home: LoginScreen(),
        );
      },
    );
  }
}
