
import 'package:flutter/material.dart';

class InfoCavaleiro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Center(child: Text('Mú de Aires', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0))),
        Center(child: Text('We move under cover and we move as one')),
        Center(child: Text('Through the night, we have one shot to live another day')),
        Center(child: Text('We cannot let a stray gunshot give us away')),
        Center(child: Text('We will fight up close, seize the moment and stay in it')),
        Center(child: Text('It’s either that or meet the business end of a bayonet')),
        Center(child: Text('The code word is ‘Rochambeau,’ dig me?')),
      ],
    );
  }

}
