import 'package:flutter/material.dart'; // Importa o pacote Flutter para usar seus widgets e funcionalidades.

class PilulaVermelha extends StatefulWidget {
  const PilulaVermelha({super.key});

  @override
  State<PilulaVermelha> createState() => _PilulaVermelhaState();
}

class _PilulaVermelhaState extends State<PilulaVermelha> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double
          .infinity, // Define a largura do contêiner para ocupar toda a largura disponível.
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'lib/images/Imagem-2.png'), // Define uma imagem de fundo para o contêiner.
          fit: BoxFit.cover, // Ajusta a imagem para cobrir todo o contêiner.
        ),
      ),
      child: SafeArea(
        // Garante que o conteúdo do contêiner não se sobreponha a áreas seguras do dispositivo, como a barra de status.
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(
                  16.0), // Define um espaçamento de 16.0 unidades ao redor do contêiner interno.
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors
                        .black), // Define a cor de fundo do contêiner como preto.
                child: const Text(
                  textAlign: TextAlign
                      .justify, // Justifica o texto, distribuindo o espaço uniformemente entre as palavras.
                  'Despertar para a Realidade: Escolher a pílula vermelha representa enfrentar a verdade, por mais dolorosa que seja, e buscar conhecimento e consciência. Isso pode ser aplicado a situações onde uma pessoa decide confrontar problemas pessoais, desafios sociais ou questões éticas que podem ser difíceis de encarar.',
                  style: TextStyle(
                    fontSize: 18, // Define o tamanho da fonte como 18.
                    color: Colors.white, // Define a cor do texto como branco.
                    fontWeight:
                        FontWeight.bold, // Define o peso da fonte como negrito.
                    decoration: TextDecoration
                        .none, // Remove qualquer decoração de texto, como sublinhado.
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.red, // Define a cor de fundo do botão como vermelho.
                minimumSize: const Size(
                    150, 45), // Define o tamanho mínimo do botão como 150x45.
              ),
              onPressed: () {
                Navigator.pop(
                    context); // Volta para a tela anterior quando o botão é pressionado.
              },
              child: const Text(
                'Voltar',
                style: TextStyle(
                  color: Colors
                      .white, // Define a cor do texto do botão como branco.
                  fontWeight:
                      FontWeight.bold, // Define o peso da fonte como negrito.
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
