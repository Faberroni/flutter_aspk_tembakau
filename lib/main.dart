import 'package:flutter/material.dart';
import 'package:flutter_aspk_tembakau/Page/inventory_page.dart';
import 'package:flutter_aspk_tembakau/Page/login_page.dart';
import 'package:flutter_aspk_tembakau/Page/new_inventory_page.dart';
import 'package:flutter_aspk_tembakau/Page/register_page.dart';
import 'package:flutter_aspk_tembakau/Page/verify_email_page.dart';
import 'package:flutter_aspk_tembakau/constants/colors.dart';
import 'package:flutter_aspk_tembakau/constants/route.dart';
import 'package:flutter_aspk_tembakau/services/auth/auth_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
          primarySwatch: myGreen,
        ).copyWith(
          secondary: Colors.amber,
        ),
        backgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      home: const HomePage(),
      routes: {
        loginRoute: (context) => const LoginPage(),
        registerRoute: (context) => const RegisterPage(),
        inventoryRoute: (context) => const InventoryPage(),
        verifyEmailRoute: (context) => const VerifyEmailPage(),
        newInventoryRoute: (context) => const NewInventoryPage()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthService.firebase().initialize(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = AuthService.firebase().currentUser;
            if (user != null) {
              if (user.isEmailVerified) {
                return const InventoryPage();
              } else {
                return const VerifyEmailPage();
              }
            } else {
              return const LoginPage();
            }
          default:
            return const Text('Loading....');
        }
      },
    );
  }
}
