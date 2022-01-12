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
  print(dmzmsj);
}

Future domuzCoz(String glnyazi) async {
  String dmzCzMsj = "", bit = "";
  int syc = 0;
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
  print(dmzCzMsj);
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  /*    String b = "";
                      int a = yaziYaz.length;
                      for (var i = 0; i < a; i++) {
                        print(yaziYaz[i].characters);
                        b = b + yaziYaz[i];
                      }
                      print(b);*/