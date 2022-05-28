import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Home", style: TextStyle(fontSize: 20, color: Colors.black),textAlign: TextAlign.center,),
      ),

      body: Center(
        child: ListView(

        ),
      ),
    );
  }
}
