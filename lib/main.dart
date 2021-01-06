import 'package:flutter/material.dart';

void main() => runApp(CavaleirosApp());

class CavaleirosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListaCavaleiros(),
      ),
    );
  }
}

class ListaCavaleiros extends StatefulWidget {

  final List<Cavaleiro> _cavaleiros = List();

  @override
  State<StatefulWidget> createState() {
    return ListaCavaleirosState();
  }
}

class ListaCavaleirosState extends State<ListaCavaleiros> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Cavaleiros'),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: widget._cavaleiros.length,
        itemBuilder: (context, indice) {
          final cavaleiro = widget._cavaleiros[indice];
          return ItemCavaleiro(cavaleiro: cavaleiro);
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
        onPressed: () {
          final Future<Cavaleiro> future =
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioCavaleiro();
          }));
          future.then((cavaleiroRecebido)  {
            debugPrint('Entrou no then do future');
            debugPrint('$cavaleiroRecebido');
            setState(() {
              widget._cavaleiros.add(cavaleiroRecebido);
            });
          });
        },
      ),
    );
  }

}

class Cavaleiro {
  final String nome;
  final int numeroCasa;

  Cavaleiro(this.nome, this.numeroCasa);

  @override
  String toString() {
    return 'Cavaleiro{nome: $nome, numeroCasa: $numeroCasa}';
  }
}

class ItemCavaleiro extends StatelessWidget {
  final Cavaleiro cavaleiro;
  final IconData icone;

  ItemCavaleiro({this.cavaleiro, this.icone});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          icone,
          size: 48.0,
        ),
        title: Text(cavaleiro.nome),
        subtitle: Text(cavaleiro.numeroCasa.toString()),
      ),
    );
  }
}

class FormularioCavaleiro extends StatelessWidget {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorCasa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Cavaleiro'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          EditorCavaleiro(
              controlador: _controladorNome,
              nomeLabel: 'Nome do Cavaleiro',
              casaLabel: 'Ex: Saya'),
          EditorCavaleiro(
              controlador: _controladorCasa,
              nomeLabel: 'Casa do Cavaleiro',
              casaLabel: 'Ex: 1 de 12'),
          RaisedButton(
            child: Text('Confirmar'),
            onPressed: () => _criaCavaleiro(context),
          ) /* Parei aqui, continuar na aula 03 video 2 (Criando a Transferencia) */
        ],
      ),
    );
  }

  void _criaCavaleiro(BuildContext context) {
    final String nome = _controladorNome.text;
    final int casa = int.tryParse(_controladorCasa.text);

    if (nome != null && casa != null) {
      final Cavaleiro cavaleiroCriado = Cavaleiro(nome, casa);
      debugPrint('Criando cavaleiro');
      debugPrint('$cavaleiroCriado');
      Navigator.pop(context, cavaleiroCriado);
    }
  }
}

class EditorCavaleiro extends StatelessWidget {
  final TextEditingController controlador;
  final String nomeLabel;
  final String casaLabel;

  EditorCavaleiro({this.controlador, this.nomeLabel, this.casaLabel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        decoration: InputDecoration(labelText: nomeLabel, hintText: casaLabel),
      ),
    );
  }
}
