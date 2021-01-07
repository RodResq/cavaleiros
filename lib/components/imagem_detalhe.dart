import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _mu =
    "https://static.wikia.nocookie.net/anicrossbr/images/f/f7/Mu_de_%C3%81ries.png/revision/latest?cb=20151029184053&path-prefix=pt-br";

class ImagemDetalhe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Image.network(
            _mu,
            fit: BoxFit.fill,
          ),
    );
  }

}