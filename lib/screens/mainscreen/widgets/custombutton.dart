import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.func,
    required this.icon,
    required this.width,
  });
  final double width;
  final String text;
  final Function() func;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: func,
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 253, 253),
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10)),
          height: 50,
          width: width,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: GoogleFonts.irishGrover(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 25),
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



