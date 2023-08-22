import 'package:flutter/material.dart';
import 'package:flutterbook/constants/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeMain {
  ThemeMain._();

  static ThemeData themeMain = ThemeData(
    //Configuração de tema das cores primarias do aplicativo
    primarySwatch: const MaterialColor(
      0xFF01579B, // Azul Primário (500)
      <int, Color>{
        50: AppColors.azul50, // Azul (50)
        100: AppColors.azul100, // Azul (100)
        200: AppColors.azul200, // Azul (200)
        300: AppColors.azul300, // Azul (300)
        400: AppColors.azul400, // Azul (400)
        500: AppColors.azul500, // Azul Primário (500)
        600: AppColors.azul600, // Azul (600)
        700: AppColors.azul700, // Azul (700)
        800: AppColors.azul800, // Azul (800)
        900: AppColors.azul900, // Azul (900)
      },
    ),

    scaffoldBackgroundColor: AppColors.ligth_grey,
    //Configuração dos icones padrão
    iconTheme: IconThemeData(color: AppColors.lightest_grey),
    //Configuração dos estilos de texto.
    textTheme: TextTheme(
      //Titulos principais
      displayLarge: GoogleFonts.poppins(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      //Titulos de páginas
      displayMedium: GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      //SubTitulos de páginas
      displaySmall: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      //Textos grandes de corpo
      bodyLarge: GoogleFonts.nunitoSans(
        fontSize: 16,
        color: Colors.black,
      ),
      //Textos comuns de corpo
      bodyMedium: GoogleFonts.nunitoSans(
        fontSize: 14,
        color: Colors.black,
      ),
      //Textos pequenos para rodapés ou legendas
      bodySmall: GoogleFonts.nunitoSans(
        fontSize: 12,
        color: Colors.grey,
      ),
    ),
  );
}
