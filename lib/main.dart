import 'package:flutter/material.dart';
import '/Home.dart';
import '/Lista.dart';
import '/Register.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/', routes: {
      '/List':(context)=>Lista(),
      '/Reg':(context)=>Register(),
  },
    home: Home(),
  ));
}
