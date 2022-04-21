import 'package:flutter/material.dart';


class MyGrid extends StatelessWidget {
  final String text;
  final Color? color;
  const MyGrid({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color,
        child: Center(child: Text(text, style: const TextStyle(fontSize: 20))));
  }
}