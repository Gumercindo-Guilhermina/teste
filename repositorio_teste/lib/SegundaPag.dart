import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SegundaPag extends StatelessWidget {
  Widget fildName() {
    return (TextFormField(
      decoration: InputDecoration(labelText: "Nome"),
    ));
  }

  Widget fildSobrenome() {
    return (TextFormField(
      decoration: InputDecoration(labelText: "Sobrenome"),
    ));
  }

  Widget fildNascimento() {
    var mask = MaskTextInputFormatter(mask: '##/##/####');
    return (TextFormField(
      inputFormatters: [mask],
      decoration: InputDecoration(
        labelText: 'Data de Nascimento',
        hintText: 'dd/mm/yyyy',
      ),
    ));
  }

  Widget fildEtnia() {
    return (TextFormField(
      decoration: InputDecoration(labelText: "Etnia"),
      keyboardType: TextInputType.text,
    ));
  }

  Widget fildSexo() {
    return (TextFormField(
      decoration: InputDecoration(labelText: "Sexo"),
    ));
  }

  Widget fildAldeia() {
    return (TextFormField(
      decoration: InputDecoration(labelText: "Aldeia de Residência"),
    ));
  }

  Widget fildAltura() {
    return (TextFormField(
      decoration: InputDecoration(labelText: "Altura"),
      keyboardType: TextInputType.number,
    ));
  }

  Widget fildMunicipio() {
    return (TextFormField(
      decoration: InputDecoration(labelText: "Município"),
    ));
  }

  Widget fildPolo() {
    return (TextFormField(
      decoration: InputDecoration(labelText: "Polo Base"),
    ));
  }

  Widget fildMae() {
    return (TextFormField(
      decoration: InputDecoration(labelText: "Nome da Mãe"),
    ));
  }

  Widget fildPai() {
    return (TextFormField(
      decoration: InputDecoration(labelText: "Nome do Pai"),
    ));
  }

  Widget fildSus() {
    return (TextFormField(
      decoration: InputDecoration(labelText: "N° do cartão do SUS"),
      keyboardType: TextInputType.number,
    ));
  }

  Widget fildCpf() {
    var mask = MaskTextInputFormatter(mask: '###.###.###-##');
    return (TextFormField(
      inputFormatters: [mask],
      decoration: InputDecoration(
        labelText: "N° do cartão do CPF",
        hintText: '000.000.000-00',
      ),
      keyboardType: TextInputType.number,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 900,
              width: MediaQuery.of(context).size.width,
              child: Form(
                child: Column(
                  children: [
                    fildName(),
                    fildSobrenome(),
                    fildNascimento(),
                    fildEtnia(),
                    fildSexo(),
                    fildAldeia(),
                    fildAltura(),
                    fildMunicipio(),
                    fildPolo(),
                    fildMae(),
                    fildPai(),
                    fildSus(),
                    fildCpf()
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(child: Text('Cadastrar'), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
