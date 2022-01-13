import 'package:crypto_gunluk/fonksiyonlarVeSorgular.dart';
import 'package:crypto_gunluk/kayit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class OnaykoduDogrula extends StatefulWidget {
  const OnaykoduDogrula({Key? key}) : super(key: key);

  @override
  State<OnaykoduDogrula> createState() => _OnaykoduDogrulaState();
}

String onayKodu = "";

class _OnaykoduDogrulaState extends State<OnaykoduDogrula> {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    // ignore: unused_local_variable
    return Scaffold(
      appBar: AppBar(
        title: const Text("CRYPTO GÜNLÜK"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.grey,
                margin: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
                child: TextField(
                  onChanged: (String oKodu) {
                    setState(() {
                      onayKodu = oKodu;
                    });
                  },
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Onay Kodunuzu Giriniz',
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
              //Dogrula
              Container(
                  width: double.maxFinite,
                  color: Colors.blue,
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: TextButton(
                    child: const Text(
                      "DOĞRULAMA",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {
                      if (RastgeleSayi.toString() == onayKodu) {
                        kayitSorgusu(KADI, AdSOYAD, Sifre_1, EMAIL);
                        Navigator.pushNamed(context, "/");
                      } else {
                        print("değiller");
                      }
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
