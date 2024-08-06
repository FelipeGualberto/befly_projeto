import 'package:beflyprojeto/pages/home/home.dart';
import 'package:beflyprojeto/pages/login/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scrollBehavior: ScrollConfiguration.of(context).copyWith( dragDevices: { PointerDeviceKind.touch, PointerDeviceKind.mouse, }),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Login()
    );
  }
}
