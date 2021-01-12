import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _mu =
    'images/detail/mu.png';

const _shaka =
    'images/detail/shaka.png';

const _aiolia =
    'images/detail/aiolia.jpg';

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
      child: Image.asset(
            associaUrl,
            fit: BoxFit.fill,
          ),
    );
  }

}
