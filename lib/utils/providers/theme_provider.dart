import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  /**
   * Método para trocar o tema entre claro e escuro.
   * Esse método funciona alterando o valor da variavel privada _isDarkMode
   * Para acessar a variavel privada temos o método get que faz o controle de acesso
   * Para que não seja possivel modifica-la sem ser pelo método toggleTheme()
   */
  bool _isDarkMode = false; //Inicia como modo claro
  bool get isDarkMode => _isDarkMode; //Variavel publica que acessa a privada
  //Método para trocar o tema.
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  /**
   * Método para mostrar ou esconder a área de chat quando clica nela.
   * O método funciona alterando a variavel privada _showMesseger
   * A variavel publica showMessager faz o acesso a variavel privada sem ter como
   * altera-la para poder garantir que ela só seja alterada pelo método toggleVisibility
   */
  bool _showMessager = false; //Inicia a área de chat como oculta
  bool get showMessager => _showMessager; //Acessa a variavel privada
  //Troca o valor da variavel privada para exibir a tela de chat
  void toggleVisibility() {
    _showMessager = !_showMessager;
    notifyListeners();
  }
}
