// ignore_for_file: prefer_const_constructors

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

String kullaniciADI = "", kullaniciPASS = "";

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CRYPTO GÜNLÜK"),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                //kullanıcı adı grişi
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
                  child: TextField(
                    onChanged: (String kullaniciAdi) {
                      setState(() {
                        kullaniciADI = kullaniciAdi;
                      });
                    },
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Kullanici Adi',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      prefixText: "",
                      suffixText: "TR",
                      suffixStyle: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                //kullanıcı şifresi girişi
                Container(
                    color: Colors.grey,
                    margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 20.0),
                    child: TextField(
                      onChanged: (String password) {
                        setState(() {
                          kullaniciPASS = password;
                        });
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                      ),
                      cursorColor: Colors.white,
                    )),
                //şifremi unuttum
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: Text(
                      "SİFREMİ UNUTTUM",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.blue,
                      child: TextButton(
                        child: Text(
                          "  Giriş Yap  ",
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {
                          LoginSorgu();
                        },
                      ),
                      margin: EdgeInsets.only(right: 10),
                    ),
                    Container(
                        color: Colors.blue,
                        child: TextButton(
                          child: Text(
                            "  kayıt ol ",
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/kayit");
                          },
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Future LoginSorgu() async {
    final db = FirebaseDatabase.instance.ref();
    db.child("KisiSayac/Ksayac/Sayac").once().then((value) {
      int a = int.parse('${value.snapshot.value}');
      for (var i = 0; i < a; i++) {
        db.child(i.toString() + "/Bilgiler/Kadi").once().then((value) {
          String glnkadi = '${value.snapshot.value}';
          if (glnkadi == kullaniciADI) {
            db.child(i.toString() + "/Bilgiler/Sifre").once().then((value) {
              String glnSifre = '${value.snapshot.value}';
              if (glnSifre == kullaniciPASS) {
                Navigator.pushNamed(context, "/firstPage");
              } else {}
            });
          } else {}
        });
      }
    });
  }
}
