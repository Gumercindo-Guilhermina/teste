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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 900,
              width: MediaQuery.of(context).size.width,
              child: Form(
                child: Container(
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
                        decoration:
                            InputDecoration(labelText: "Data de Nascimento"),
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
                        decoration:
                            InputDecoration(labelText: "Aldeia de Residência"),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: "Altura"),
                        keyboardType: TextInputType.number,
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: "Município"),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: "Polo Base"),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: "Nome da Mãe"),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: "Nome do Pai"),
                      ),
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: "N° do cartão do SUS"),
                        keyboardType: TextInputType.number,
                      ),
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: "N° do cartão do CPF"),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
