import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _mu =
    "https://static.wikia.nocookie.net/anicrossbr/images/f/f7/Mu_de_%C3%81ries.png/revision/latest?cb=20151029184053&path-prefix=pt-br";

const _shaka =
   "https://static.wikia.nocookie.net/anicrossbr/images/5/58/Shaka_de_virgem_003.png/revision/latest/scale-to-width-down/277?cb=20151030194616&path-prefix=pt-br";

const _aiolia =
    "https://static.wikia.nocookie.net/anicrossbr/images/b/b2/Leo_Aiolia.jpeg/revision/latest/scale-to-width-down/245?cb=20151029180627&path-prefix=pt-br";

class ImagemDetalhe extends StatelessWidget {

  final String nomeCavaleiro;

  ImagemDetalhe(this.nomeCavaleiro);

  @override
  Widget build(BuildContext context) {
    String associaUrl;
    String nomeLowerCase = nomeCavaleiro.toLowerCase();
    if (nomeLowerCase == 'mu') {
      associaUrl = _mu.toString();
    }else if (nomeLowerCase == 'shaka') {
      associaUrl = _shaka.toString();
    }else if (nomeLowerCase == 'aiolia') {
      associaUrl = _aiolia.toString();
    }
    return SizedBox(
      width: 300,
      child: Image.network(
            associaUrl,
            fit: BoxFit.fill,
          ),
    );
  }

}
