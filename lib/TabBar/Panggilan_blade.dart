import 'package:flutter/material.dart';

class Panggilan extends StatelessWidget {
  const Panggilan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Center(
          child: Icon(
            Icons.add_call,
            size: 60.0,
            color: Color.fromARGB(255, 167, 161, 161),
          ),
        ),
      ),
    );
  }
}
