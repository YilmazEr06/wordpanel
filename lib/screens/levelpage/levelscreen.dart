import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:wordpanel/screens/levelpage/widget/leftpanel.dart';

import 'package:wordpanel/screens/mainscreen/widgets/custombutton.dart';

import 'package:wordpanel/utils/backrounddecaration.dart';

class Levelscreen extends StatefulWidget {
  const Levelscreen({super.key});

  @override
  State<Levelscreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Levelscreen> {
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
        child: Container(
          width: 750,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 145, 144, 144)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kelimeler',
                  style: GoogleFonts.irishGrover(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 55),
                  ),
                ),
                Container(
                  height: 470,
                  width: 710,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 180, 178, 178),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: const SingleChildScrollView(
                    child: Column(
                      children: [
                        Wordwidget(text: "Kelime 1",),
                        Wordwidget(text: "Kelime 2",),
                        Wordwidget(text: "Kelime 3",),
                      ]
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class Wordwidget extends StatelessWidget {
  const Wordwidget({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: 650,
        height: 50,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 131, 130, 130),
            borderRadius:
                BorderRadius.all(Radius.circular(15))),
        child: Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: GoogleFonts.irishGrover(
                textStyle: const TextStyle(
                    letterSpacing: .5,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 170,
            ),
            Text(
              'Açıklama',
              style: GoogleFonts.irishGrover(
                textStyle: const TextStyle(
                    letterSpacing: .5,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 170,
            ),
            const Icon(
              Icons.edit,
              size: 45,
            )
          ],
        ),
      ),
    );
  }
}

class Levelitem extends StatelessWidget {
  const Levelitem({
    super.key,
    required this.level,
    required this.func,
    required this.wordcount,
  });
  final int level;
  final Function() func;
  final int wordcount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 600,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 114, 113, 113),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          children: [
            Text(
              '  Level $level',
              style: GoogleFonts.irishGrover(
                textStyle: const TextStyle(letterSpacing: .5, fontSize: 25),
              ),
            ),
            const SizedBox(
              width: 100,
            ),
            Text(
              'Kelime sayısı $wordcount',
              style: GoogleFonts.irishGrover(
                textStyle: const TextStyle(letterSpacing: .5, fontSize: 25),
              ),
            ),
            const SizedBox(
              width: 150,
            ),
            const Icon(
              Icons.settings,
              size: 50,
            )
          ],
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
