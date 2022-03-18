import 'package:flutter/material.dart';
import 'Page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = "Proyek ASPK";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(
          secondary: Colors.green,
        ),
        backgroundColor: Colors.white,
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black)),
      ),
      home: const MyHomePage(title: 'ASPK Flutter'),
    );
  }
}
