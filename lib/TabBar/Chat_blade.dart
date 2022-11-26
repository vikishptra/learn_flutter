import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.add_business,
                  size: 60.0,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
