import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();

}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        //body:Center(child: Text('Counter screen'),)
        appBar: AppBar(
          title: Text("Santus Counter Fucntions Screen"),
          actions: [
            IconButton(
              icon: Icon(Icons.refresh_rounded),
              onPressed: () {  
                setState(() {
                  clickCounter = 0;
                });
              }, 
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: TextStyle( fontSize:160, fontWeight: FontWeight.w100),),
              Text('Click${ clickCounter == 1 ? '':'s'}', style: TextStyle( fontSize:25),)
            ],
          ),
        ),
        //Aqui manejamos una lista de widgets
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end ,
          children: [
            FloatingActionButton(
              shape: StadiumBorder(),
              onPressed: (){
                //PAra que actualice la pantalla
                setState(() {
                  clickCounter++;  
                });
                
              },
              child: Icon( Icons.plus_one),
            ),
            //Para dar espacio entre botones
            SizedBox( height: 10,),

            FloatingActionButton(
              shape: StadiumBorder(),
              onPressed: (){
                if( clickCounter == 0) return;
                //PAra que actualice la pantalla
                setState(() {
                  clickCounter--;  
                });
                
              },
              child: Icon( Icons.exposure_minus_1),
            ),
          ],
        )
      );
  }
}