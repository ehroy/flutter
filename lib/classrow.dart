import 'package:flutter/material.dart';


class MyBox extends StatelessWidget {
  final double height;
  final double width;
  const MyBox({
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
          width: 2,
          color: Colors.red,
        ),
      ),
    );
  }
}