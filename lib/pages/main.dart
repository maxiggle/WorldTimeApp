import 'package:flutter/material.dart';
import 'package:timeapp/pages/home.dart';
import 'package:timeapp/pages/location.dart';
import 'package:timeapp/services/load.dart';


void main() {
  runApp(MaterialApp(
    initialRoute:'/',
    routes:{
      '/' : (context) => LoadingScreen(),
      '/home': (context) => Home(),
      '/location' : (context) => ChooseLocation()
    } ,
  ));
}
