// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Kayit extends StatefulWidget {
  const Kayit({Key? key}) : super(key: key);

  @override
  State<Kayit> createState() => _KayitState();
}

var sifrelemeler = [];
// ignore: prefer_typing_uninitialized_variables
var _value;

class _KayitState extends State<Kayit> {
  @override
  Widget build(BuildContext context) {
    sifrelemeler = [
      "08:00",
      "09:00",
      "10:00",
      "11:00",
      "12:00",
      "14:00",
      "15:00",
      "16:00",
      "17:00",
      "18:00",
      "19:00",
      "20:00",
    ];
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
              //sifreleme yöntemi seçimi
              Container(
                width: double.maxFinite,
                height: 65,
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "  güvendiğiniz şifreleme yöntemini seçiniz : ",
                    ),
                    DropdownButton<String>(
                      iconEnabledColor: Colors.pink,
                      items: [
                        for (var i = 0; i < sifrelemeler.length; i++)
                          DropdownMenuItem<String>(
                            value: sifrelemeler[i].toString(),
                            child: Text(
                              sifrelemeler[i].toString(),
                            ),
                          ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      value: _value,
                      elevation: 2,
                      isDense: true,
                      iconSize: 40.0,
                      dropdownColor: Colors.yellow,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
