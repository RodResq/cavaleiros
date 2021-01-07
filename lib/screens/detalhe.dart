import 'package:cavaleiros/components/imagem_detalhe.dart';
import 'package:cavaleiros/models/cavaleiro.dart';
import 'package:flutter/material.dart';

class DetalheCavaleiro extends StatelessWidget {
  final Cavaleiro cavaleiro;

  DetalheCavaleiro(this.cavaleiro);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes"),
      ),
      body: ItemDetalheCavaleiro(cavaleiro),
    );
  }
}

class ItemDetalheCavaleiro extends StatelessWidget {
  Cavaleiro itemCavaleiro;

  ItemDetalheCavaleiro(this.itemCavaleiro);

  @override
  Widget build(BuildContext context) {
    debugPrint('$itemCavaleiro');
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: Align(
          alignment: Alignment.topCenter,
          child: ImagemDetalhe(),
        ),
      ),
    );
  }
}
