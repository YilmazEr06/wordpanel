import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield({
    super.key,
    required this.ispassword,
  });
  final bool ispassword;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 350.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: TextFormField(
          obscureText: ispassword,
          decoration: InputDecoration(
            hintText: ispassword ? "Şifre " : "Kullanıcı adı",
            filled: true,
            fillColor: Colors.grey[200],
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            prefixIcon: Icon(
                ispassword ? Icons.password_sharp : Icons.text_fields,
                color: Colors.grey[600]),
          ),
          style: const TextStyle(color: Colors.black, fontSize: 16.0),
          cursorColor: Colors.blue,
        ),
      ),
    );
  }
}