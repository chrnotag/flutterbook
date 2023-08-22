import 'package:flutter/material.dart';
import 'package:flutterbook/constants/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeDark {
  ThemeDark._();

  static ThemeData themeDark = ThemeData(

    // Configuração de tema das cores primárias do aplicativo
    primarySwatch: const MaterialColor(
      0xFF303030, // Cinza Escuro (500)
      <int, Color>{
        50: Color(0xFFDCDCDC), // Sombra Cinza-Clara
        100: Color(0xFFBDBDBD), // Sombra Cinza
        200: Color(0xFF9E9E9E), // Sombra Cinza-Escuro
        300: Color(0xFF757575), // Sombra Cinza-Escuro
        400: Color(0xFF424242), // Cinza-Escuro (400)
        500: Color(0xFF303030), // Cinza Escuro (500)
        600: Color(0xFF303030), // Cinza Escuro (600)
        700: Color(0xFF303030), // Cinza Escuro (700)
        800: Color(0xFF303030), // Cinza Escuro (800)
        900: Color(0xFF303030), // Cinza Escuro (900)
      },
    ),
    cardTheme: const CardTheme(
      color: AppColors.darker_grey,
      shadowColor: Colors.black,
    ),
    iconTheme: IconThemeData(color: AppColors.lightest_grey),
    scaffoldBackgroundColor: AppColors.black,
    // Configuração dos estilos de texto.
    textTheme: TextTheme(
      // Titulos principais
      displayLarge: GoogleFonts.poppins(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      // Titulos de páginas
      displayMedium: GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      // SubTitulos de páginas
      displaySmall: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      // Textos grandes de corpo
      bodyLarge: GoogleFonts.nunitoSans(
        fontSize: 16,
        color: Colors.white,
      ),
      // Textos comuns de corpo
      bodyMedium: GoogleFonts.nunitoSans(
        fontSize: 14,
        color: Colors.white,
      ),
      // Textos pequenos para rodapés ou legendas
      bodySmall: GoogleFonts.nunitoSans(
        fontSize: 12,
        color: Colors.grey,
      ),
    ),
  );
}
