import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  void playsound(int soundNum){
    final player = AudioCache();

    // call this method when desired
    player.play('note$soundNum.wav');
  }
  Widget buildkey(int noteNum,String txt,Color color){
    return Expanded(
      child: FlatButton(onPressed: () {playsound(noteNum);}, child: Text(txt,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),color: color,)
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Center(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:<Widget>[
              buildkey(1,'C',Colors.red),
              buildkey(2,'D',Colors.orange),
              buildkey(3,'E',Colors.yellow),
              buildkey(4,'F',Colors.green),
              buildkey(5,'A',Colors.blue),
              buildkey(6,'B',Colors.indigo),
              buildkey(7,'C',Colors.purple),
            ],) ,
          )
      )
    );
  }
}
