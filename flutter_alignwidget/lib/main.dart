import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Mapp(),
  ));
}
class Mapp extends StatelessWidget {
  const Mapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutteralign widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 200.0,
          width: double.infinity,
          color: Colors.blue,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 50.0,
              width: 50.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}


