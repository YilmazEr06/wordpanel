
import 'package:flutter/material.dart';
import 'package:wordpanel/screens/catagorypage/widget/catagories.dart';

import 'package:wordpanel/screens/catagorypage/widget/leftpanel.dart';
import 'package:wordpanel/screens/catagorypage/widget/upperbutton.dart';
import 'package:wordpanel/utils/backrounddecaration.dart';

class Catagoryscreen extends StatefulWidget {
  const Catagoryscreen({super.key});

  @override
  State<Catagoryscreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Catagoryscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: backrounddecaration,
        child: const Row(children: [LeftPanel(), Pageinside()]),
      ),
    );
  }
}

class Pageinside extends StatelessWidget {
  const Pageinside({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(0, 0, 0, 0),
        width: 932,
        height: 750,
        child: const Column(
          children: [
            Upperbuttons(),
            SizedBox(
              height: 20,
            ),
            Catagories()
          ],
        ));
  }
}



