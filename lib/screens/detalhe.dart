import 'package:cavaleiros/models/cavaleiro.dart';
import 'package:flutter/material.dart';

const _mu =
    "https://static.wikia.nocookie.net/anicrossbr/images/f/f7/Mu_de_%C3%81ries.png/revision/latest?cb=20151029184053&path-prefix=pt-br";

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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ListTile(
              leading: SizedBox(
                child: Image.network(
                  _mu,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(itemCavaleiro.nome),
                // Text(itemCavaleiro.numeroCasa.toString()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text(itemCavaleiro.nome),
                Text(itemCavaleiro.numeroCasa.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
