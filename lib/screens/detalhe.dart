import 'package:flutter/material.dart';

class DetalheCavaleiro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes"),
      ),
      body: ItemDetalheCavaleiro(),
    );
  }
}

class ItemDetalheCavaleiro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const ListTile(
              title: Text("Teste Deatalhes"),
              subtitle: Text("jlfdsjlk jljkkljlj jlkjkljkl"),
            )
          ],
        ),
      ),
    );
  }
}
