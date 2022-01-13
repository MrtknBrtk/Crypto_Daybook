import 'package:flutter/cupertino.dart';

//domuz bağı şifreleme ve çözme
List<String> dmzList = [
  "_|",
  "|_|",
  "|_",
  "_|-",
  "_|-|",
  "_-|",
  "|-",
  "|-|",
  "-|",
  "_|.",
  "_||.",
  "|_.",
  "_|-.",
  "_|-|.",
  "_-|.",
  "|-.",
  "|-|.",
  "-|.",
  "\\/",
  ">",
  "<",
  "/\\",
  "\\/.",
  ">.",
  "<.",
  "/\\."
];
List<String> karsilik = [
  "a",
  "b",
  "c",
  "d",
  "e",
  "f",
  "g",
  "h",
  "ı",
  "j",
  "k",
  "l",
  "m",
  "n",
  "o",
  "p",
  "q",
  "r",
  "s",
  "t",
  "u",
  "v",
  "w",
  "x",
  "y",
  "z"
];
Future domuzYap(String glnyazi) async {
  String dmzmsj = "";
  for (var i = 0; i < glnyazi.length; i++) {
    for (var x = 0; x < karsilik.length; x++) {
      if (glnyazi[i] == karsilik[x]) {
        dmzmsj = dmzmsj + dmzList[x] + "*";
        break;
      }
    }
  }
}

Future domuzCoz(String glnyazi) async {
  String dmzCzMsj = "", bit = "";
  for (var i = 0; i < glnyazi.length; i++) {
    if (glnyazi[i] == "*") {
      for (var i = 0; i < dmzList.length; i++) {
        if (bit == dmzList[i]) {
          dmzCzMsj = dmzCzMsj + karsilik[i];
          bit = "";
        }
      }
    } else {
      bit = bit + glnyazi[i];
    }
  }
}

//rsa şifreleme ve çözme
Future rsaSifrele(String glnyazi) async {
  int p = 13, q = 19;
  // ignore: unused_local_variable
  int n, d, e, fi;
  n = p * q;
  fi = (p - 1) * (q - 1);
  e = 11;
  int i = 1;
  while (true) {
    if ((e * i) % fi == 1) {
      d = i;
      break;
    }
    i++;
  }
  List<int> asciiList = glnyazi.codeUnits;
  List<int> sifrelenmisListe = [];
  debugPrint("Sifresiz Hali : $asciiList");
  for (int i = 0; i < asciiList.length; i++) {
    int deger = 1;
    for (int j = 0; j < e; j++) {
      deger = (deger * asciiList[i]) % n;
    }
    // şifrelenmiş değerleri şifrelenmisListe adlı bir liste içerisinde tutuyorum
    sifrelenmisListe.add(deger);
  }
  debugPrint("Şifreli hali : $sifrelenmisListe");
  String donenMetin = String.fromCharCodes(sifrelenmisListe);
  debugPrint("Şifreli Metin : $donenMetin");
}

Future rsaCoz(String glnyazi) async {
  int p = 13, q = 19;
  int n, d, e, fi;
  n = p * q;
  fi = (p - 1) * (q - 1);
  e = 11;
  int i = 1;
  while (true) {
    if ((e * i) % fi == 1) {
      d = i;
      break;
    }
    i++;
  }
  List<int> asciiList = glnyazi.codeUnits;
  List<int> cozulmusMetin = [];
  for (int i = 0; i < asciiList.length; i++) {
    int deger = 1;
    for (int j = 0; j < d; j++) {
      deger = (deger * asciiList[i]) % n;
    }
    cozulmusMetin.add(
        deger); // şifresi çözülmüş değerleri cozulmusMetin adlı int değerler tutan bir listeye ekliyorum
  }
  // ignore: unnecessary_statements
  ("cözülmus hali : $cozulmusMetin");
  String donenMetin = String.fromCharCodes(cozulmusMetin);
  print(
      donenMetin); // int listeyi String.fromCharCodes adlı fonksiyon ile ascii den string e dönüştürüyorum
  return donenMetin; // çözülmüş olan metni geri döndürüy
}

/*    String b = "";
                      int a = yaziYaz.length;
                      for (var i = 0; i < a; i++) {
                        print(yaziYaz[i].characters);
                        b = b + yaziYaz[i];
                      }
                      print(b);*/
