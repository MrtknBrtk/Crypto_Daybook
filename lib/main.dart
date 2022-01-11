import 'package:crypto_gunluk/firstPage.dart';
import 'package:crypto_gunluk/kayit.dart';
import 'package:crypto_gunluk/login.dart';
import 'package:crypto_gunluk/yeniGun.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => const Login(),
      "/firstPage": (context) => const FirstPage(),
      "/kayit": (context) => const Kayit(),
      "/yeniGun": (context) => const YeniGun(),
    },
  ));
}
