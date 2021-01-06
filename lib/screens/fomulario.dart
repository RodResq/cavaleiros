import 'package:cavaleiros/components/editor.dart';
import 'package:cavaleiros/models/cavaleiro.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Criando Cavaleiro';

const _labelCampoNome = 'Nome do Cavaleiro';
const _dicaCampoNome = 'Ex: Saya';

const _labelCampoCasa = 'Casa do Cavaleiro';
const _dicaCampoCasa = 'Ex: 1 de 12';
const _textoBotaoConfirmar = 'Confirmar';

const _labelCampoArmadura = "Armadura do Cavaleiro";
const _dicaCampoArmadura = "Entre com o nome da Armadura";

class FormularioCavaleiro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioCavaleiroState();
  }
}

class FormularioCavaleiroState extends State<FormularioCavaleiro> {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorCasa = TextEditingController();
  final TextEditingController _controladorArmadura = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
        // backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EditorCavaleiro(
                controlador: _controladorNome,
                rotulo: _labelCampoNome,
                dica: _dicaCampoNome),
            EditorCavaleiro(
                controlador: _controladorCasa,
                rotulo: _labelCampoCasa,
                dica: _dicaCampoCasa,
                tipoTeclado: TextInputType.number,
            ),
            EditorCavaleiro(
              controlador: _controladorArmadura,
              rotulo: _labelCampoArmadura,
              dica: _dicaCampoArmadura,
              tipoTeclado: TextInputType.number,
            ),
            RaisedButton(
              child: Text(_textoBotaoConfirmar),
              onPressed: () => _criaCavaleiro(context),
            ) /* Parei aqui, continuar na aula 03 video 2 (Criando a Transferencia) */
          ],
        ),
      ),
    );
  }

  void _criaCavaleiro(BuildContext context) {
    final String nome = _controladorNome.text;
    final int casa = int.tryParse(_controladorCasa.text);
    final String armadura = _controladorArmadura.text;

    if (nome != null && casa != null) {
      final Cavaleiro cavaleiroCriado = Cavaleiro(nome, casa, armadura);
      Navigator.pop(context, cavaleiroCriado);
    }
  }
}
