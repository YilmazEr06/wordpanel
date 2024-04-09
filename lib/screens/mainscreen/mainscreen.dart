import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wordpanel/screens/catagorypage/catagoryscreen.dart';
import 'package:wordpanel/screens/mainscreen/widgets/custombutton.dart';
import 'package:wordpanel/screens/mainscreen/widgets/leftpanel.dart';
import 'package:wordpanel/utils/backrounddecaration.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainScreen> {
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

class Catagories extends StatelessWidget {
  const Catagories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 570,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Catagoriitem(
              text: "Bilim",
              func: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const Catagoryscreen();
                  },
                ));
              },
            ),
            Catagoriitem(
              func: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const Catagoryscreen();
                  },
                ));
              },
              text: "Sanat",
            ),
          ],
        ),
      ),
    );
  }
}

class Catagoriitem extends StatelessWidget {
  const Catagoriitem({
    super.key,
    required this.text,
    required this.func,
  });
  final String text;
  final Function() func;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: func,
        child: Container(
          height: 120,
          width: 750,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(111, 255, 255, 255)),
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: GoogleFonts.inriaSerif(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 40),
                  ),
                ),
                Text(
                  "Alt başlık sayısı: 2",
                  style: GoogleFonts.inriaSerif(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 15),
                  ),
                ),
                Text(
                  "Toplam kelime sayısı : 2",
                  style: GoogleFonts.inriaSerif(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Upperbuttons extends StatelessWidget {
  const Upperbuttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomButton(
            width: 230,
            text: "Yeni Katagori",
            func: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              size: 50,
            ))
      ],
    );
  }
}
