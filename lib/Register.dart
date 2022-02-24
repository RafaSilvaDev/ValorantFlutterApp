import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var appMain = Color.fromRGBO(219, 84, 97, 1);
  var appSecond = Color.fromRGBO(15, 25, 35, 1);
  bool change = false;
  bool x = false;
  String s = 'f';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: appSecond, //change your color here
        ),
        title: Text(
          'Cadastro de Alunos',
          style: TextStyle(color: appSecond),
        ),
        backgroundColor: appMain,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              GestureDetector(
                child: Text('Olá'),
                onTap: (){
                  print('Olá');
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Digite algo'),
              ),
              Card(
                child: CheckboxListTile(
                    activeColor: appMain,
                    checkColor: appSecond,
                    secondary: Icon(
                      Icons.person,
                      size: 30,
                      color: appMain,
                    ),
                    title: Text('Suga'),
                    subtitle: Text('Não gostei'),
                    value: x,
                    onChanged: (bool? value) {
                      setState(() {
                        x = value!;
                      });
                    }),
              ),
              RadioListTile(
                  activeColor: appMain,
                  title: Text('Feminino'),
                  subtitle: Text('Decidiu? :)'),
                  value: 'f',
                  groupValue: s,
                  onChanged: (String? value) {
                    setState(() {
                      s = value!;
                    });
                  }),
              RadioListTile(
                  activeColor: appMain,
                  title: Text('Masculino'),
                  subtitle: Text('Decidiu? :)'),
                  value: 'm',
                  groupValue: s,
                  onChanged: (String? value) {
                    setState(() {
                      s = value!;
                    });
                  }),
              Row(
                children: [
                  Switch(
                    value: false,
                    onChanged: (value) {
                      setState(() {
                        change = value;
                      });
                    },
                    activeColor: appMain,
                  ),
                  Text('Permanecer conectado?')
                ],
              ),
              Container(
                  color: appMain,
                  width: EdgeInsetsGeometry.infinity.horizontal,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Salvar',
                        style: TextStyle(color: appSecond),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
