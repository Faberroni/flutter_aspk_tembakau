
//Halaman home buat aplikasi penggudangan
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions:  <Widget>[IconButton(
          icon: const Icon(Icons.add_box),
          onPressed: () => debugPrint("Dipencet"),
          //metode nya ganti ke page lain
        )],
      ),
      body: Center(
        child: Text(
          'Proyek ASPK',
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.headline3,
          //Teks Placeholder di homepage
        ),
      ),
    );
  }
}
