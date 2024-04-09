import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';


class Loginstroketext extends StatelessWidget {
  const Loginstroketext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StrokeText(
              text: "Kelime Kontrol",
              textStyle: TextStyle(
                fontSize: 64,
                color: Color.fromARGB(255, 231, 233, 231),
              ),
              strokeColor: Colors.amber,
              strokeWidth: 5,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StrokeText(
              text: "Merkezi",
              textStyle: TextStyle(
                fontSize: 64,
                color: Color.fromARGB(255, 231, 233, 231),
              ),
              strokeColor: Colors.amber,
              strokeWidth: 5,
            ),
          ],
        )
      ],
    );
  }
}