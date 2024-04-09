import 'package:flutter/material.dart';
import 'package:wordpanel/screens/mainscreen/mainscreen.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
             return const MainScreen();
            },));
          },
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 206, 204, 204)),
            child: const Center(
                child: Text(
              "Giriş yapınız",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
          ),
        ));
  }
}
