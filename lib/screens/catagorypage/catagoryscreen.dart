import 'package:flutter/material.dart';
import 'package:wordpanel/models/subcatagoories.dart';
import 'package:wordpanel/screens/catagorypage/widget/catagories.dart';

import 'package:wordpanel/screens/catagorypage/widget/leftpanel.dart';
import 'package:wordpanel/screens/catagorypage/widget/upperbutton.dart';
import 'package:wordpanel/utils/backrounddecaration.dart';

class Catagoryscreen extends StatefulWidget {
  const Catagoryscreen({super.key, required this.catagoryname});
  final String catagoryname;
  @override
  State<Catagoryscreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Catagoryscreen> {
  SubCatagoriesmodel selected = SubCatagoriesmodel(
      name: "name",
      totalwordcount: 100,
      bestscor: 100,
      uid: "100",
      levelcount: 5,
      catagory: "catagory",
      image: "image");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: backrounddecaration,
        child: Row(children: [
          LeftPanel(
            changeselected: (p0) {
              setState(() {
                selected = p0;

              });
            },
          ),
          Pageinside(
    
            selected: selected,
          )
        ]),
      ),
    );
  }
}

class Pageinside extends StatelessWidget {
  const Pageinside({
    super.key,
    required this.selected,
  });
  final SubCatagoriesmodel selected;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(0, 0, 0, 0),
        width: 932,
        height: 750,
        child: Column(
          children: [
            const Upperbuttons(),
            const SizedBox(
              height: 20,
            ),
            Catagories(
             catagory: selected,
            )
          ],
        ));
  }
}
