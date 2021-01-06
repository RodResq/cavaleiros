import 'package:cavaleiros/models/cavaleiro.dart';
import 'package:cavaleiros/screens/fomulario.dart';
import 'package:flutter/material.dart';

const _aiolos =
    "https://lh6.googleusercontent.com/a1Yf4-9UrpLfQVWk474rRrSey6WPxFnocKMwTaHmpBNOTnEcg4dpJZKGDj01nO9YMdlj0V6AG64FPSMofy7bw-4VgbMqmg0eDGlcuC01gnnb03P0gVSb6UK7ZFNfBHILUVJ0amLTVQ";

const _saga =
    "https://lh3.googleusercontent.com/5Snr8Sda-T8y6HLtimXtktI8N7ZT8gPwlbqsS_pcaOFPeAXapV6c-Adfo7fhkmZdfn19qK4XQD9vkmwOHR80O6B1KFas5nAsBuJrlWq9_QV1-qlAkXHLXNtEcDYXCHz0OZ_wAHJcuw";

const _milo =
    "https://lh5.googleusercontent.com/sKidQM7K6GmUF4fmZR0JvGeYWqJcpg8FS8d3J8NSwx_uhzYf_YAOQrWwN2ps9IsWEBImixkDhvp7KMXX7rf2zkkUi6npbYV9Nxam19eX5Fq38nvxlkoDHglsoLRbKVEDWb_3Hgxe8Q";

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
    debugPrint('$cavaleiro');

    switch (cavaleiro.nome) {
      case "aiolos":
        avatar = _aiolos;
        break;
      case "saga":
        avatar = _saga;
        break;
      case "milo":
        avatar = _milo;
    }

    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(avatar),
        ),
        title: Text(cavaleiro.nome),
        subtitle: Text(cavaleiro.numeroCasa.toString() + " " + cavaleiro.armadura.toString()),
      ),
    );
  }
}
