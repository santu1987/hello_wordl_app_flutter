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
            //Btn reload
            CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: (){
                clickCounter = 0;
                setState(() {
                });
              },
            ),  
            //Para dar espacio entre botones
            SizedBox( height: 10),
            //Btn menos
            CustomButton(
              icon: Icons.exposure_minus_1,
              onPressed: (){
                if( clickCounter == 0) return; 
                clickCounter--;
                setState(() {
                });
              },
            ),
            //Para dar espacio entre botones
            SizedBox( height: 10),
            //Btn menos
            CustomButton(
              icon: Icons.plus_one,
              onPressed: (){
                clickCounter++;
                setState(() {
                });
              },
            ),  

          ],
        )
      );
  }
}
//Un widget personalizado para porder usar varios
class CustomButton extends StatelessWidget {

  //Recibe el icono
  final IconData icon;
 
  //Recibe el onpress
  final VoidCallback? onPressed;

  const new({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: StadiumBorder(),
      onPressed: onPressed,
      child: Icon( icon ),
    );
  }
}