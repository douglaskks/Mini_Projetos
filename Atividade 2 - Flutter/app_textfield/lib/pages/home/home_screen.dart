import 'package:flutter/cupertino.dart'; // Importa o pacote Cupertino para usar widgets do estilo iOS.
import 'package:flutter/material.dart'; // Importa o pacote Material para usar widgets do Material Design.
import 'package:flutter/widgets.dart'; // Importa o pacote widgets para acessar widgets genéricos do Flutter.

class HomeScreen extends StatefulWidget {
  // Define a classe HomeScreen que é um StatefulWidget.
  final String nome; // Declara uma variável final para armazenar o nome.
  final String senha; // Declara uma variável final para armazenar a senha.

  const HomeScreen(
      {Key? key,
      required this.nome,
      required this.senha}) // Construtor da classe HomeScreen que recebe nome e senha como parâmetros.
      : super(key: key); // Chama o construtor da superclasse StatefulWidget.

  @override
  State<HomeScreen> createState() =>
      _HomeScreenState(); // Implementa o método createState para criar o estado (_HomeScreenState) associado à tela.
}

class _HomeScreenState extends State<HomeScreen> {
  // Define a classe _HomeScreenState, que é o estado da HomeScreen.
  @override
  Widget build(BuildContext context) {
    // Implementa o método build para construir a interface da tela.
    return Scaffold(
      // Retorna um Scaffold, que fornece a estrutura básica de layout de uma tela.
      appBar: AppBar(
        // Define a barra de AppBar na parte superior da tela.
        title: Text(
            'Bem-Vindo ${widget.nome}'), // Define o título da AppBar com base no nome recebido.
      ),
      body: Center(
        // Centraliza o conteúdo principal da tela.
        child: Container(
          // Container para envolver os elementos da tela com padding.
          padding: const EdgeInsets.all(
              16), // Define o padding interno do Container.
          child: Column(
            // Coluna para organizar verticalmente os elementos da tela.
            mainAxisAlignment: MainAxisAlignment
                .center, // Alinha os filhos ao centro verticalmente.
            children: [
              const Text(
                // Texto estático que diz "Bem-vindo ao App!".
                'Bem-vindo ao App!',
                style: TextStyle(
                  // Estilo do texto com tamanho da fonte e peso da fonte.
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20), // Espaço vertical entre os elementos.
              const Text(
                // Texto estático que diz "Explore todas as funcionalidades do aplicativo."
                'Explore todas as funcionalidades do aplicativo.',
                textAlign: TextAlign
                    .center, // Alinha o texto ao centro horizontalmente.
                style: TextStyle(
                  // Estilo do texto com tamanho da fonte.
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                // Espaço vertical fixo entre os elementos.
                height: 20,
              ),
              Text(
                // Texto dinâmico que exibe a senha passada como parâmetro.
                'Sua senha é ${widget.senha}',
                textAlign: TextAlign
                    .center, // Alinha o texto ao centro horizontalmente.
                style: TextStyle(
                  // Estilo do texto com tamanho da fonte.
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
