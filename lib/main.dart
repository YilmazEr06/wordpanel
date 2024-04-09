import 'dart:io';

import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';
import 'package:wordpanel/screens/loginscreen/loginpage.dart';
import 'package:wordpanel/utils/utils.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Yönetim Paneli');
    setWindowMaxSize( Size(screensizewidth,screensizeheight));
    setWindowMinSize(Size(screensizewidth,screensizeheight));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
