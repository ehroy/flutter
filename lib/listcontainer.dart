import 'package:flutter/material.dart';

void main() {
  runApp(const Containers());
}


class Containers extends StatelessWidget {
  const Containers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container dan Text Widget")),
      body: Container(
        margin: const EdgeInsets.all(25),
        padding: const EdgeInsets.all(22),
        width: 600,
        height: 300,
        child: const Text(
          "TEST CONTAINER",
          style: TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontFamily: 'Roboto',
            fontStyle: FontStyle.italic,
            // decoration: TextDecoration.lineThrough,
            // decorationColor: Colors.green,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 2.5,
            wordSpacing: 10,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.red, width: 5),
          borderRadius: const BorderRadius.all(Radius.circular(25)),
        ),
      ),
    );
  }
}