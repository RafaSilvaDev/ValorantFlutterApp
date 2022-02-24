import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  var appMain = Color.fromRGBO(219, 84, 97, 1);
  var appSecond = Color.fromRGBO(15, 25, 35, 1);

  List dados = [];

  void showDados() {
    Map<String, dynamic> map = Map();
    for (int i = 0; i < 5; i++) {
      map['title'] = 'Nome do produto';
      map['subtitle'] = 'R\$ 20.50';
      dados.add(map);
    }
  }

  @override
  Widget build(BuildContext context) {
    dados = [];
    showDados();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: appSecond, //change your color here
        ),
        title: Text(
          'Lista de Alunos',
          style: TextStyle(color: appSecond),
        ),
        backgroundColor: appMain,
      ),
      body: ListView.builder(
        itemCount: dados.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.attach_money_rounded,
                  color: appMain,
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Row(
                            children: [
                              Icon(Icons.warning),
                              Text('Banido 😳'),
                            ],
                          ),
                          titlePadding: EdgeInsets.all(30),
                          content:
                              Text('Deseja realmente BANIR ${dados[index]['title']}?'),
                          contentPadding: EdgeInsets.all(30),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('Sim')),
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('Não')),
                          ],
                        );
                      });
                },
                title: Text('Produto: ${dados[index]['title']}'),
                subtitle: Text('Valor: ${dados[index]['subtitle']}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
