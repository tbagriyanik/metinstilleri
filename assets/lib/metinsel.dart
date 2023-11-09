import 'package:flutter/material.dart';

class MetinIslem extends StatefulWidget {
  const MetinIslem({super.key});

  @override
  State<MetinIslem> createState() => _MetinIslemState();
}

class _MetinIslemState extends State<MetinIslem> {
  TextEditingController isim = TextEditingController();
  TextEditingController yas = TextEditingController();
  String sonuc = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Metin İşlemleri"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Adınızı Giriniz"),
            TextField(
              controller: isim,
              maxLength: 30,
              decoration: InputDecoration(
                  hintText: "Metin giriş",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue, width: 1.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )),
            ),
            SizedBox(height: 10),
            Text("Yaşınızı Giriniz"),
            TextField(
                controller: yas,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Sayı giriş",
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlue, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )),
                maxLength: 4),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilledButton(
                    onPressed: () {
                      setState(() {
                        isim.text = "";
                        yas.text = "";
                        sonuc = "Temizlendi";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: Text("Temizle")),
                FilledButton(
                    onPressed: () {
                      setState(() {
                        sonuc = isim.text + " " + yas.text + " yaşındasınız";
                      });
                    },
                    child: Text("Hesapla")),
              ],
            ),
            Divider(thickness: 1),
            Text(sonuc),
          ],
        ),
      ),
    );
  }
}
