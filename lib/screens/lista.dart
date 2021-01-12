import 'package:cavaleiros/models/cavaleiro.dart';
import 'package:cavaleiros/screens/detalhe.dart';
import 'package:cavaleiros/screens/fomulario.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

const _aiolos =
    'images/list/aiolos.png';
const _saga =
    'images/list/saga.png';
const _milo =
    'images/list/milo.png';
const _aldebaran =
    'images/list/aldebaran.png';
const _shaka =
    'images/list/shaka.png';
const _shura =
    'images/list/shura.png';
const _aphrodite =
    'images/list/aphrodite.png';
const _mu =
    'images/list/mu.png';
const _kamus =
    'images/list/kumus.png';
const _dohko =
    'images/list/dohko.png';
const _mascara_da_morte =
    'images/list/mascara_da_morte.png';
const _aiolia =
    'images/list/aiolia.png';

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
          return ItemCavaleiro(
            cavaleiro: cavaleiro,
            avatar: _aiolos,
          );
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
  String avatar = "";

  ItemCavaleiro({this.cavaleiro, this.avatar});

  @override
  Widget build(BuildContext context) {
    _addAvatar();
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetalheCavaleiro(cavaleiro);
        }));
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(avatar),
          ),
          title: Text(cavaleiro.nome),
          subtitle: Text("Casa " + cavaleiro.numeroCasa.toString() +
              " Armadura de " +
              cavaleiro.armadura.toString()),
        ),
      ),
    );
  }

  void _addAvatar() {
    switch (cavaleiro.nome) {
      case "aiolos":
        avatar = _aiolos;
        break;
      case ("saga" "kanon"):
        avatar = _saga;
        break;
      case "milo":
        avatar = _milo;
        break;
      case "aldebaran":
        avatar = _aldebaran;
        break;
      case "shaka":
        avatar = _shaka;
        break;
      case "shura":
        avatar = _shura;
        break;
      case "aphrodite":
        avatar = _aphrodite;
        break;
      case "mu":
        avatar = _mu;
        break;
      case "kamus":
        avatar = _kamus;
        break;
      case "dohko":
        avatar = _dohko;
        break;
      case "mascara da morte":
        avatar = _mascara_da_morte;
        break;
      case "aiolia":
        avatar = _aiolia;
        break;
    }
  }
}
