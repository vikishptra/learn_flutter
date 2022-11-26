import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Center(
          child: Icon(
            Icons.restore,
            size: 60.0,
            color: Color.fromARGB(255, 167, 161, 161),
          ),
        ),
      ),
    );
  }
}
