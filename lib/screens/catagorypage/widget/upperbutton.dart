import 'package:flutter/material.dart';
import 'package:wordpanel/screens/mainscreen/widgets/custombutton.dart';

class Upperbuttons extends StatelessWidget {
  const Upperbuttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          child: Image.asset("images/back.png"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        const SizedBox(
          width: 640,
        ),
        CustomButton(
            width: 200,
            text: "Yeni Level",
            func: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              size: 50,
            ))
      ],
    );
  }
}