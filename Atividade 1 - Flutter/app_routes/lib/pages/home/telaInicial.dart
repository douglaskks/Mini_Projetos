// ignore: file_names
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() =>
      _TelaInicialState(); // Segunda função obrigatória para que o modo Stateful funcione, ela é crucial para definir a lógica e o comportamento do widget com estado
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Corpo inteiro da tela, o Scaffold é onde irá guardar todos os outros Widgets
      body: Container(
        width: double
            .infinity, // Define a largura do Cantainer como a largura máxima do Dispositivo
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'lib/images/Imagem1.jpg'), // Imagem que ficará no background do Cantainer
            fit: BoxFit.cover,
          ),
        ), // No Box Decorations é onde definimos o estilo do Container
        child: SafeArea(
          // O WIdget SafeArea cria uma área segura para que os widgets não encostem ou ultrapassem o limite da tela
          child: Column(
            // O Widget Column alinha os filhos em forma de Coluna
            mainAxisAlignment:
                MainAxisAlignment.center, // Alinhamento centralizado
            children: [
              // children é onde fica todos os filhos do Widget Column
              const Text(
                'Qual pílula você escolhe?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize: const Size(150, 45)),
                        onPressed: () {
                          Navigator.pushNamed(context, 'pilulaVermelha');
                        },
                        child: const Text(
                          'Vermelha',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: const Size(150, 45)),
                      onPressed: () {
                        Navigator.pushNamed(context, 'pilulaAzul');
                      },
                      child: const Text(
                        'Azul',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
