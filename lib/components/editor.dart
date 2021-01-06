import 'package:flutter/material.dart';

class EditorCavaleiro extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;

  EditorCavaleiro({
    this.controlador,
    this.rotulo,
    this.dica,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        decoration: InputDecoration(labelText: rotulo, hintText: dica),
      ),
    );
  }
}
