import 'dart:async';
import 'package:flutter/rendering.dart';
import 'package:path/path.dart';
import 'package:repositorio_teste/segundaPag.dart';

import 'package:flutter/material.dart';

import 'dart:convert';

class Pront extends StatefulWidget {
  @override
  _ProntState createState() => _ProntState();
}

class _ProntState extends State<Pront> {
  String nome = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultar'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Informe: ',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              onChanged: (text) {
                nome = text;
              },
              textCapitalization: TextCapitalization.sentences,
            ),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              child: Text('Consultar'),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SegundaPag(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
