import 'package:flutter/material.dart'; // Importa o pacote Flutter Material, que contém widgets e utilitários de design.

import 'package:app_textfield/pages/home/home_screen.dart'; // Importa a tela HomeScreen que será navegada após o login.

class LoginScreen extends StatefulWidget {
  // Define a classe LoginScreen como um StatefulWidget, permitindo alterações de estado.
  const LoginScreen({Key? key})
      : super(
            key:
                key); // Construtor da classe LoginScreen, recebendo uma chave opcional.

  @override
  State<LoginScreen> createState() =>
      _LoginScreenState(); // Cria o estado associado ao LoginScreen.
}

class _LoginScreenState extends State<LoginScreen> {
  // Classe privada que mantém o estado do LoginScreen.
  TextEditingController _nomeText =
      TextEditingController(); // Controlador de texto para capturar o nome inserido pelo usuário.
  TextEditingController _senhaText =
      TextEditingController(); // Controlador de texto para capturar a senha inserida pelo usuário.

  @override
  Widget build(BuildContext context) {
    // Método build, obrigatório para construir a interface do usuário.
    return SingleChildScrollView(
      // Widget SingleChildScrollView permite rolar a tela para cima e para baixo se o conteúdo não couber na tela.
      child: SafeArea(
        // Widget SafeArea garante que o conteúdo não seja renderizado sob barras de sistema (como a barra de status no topo).
        child: Center(
          // Centraliza o conteúdo na tela verticalmente.
          child: Column(
            // Widget de coluna para organizar verticalmente os widgets filhos.
            children: [
              // Lista de widgets filhos da coluna.
              SizedBox(
                  height:
                      200), // Widget SizedBox com altura fixa para criar um espaço vertical entre widgets.

              Container(
                // Container que envolve o TextField para o nome do usuário.
                width: 200, // Largura fixa do container.
                decoration: BoxDecoration(
                  // Decoração do container com borda e cor de fundo personalizadas.
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.red),
                ),
                child: Material(
                  // Material widget para capturar interações com o usuário e evitar sobreposições de cor.
                  color: Colors
                      .transparent, // Cor transparente para evitar sobreposição de cores.
                  child: TextField(
                    // Campo de entrada de texto para o nome do usuário.
                    controller:
                        _nomeText, // Define o controlador de texto para capturar e controlar o texto inserido.
                    decoration: const InputDecoration(
                      // Configura a aparência do TextField (hint text, padding, borda).
                      hintText: 'Nome',
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      border: InputBorder
                          .none, // Remove a borda padrão do TextField.
                    ),
                  ),
                ),
              ),

              SizedBox(
                  height:
                      40), // Espaço vertical entre o TextField do nome e o próximo container.

              Container(
                // Container que envolve o TextField para a senha do usuário.
                width: 200, // Largura fixa do container.
                decoration: BoxDecoration(
                  // Decoração do container com borda e cor de fundo personalizadas.
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.red),
                ),
                child: Material(
                  // Material widget para capturar interações com o usuário e evitar sobreposições de cor.
                  color: Colors
                      .transparent, // Cor transparente para evitar sobreposição de cores.
                  child: TextField(
                    // Campo de entrada de texto para a senha do usuário.
                    controller:
                        _senhaText, // Define o controlador de texto para capturar e controlar o texto inserido.
                    decoration: const InputDecoration(
                      // Configura a aparência do TextField (hint text, padding, borda).
                      hintText: 'Senha',
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      border: InputBorder
                          .none, // Remove a borda padrão do TextField.
                    ),
                  ),
                ),
              ),

              SizedBox(
                  height:
                      50), // Espaço vertical entre o TextField da senha e o botão "Logar".

              ElevatedButton(
                // Botão elevado para iniciar o processo de login.
                style: ElevatedButton.styleFrom(
                  // Estilizações adicionais para o botão elevado.
                  backgroundColor: Colors.green, // Cor de fundo do botão.
                ),
                onPressed: () {
                  // Função chamada quando o botão é pressionado.
                  Navigator.push(
                    // Navega para a tela HomeScreen quando o botão é pressionado.
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(
                        // Cria uma nova instância de HomeScreen.
                        nome: _nomeText
                            .text, // Passa o texto atual do nome inserido como parâmetro.
                        senha: _senhaText
                            .text, // Passa o texto atual da senha inserida como parâmetro.
                      ),
                    ),
                  );
                },
                child: const Text(
                  // Texto exibido dentro do botão.
                  'Logar',
                  style: TextStyle(
                    color: Colors.white, // Cor do texto do botão.
                    fontWeight: FontWeight
                        .bold, // Define a espessura da fonte do texto.
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
