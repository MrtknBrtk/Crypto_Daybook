// ignore_for_file: file_names

import 'package:flutter/material.dart';

class YeniGun extends StatefulWidget {
  const YeniGun({Key? key}) : super(key: key);

  @override
  State<YeniGun> createState() => _YeniGunState();
}

String yaziYaz = "";
var sifrelemeler = [];
// ignore: prefer_typing_uninitialized_variables, unused_element
var _value;

class _YeniGunState extends State<YeniGun> {
  @override
  Widget build(BuildContext context) {
    sifrelemeler = [
      "sifreleme 1",
      "sifreleme 2",
      "sifreleme 3",
      "sifreleme 4",
      "sifreleme 5",
      "sifreleme 6",
      "sifreleme 7",
      "sifreleme 8",
      "sifreleme 9",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("CRYPTO GÜNLÜK"),
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text("Yeni Bir Gün Daha Yazmaya Nedersin"),
              ),
              //yazı yazma alanı
              Container(
                width: double.maxFinite,
                height: 400,
                color: Colors.grey,
                margin: const EdgeInsets.all(20),
                child: TextField(
                  onChanged: (String yazi) {
                    setState(() {
                      yaziYaz = yazi;
                    });
                  },
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  obscureText: false,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              //sifreleme yöntemi seçimi
              SizedBox(
                width: double.maxFinite,
                height: 65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "SİFRELEME YÖNTEMİ SEÇİNİZ : ",
                    ),
                    DropdownButton<String>(
                      iconEnabledColor: Colors.blue,
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
                      dropdownColor: Colors.grey[300],
                    ),
                  ],
                ),
              ),
              Container(
                  width: double.maxFinite,
                  color: Colors.blue,
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: TextButton(
                    child: const Text(
                      "  KAYDET ",
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
  /*    String b = "";
                      int a = yaziYaz.length;
                      for (var i = 0; i < a; i++) {
                        print(yaziYaz[i].characters);
                        b = b + yaziYaz[i];
                      }
                      print(b);*/