import 'package:cavaleiros/models/cavaleiro.dart';
import 'package:cavaleiros/screens/fomulario.dart';
import 'package:flutter/material.dart';

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
        // backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: widget._cavaleiros.length,
        itemBuilder: (context, indice) {
          final cavaleiro = widget._cavaleiros[indice];
          return ItemCavaleiro(cavaleiro: cavaleiro);
        },
      ),
      floatingActionButton: FloatingActionButton(
        // backgroundColor: Colors.amber,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioCavaleiro();
          })).then((cavaleiroRecebido) {
            if (cavaleiroRecebido != null) {
              setState(() {
                widget._cavaleiros.add(cavaleiroRecebido);
              });
            }
          });
        },
      ),
    );
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