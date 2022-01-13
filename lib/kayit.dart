// ignore_for_file: non_constant_identifier_names

import 'dart:math';

import 'package:crypto_gunluk/fonksiyonlarVeSorgular.dart';
import 'package:flutter/material.dart';

class Kayit extends StatefulWidget {
  const Kayit({Key? key}) : super(key: key);

  @override
  State<Kayit> createState() => _KayitState();
}

String KADI = "",
    AdSOYAD = "",
    Sifre_1 = "",
    Sifre_2 = "",
    EMAIL = "",
    OnayKODU = "";
late int RastgeleSayi;

class _KayitState extends State<Kayit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CRYPTO GÜNLÜK"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //kAdi
              Container(
                color: Colors.grey,
                margin: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
                child: TextField(
                  onChanged: (String kAdi) {
                    setState(() {
                      KADI = kAdi;
                    });
                  },
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'kullanici Adi',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    suffixStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              //ad soyad
              Container(
                color: Colors.grey,
                margin: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
                child: TextField(
                  onChanged: (String adsoyad) {
                    setState(() {
                      AdSOYAD = adsoyad;
                    });
                  },
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Adı Soyadı',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    suffixStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              //sifre 1
              Container(
                color: Colors.grey,
                margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
                child: TextField(
                  onChanged: (String sifre1) {
                    setState(() {
                      Sifre_1 = sifre1;
                    });
                  },
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    suffixStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              //sifre 2
              Container(
                color: Colors.grey,
                margin: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
                child: TextField(
                  onChanged: (String sifre2) {
                    setState(() {
                      Sifre_2 = sifre2;
                    });
                  },
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'tekrar Password',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    suffixStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              //eMail
              Container(
                color: Colors.grey,
                margin: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
                child: TextField(
                  onChanged: (String eMail) {
                    setState(() {
                      EMAIL = eMail;
                    });
                  },
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-Mail',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    suffixStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              //onaykodual
              Container(
                  width: double.maxFinite,
                  color: Colors.blue,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: TextButton(
                    child: const Text(
                      "  ONAY KODU AL ",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {
                      if (KADI == "" ||
                          AdSOYAD == "" ||
                          Sifre_1 == "" ||
                          Sifre_2 == "" ||
                          EMAIL == "") {
                        debugPrint("boşdeger var");
                      } else {
                        if (Sifre_1 == Sifre_2) {
                          sayiuret();
                          Navigator.pushNamed(context, "/onayKoduDogrula");
                        } else {
                          debugPrint("sifeler uymuyor");
                        }
                      }
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }

  //dogrulama kodu için Sayı üreteci

  Future sayiuret() async {
    int min = 100000;
    int max = 999999;
    var randomizer = new Random();
    RastgeleSayi = (min + randomizer.nextInt(max - min));
    print(RastgeleSayi);
    mailGonder(EMAIL, RastgeleSayi);
  }
}
