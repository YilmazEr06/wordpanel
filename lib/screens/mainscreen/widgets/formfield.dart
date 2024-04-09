import 'package:flutter/material.dart';
import 'package:wordpanel/screens/loginscreen/widgets/loginbutton.dart';
import 'package:wordpanel/screens/loginscreen/widgets/textfield.dart';

class Formfield extends StatelessWidget {
  const Formfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Form(
            child: Column(
          children: [
            SizedBox(
              height: 85,
            ),
            Textfield(
              ispassword: false,
            ),
            Textfield(
              ispassword: true,
            ),
            LoginButton()
          ],
        )),
      ],
    );
  }
}




