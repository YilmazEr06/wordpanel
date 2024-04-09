import 'package:flutter/material.dart';
import 'package:wordpanel/screens/loginscreen/widgets/formfield.dart';
import 'package:wordpanel/screens/loginscreen/widgets/loginwordswidget.dart';
import 'package:wordpanel/utils/backrounddecaration.dart';
import 'package:wordpanel/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Container(
          decoration: backrounddecaration,
          child: Column(
            children: [
              const Loginstroketext(),
              const Formfield(),
              Padding(
                padding: const EdgeInsets.only(top: 120, right: 1150),
                child: Container(
                    height: 30,
                    width: 50,
                    color:  const Color.fromARGB(0, 0, 0, 0),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         Text(appversion),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
