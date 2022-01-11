// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CRYPTO GÜNLÜK"),
        // ignore: prefer_const_constructors
        actions: [
          IconButton(
              onPressed: () => {
                    Navigator.pushNamed(context, "/yeniGun"),
                  },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //günlük ana sayfaya gider
            ListTile(
              tileColor: Colors.white,
              //açılmayan

              title: const Text(
                "GÜNLÜK SAYFALARI",
              ),

              onTap: () {},
            ),
            //yeni gün yaz
            ListTile(
              tileColor: Colors.white,
              //açılmayan

              title: const Text(
                "YENİ GÜN YAZ",
              ),

              onTap: () {
                Navigator.pushNamed(context, "/yeniGun");
              },
            ),
            //ayarlar
            ListTile(
              tileColor: Colors.white,
              //açılmayan

              title: const Text(
                "AYARLAR",
              ),

              onTap: () {
                //Navigator.pushNamed(context, "/yeniGun");
              },
            ),
            //iletişim
            ListTile(
              tileColor: Colors.white,
              //açılmayan

              title: const Text(
                "İLETİŞİM",
              ),

              onTap: () {
                //Navigator.pushNamed(context, "/yeniGun");
              },
            ),
          ],
        ),
      ),
    );
  }
}
