// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Kayit extends StatefulWidget {
  const Kayit({Key? key}) : super(key: key);

  @override
  State<Kayit> createState() => _KayitState();
}

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
                margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
                child: TextField(
                  onChanged: (String kAdi) {
                    setState(() {});
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'kullanici Adi',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    suffixStyle: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              //ad soyad
              Container(
                color: Colors.grey,
                margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
                child: TextField(
                  onChanged: (String adsoyad) {
                    setState(() {});
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Adı Soyadı',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    suffixStyle: const TextStyle(
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
                    setState(() {});
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    suffixStyle: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              //sifre 2
              Container(
                color: Colors.grey,
                margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
                child: TextField(
                  onChanged: (String sifre2) {
                    setState(() {});
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'tekrar Password',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    suffixStyle: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              //eMail
              Container(
                color: Colors.grey,
                margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
                child: TextField(
                  onChanged: (String eMail) {
                    setState(() {});
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-Mail',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    suffixStyle: const TextStyle(
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
                    child: Text(
                      "  ONAY KODU AL ",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {
                      //Navigator.pushNamed(context, "/kayit");
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
