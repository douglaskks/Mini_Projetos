import 'package:app_routes/pages/opcoes/pilulaAzul.dart';
import 'package:app_routes/pages/opcoes/pilulaVermelha.dart';
import 'package:app_routes/pages/home/telaInicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      const MyApp()); // Método principal para a chamada prioritária do Flutter
}

class MyApp extends StatelessWidget {
  // Stateless é o tipo de widget que a classe myApp vai ser, não haverá modificações, por isso vai ser Stateless
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget Construtor para a criação e execução dos Widgets que o Material App chamar
    return MaterialApp(
      // O Widget padrão do Flutter para podermos trabalhar com os Widgets do Flutter
      debugShowCheckedModeBanner: false, // Remove a faixa de debug do app
      initialRoute:
          'telaInicial', // nesta linha temos a primeira tela que o app irá chamar ao executar o arquivo main
      routes: {
        'telaInicial': (context) =>
            const TelaInicial(), // nesta linha temos a primeira tela a ser chamada
        'pilulaVermelha': (context) =>
            const PilulaVermelha(), // nesta linha temos a tela que estará vinculada com a tela inicial no botão Pilula Vermelha
        'pilulaAzul': (context) =>
            const PilulaAzul(), // nesta linha temos a tela que estará vinculada com a tela inicial no botão Pilula Azul
      },
    );
  }
}
