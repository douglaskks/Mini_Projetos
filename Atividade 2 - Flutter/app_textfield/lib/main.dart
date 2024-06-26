import 'package:app_textfield/pages/Login/login.dart'; // Importa o arquivo login.dart onde está definida a tela de login.
import 'package:flutter/material.dart'; // Importa o pacote Flutter Material, que contém widgets e utilitários de design.

void main() {
  runApp(
      const MyApp()); // Função principal que inicia a execução do aplicativo, chamando a função runApp com um widget MyApp como argumento.
}

class MyApp extends StatelessWidget {
  // Classe MyApp, que é um StatelessWidget, ou seja, não tem estado interno.
  const MyApp(
      {super.key}); // Construtor da classe MyApp, recebendo uma chave opcional.

  @override
  Widget build(BuildContext context) {
    // Método build, obrigatório para construir a interface do usuário.
    return const MaterialApp(
      // Retorna um MaterialApp, que configura o aplicativo Flutter com funcionalidades de material design.
      debugShowCheckedModeBanner:
          false, // Desativa a faixa de depuração no canto superior direito do aplicativo.
      home:
          LoginScreen(), // Define a tela inicial do aplicativo como LoginScreen.
    );
  }
}
