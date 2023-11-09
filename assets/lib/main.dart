import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hafta6stil/metinsel.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      home: MainApp(),
    ));

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final double fontBoyut = 35;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'Metin 1 çşğöüİı',
            style: TextStyle(fontSize: fontBoyut), //temada ne font varsa
          )),
          Text(
            'Metin 2 çşğöüİı',
            style: TextStyle(
                fontFamily: 'bulunmayan',
                fontSize: fontBoyut), //bulamaz ise RobotoMono
          ),
          Text(
            'Metin 3 çşğöüİı',
            style: TextStyle(
                color: Colors.red,
                fontFamily: 'IndieFlower',
                fontSize: fontBoyut), //kendi fontumuz
          ),
          Text(
            'Metin 4 çşğöüİı',
            style: TextStyle(
                fontFamily: 'Courier',
                fontSize: fontBoyut), //benzer fontu gösteriyor
          ),
          Text(
            'Metin 5 çşğöüİı',
            style: Theme.of(context).textTheme.bodySmall, //hazır tema boyutlu
          ),
          Text(
            'Metin 6 çşğöüİı',
            style: TextStyle(
                color: Colors.blue,
                fontSize: fontBoyut + 10,
                letterSpacing: 5.25,
                fontFamily:
                    GoogleFonts.alkatra().fontFamily), //hazır tema boyutlu
          ),
          Image.asset("lib/resim1.png", height: 70), //transparan değil
          Image(
            width: 90,
            image: AssetImage("lib/resim2.png"),
          ),
          Image.network("https://i.stack.imgur.com/Bwdvk.png", scale: 1.9),
          GestureDetector(
            child: Icon(
              Icons.ice_skating,
              size: 40,
              color: Colors.green,
              shadows: [
                Shadow(
                    color: Colors.purple, blurRadius: 10, offset: Offset(4, 4))
              ],
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MetinIslem()),
            ),
          ),
        ],
      ),
    );
  }
}
