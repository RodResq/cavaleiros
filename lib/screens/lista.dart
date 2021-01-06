import 'package:cavaleiros/models/cavaleiro.dart';
import 'package:cavaleiros/screens/fomulario.dart';
import 'package:flutter/material.dart';

const _aiolos =
    "https://lh6.googleusercontent.com/a1Yf4-9UrpLfQVWk474rRrSey6WPxFnocKMwTaHmpBNOTnEcg4dpJZKGDj01nO9YMdlj0V6AG64FPSMofy7bw-4VgbMqmg0eDGlcuC01gnnb03P0gVSb6UK7ZFNfBHILUVJ0amLTVQ";

const _saga =
    "https://lh3.googleusercontent.com/5Snr8Sda-T8y6HLtimXtktI8N7ZT8gPwlbqsS_pcaOFPeAXapV6c-Adfo7fhkmZdfn19qK4XQD9vkmwOHR80O6B1KFas5nAsBuJrlWq9_QV1-qlAkXHLXNtEcDYXCHz0OZ_wAHJcuw";

const _milo =
    "https://lh5.googleusercontent.com/sKidQM7K6GmUF4fmZR0JvGeYWqJcpg8FS8d3J8NSwx_uhzYf_YAOQrWwN2ps9IsWEBImixkDhvp7KMXX7rf2zkkUi6npbYV9Nxam19eX5Fq38nvxlkoDHglsoLRbKVEDWb_3Hgxe8Q";

const _aldebaran =
    "https://lh5.googleusercontent.com/ltfaPQU1MYErAaw3JKGwpnt0Hl7FTsGmSIrXY6RJ2XIdmUYb7bgu8FkIgyaV2tKBDzO_RhjwEkKd5N1SnYG6J6rBkJ9Ilwb5c_LaWS5ura4fq3n3JEpgMfzGpYqbeP5mMr7fBpaZlQ";

const _shaka =
    "https://lh3.googleusercontent.com/NMSC3J8ADtIflzjJGr68yeLAwEYuJiy8XkvfWpQo2MUBIGqQFf-Ldb1HkxjB14ZcuIuuAzARLYmPr_tbh8IiRSm5ZinU5HFAWgK4pKZyr-gSVaZAljiavTcVmCz2DUDw7AOmWADZ8g";

const _shura =
    "https://lh5.googleusercontent.com/ON0MengxHOtIIpCYllr0nfZuSRHBUHAteHgyJ-KOu0DbN93w84dR7tdPTdYUnTJKkwCN5lAXB-jvl9U_6QbtvbsQvPspcsoK3iEstmHTcRxYfU8lnY2yewmcmax4nhriTCTj0mUfZw";

const _aphrodite =
    "https://lh6.googleusercontent.com/JUJQtlIbyVC8lhpBXFGN7eGmopYF8-a69dtmafF2xuDCmqzOmiYOEVrg4Q6nDupkGrFbwgCzwraDAt3R8-468boww7baICa1lTqHATekD1qR1arjgLL1b47I24vqxuhg76GFf3KJWA";

const _mu =
    "https://lh4.googleusercontent.com/TO6EYgN67tg_DdBZZnVb3rG1HxvZG6vAY503xp1LXTpAHfAY3WF9BS_SK28m4khPkRkETRS9Q9tBGrRZ8spRXcMwtUPQ2KdmneZYT_B5aCeIPVZAP22C2FAk0WByIJgMrnkElm1ZqQ";

const _kamus =
    "https://lh5.googleusercontent.com/GAqfMKdz5IXcmadEQ-gb7UQManQK4C7kCSPaQPE5DGIHDF4pd2rfRk41qzByN24_vAKjY8tbceEInYtpS62zw3Onr8bXNTjWEODipCOdY81OxbwdiVaV9SrGytuhon73N5hmaz-Xxw";

const _dohko =
    "https://www.cavzodiaco.com.br/imagens-personagens/imagem1/41.png";

const _mascara_da_morte =
    "https://www.cavzodiaco.com.br/imagens-personagens/imagem1/38.png";

const _aiolia =
    "https://www.cavzodiaco.com.br/imagens-personagens/imagem1/39.png";

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
          return FormularioCavaleiro();
        }));
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(avatar),
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
