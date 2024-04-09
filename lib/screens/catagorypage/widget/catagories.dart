import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wordpanel/screens/levelpage/levelscreen.dart';

class Catagories extends StatelessWidget {
  const Catagories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 570,
        child: Container(
          height: 500,
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
                  'Fizik',
                  style: GoogleFonts.irishGrover(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 55),
                  ),
                ),
                Text(
                  'Toplam kelime sayısı: 1000',
                  style: GoogleFonts.irishGrover(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 20),
                  ),
                ),
                Text(
                  'Bu katagoride en yüksek skor: 1000',
                  style: GoogleFonts.irishGrover(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 20),
                  ),
                ),
                Text(
                  'Level bilgisi:',
                  style: GoogleFonts.irishGrover(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 20),
                  ),
                ),
                Text(
                  '  Level sayısı: 2:',
                  style: GoogleFonts.irishGrover(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 20),
                  ),
                ),
                Text(
                  '  Leveller:',
                  style: GoogleFonts.irishGrover(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 20),
                  ),
                ),
                Container(
                  height: 320,
                  width: 710,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 180, 178, 178),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Levelitem(
                          level: 1,
                          func: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return Levelscreen();
                            },));
                          },
                          wordcount: 150,
                        ),
                        Levelitem(
                          level: 2,
                          func: () {},
                          wordcount: 150,
                        ),
                        Levelitem(
                          level: 3,
                          func: () {},
                          wordcount: 150,
                        ),
                        Levelitem(
                          level: 4,
                          func: () {},
                          wordcount: 150,
                        ),
                        Levelitem(
                          level: 5,
                          func: () {},
                          wordcount: 150,
                        ),
                        Levelitem(
                          level: 6,
                          func: () {},
                          wordcount: 150,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
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
      child: GestureDetector(
        onTap: func,
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
      ),
    );
  }
}
