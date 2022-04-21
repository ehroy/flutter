import 'package:flutter/material.dart';

class MyBoxx extends StatelessWidget {
  final double width;
  final double height;
  const MyBoxx({
    Key? key,
    this.width = 50,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(
          color: Colors.red,
          width: 2,
        ),
      ),
    );
  }
}