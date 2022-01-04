import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RowApp(),
  ),);
}

class RowApp extends StatelessWidget {
  const RowApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi child widgets demo"),
      ),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Row(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            child: Center(
              child: Text('First child'),
            ),
          ),
        ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Center(
                  child: Text('Second child'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Center(
                  child: Text('Third child'),
                ),
              ),
            ],
          )
      ],
      )
    );
  }
}


