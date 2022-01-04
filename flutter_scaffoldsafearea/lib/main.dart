import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
  ),);

}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter single child"),
        centerTitle: true,
      ),
      body: Container(
        height: 200.0,
        width: double.infinity,
        color: Colors.blue,
        child: Center(
          child: Text(
            'Hello world',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}


