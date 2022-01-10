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
        actions: [IconButton(onPressed: () => {}, icon: Icon(Icons.add))],
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              tileColor: Colors.white,
              //açılmayan

              title: const Text(
                "GÜNLÜK SAYFALARI",
              ),

              onTap: () {},
            ),
            ListTile(
              tileColor: Colors.white,
              //açılmayan

              title: const Text(
                "YENİ GÜN YAZ",
              ),

              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
