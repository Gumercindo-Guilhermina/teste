import 'package:flutter/material.dart';

class Pront extends StatefulWidget {
  @override
  _ProntState createState() => _ProntState();
}

class _ProntState extends State<Pront> {
  String nome;
  String sobrenome;

  GlobalKey formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "Nome"),
                onSaved: (value) {
                  nome = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Campo Obrigatório";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Sobrenome"),
                onSaved: (value) {
                  sobrenome = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Campo Obrigatório";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Data de Nascimento"),
                keyboardType: TextInputType.datetime,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Casa"),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Etnia"),
                keyboardType: TextInputType.text,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Sexo"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Aldeia de Residência"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Altura"),
                keyboardType: TextInputType.number,
              ),
              RaisedButton(
                  child: Text(""),
                  onPressed: () {
                    // _showSegundaPag(context);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
