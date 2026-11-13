import 'package:flutter/material.dart';
import 'package:hellow_world_app/presentation/screens/counter/counter_screen.dart';

void main(){
  //ejecucion de widget principal
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:CounterScreen()
    );
  }

}