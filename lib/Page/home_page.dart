// ignore: file_names
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
        actions: const <Widget>[Icon(Icons.account_box_rounded)],
      ),
      body: const Center(
        child: Text(
          'Proyek ASPK',
          textAlign: TextAlign.left,
          style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontStyle: FontStyle.italic
              ),
        ),
      ),
    );
  }
}
