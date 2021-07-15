import 'package:flutter/material.dart';

class Pront extends StatefulWidget {
  @override
  _ProntState createState() => _ProntState();
}

class _ProntState extends State<Pront> {
  String cidade = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nome: ',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              onChanged: (text) {
                cidade = text;
              },
              textCapitalization: TextCapitalization.sentences,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Text(
              'Sobrenome: ',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              onChanged: (text) {
                cidade = text;
              },
              textCapitalization: TextCapitalization.sentences,
            ),
          ],
        ),
      ),
    );
  }
}
