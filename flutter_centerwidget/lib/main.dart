import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp1(),
  ),);
}
class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter app"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Hello world",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
    );
  }
}

