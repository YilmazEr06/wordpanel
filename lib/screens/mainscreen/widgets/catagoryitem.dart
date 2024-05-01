import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Catagoriitem extends StatelessWidget {
  const Catagoriitem({
    super.key,
    required this.text,
    required this.func,
    required this.totalwordcount, 
    required this.subtitlecount,
  });
  final int subtitlecount;
  final String text;
  final int totalwordcount;
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
                  "Alt başlık sayısı: $subtitlecount",
                  style: GoogleFonts.inriaSerif(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 15),
                  ),
                ),
                Text(
                  "Toplam kelime sayısı : $totalwordcount",
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