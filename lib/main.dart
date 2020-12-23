import 'package:flutter/material.dart';

void main() => runApp(CavaleirosApp());

class CavaleirosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListaCavaleiros(),
        appBar: AppBar(
          title: Text('Cavaleiros'),
          backgroundColor: Colors.amber,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}


class ListaCavaleiros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Cavaleiro(
          icone: Icons.supervised_user_circle,
          nome: 'Cavaleiro 1',
          numeroCasa: 1,
        ),
        Cavaleiro(
          icone: Icons.account_circle,
          nome: 'Cavaleiro 2',
          numeroCasa: 2,
        ),
        Cavaleiro(
          icone: Icons.account_circle_outlined,
          nome: 'Cavaleiro 3',
          numeroCasa: 3,
        ),
      ],
    );
  }
}

class Cavaleiro extends StatelessWidget {
  final String nome;
  final int numeroCasa;
  final IconData icone;

  Cavaleiro({this.nome, this.numeroCasa, this.icone});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icone, size: 48.0,),
        title: Text(nome),
        subtitle: Text('Numero Casa $numeroCasa'),
      ),
    );
  }
}
