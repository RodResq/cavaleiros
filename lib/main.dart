import 'package:flutter/material.dart';

void main() => runApp(CavaleirosApp());

class CavaleirosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioCavaleiro(),
      ),
    );
  }
}

class ListaCavaleiros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cavaleiros'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Column(
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
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
      ),
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
        leading: Icon(
          icone,
          size: 48.0,
        ),
        title: Text(nome),
        subtitle: Text('Numero Casa $numeroCasa'),
      ),
    );
  }
}

class FormularioCavaleiro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Cavaleiro'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Nome do Cavaleiro',
                hintText: 'Ex: Seya'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Casa do Cavaleiro',
                  hintText: 'Ex: Seya'
              ),
            ),
          ),
          RaisedButton(onPressed: null) /* Parei aqui, continuar na aula 03 video 2 (Criando a Transferencia) */
        ],
      ),
    );
  }
}
