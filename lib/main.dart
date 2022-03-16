import 'package:flutter/material.dart';
import 'Page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ASPK Flutter',
      theme: ThemeData(
      fontFamily: 'Roboto',
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blue,
        ).copyWith(
          secondary: Colors.green,
        ),
        backgroundColor: Colors.lightBlue,
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.purple)),
        
      ),
      
      home: const MyHomePage(title: 'ASPK Flutter'),
    );
  }
}

