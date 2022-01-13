// ignore_for_file: import_of_legacy_library_into_null_safe, non_constant_identifier_names

import 'package:crypto_gunluk/mailBilgileri.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

//kullanıcı kayıt işlemi
Future kayitSorgusu(String Kadi, AdSoyad, Sifre, Email) async {
  final db = FirebaseDatabase.instance.ref();
  db.child("KisiSayac/Ksayac/Sayac").once().then((value) {
    String b = '${value.snapshot.value}';

    db.child(b.toString() + "/Bilgiler/").set({
      "Kadi": Kadi,
      "AdSoyad": AdSoyad,
      "Sifre": Sifre,
      "Email": Email,
      "DaybookSayac": "0"
    });

    db.child("KisiSayac/Ksayac/").update({"Sayac": int.parse(b) + 1});
  });
}

//doğrulama mailli gönderme
Future mailGonder(String glnmail, int rastgeleSayi) async {
  // ignore: deprecated_member_use
  final smtpServer = gmail(EMAILBIZIM, EMAILSIFRE);

  final message = Message()
    ..from = Address(EMAILBIZIM)
    ..recipients.add(glnmail)
    ..subject = ' Hesap Dogrulama'
    ..text = ' Hesap Dogrulama kodu'
    ..html =
        '<h1>DOGRULAMA KODUNUZ</h1><p>"${rastgeleSayi.toString()}"</p>'; //burda mesaj içeriği var

  try {
    final sendReport = await send(message, smtpServer);
    print('Message sent: ' + sendReport.toString());
  } on MailerException catch (e) {
    print('Message not sent.');
    for (var p in e.problems) {
      print('Problem: ${p.code}: ${p.msg}');
    }
  }

  var connection = PersistentConnection(smtpServer);

  await connection.send(message);

  await connection.close();
}
