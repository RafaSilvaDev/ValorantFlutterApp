import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var appMain = Color.fromRGBO(219, 84, 97, 1);
  var appSecond = Color.fromRGBO(15, 25, 35, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/vavis_bg.jpg'),
              fit: BoxFit.cover,
            )
          ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.exit_to_app_rounded,
                color: appSecond,
              ))
        ],
        title: Text(
          'Home',
          style: TextStyle(color: appSecond),
        ),
        backgroundColor: appMain,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, '/Reg'),
          backgroundColor: appMain,
          child: Icon(
            Icons.add,
            color: appSecond,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: appSecond,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home_filled,
                    size: 30,
                    color: appMain,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star_rate_rounded,
                    size: 30,
                    color: appMain,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.save_alt_rounded,
                    size: 30,
                    color: appMain,
                  )),
              IconButton(
                  onPressed: () => Navigator.pushNamed(context, '/List'),
                  icon: Icon(
                    Icons.person,
                    size: 30,
                    color: appMain,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
