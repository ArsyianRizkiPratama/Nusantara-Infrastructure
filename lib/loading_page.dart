import 'dart:async'; //untuk timer

import 'package:flutter/material.dart';
import 'package:ni/widget_tree.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration =
        const Duration(seconds: 4); //bagian pengaturan durasi loading
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              const WidgetTree(), //ini adalah halaman yang akan di buka ketika loading sudah selesai dilakukan
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow, //warna backround saat loading
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("images/ni.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text(
              "tunggu sebentar",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1, //ketebalan progress indikator
            )
          ],
        ),
      ),
    );
  }
}
