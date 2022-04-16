import 'package:flutter/material.dart';
import 'package:flutter_aspk_tembakau/constants/colors.dart';
import 'package:flutter_aspk_tembakau/constants/route.dart';
import 'package:flutter_aspk_tembakau/functions/show_error_dialogue.dart';
import 'package:flutter_aspk_tembakau/services/auth/auth_exceptions.dart';
import 'package:flutter_aspk_tembakau/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: const Text("Login")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: const Text(
              "",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2661FA),
                  fontSize: 24),
              textAlign: TextAlign.left,
            ),
          ),
          TextField(
            controller: _email,
            enableSuggestions: false,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(hintText: 'Masukkan Email anda!'),
            enableIMEPersonalizedLearning: false,
          ),
          TextField(
              controller: _password,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration:
                  const InputDecoration(hintText: 'Masukkan password anda!'),
              enableIMEPersonalizedLearning: false),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.brown),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    onPressed: () async {
                      final email = _email.text;
                      final password = _password.text;
                      try {
                        await AuthService.firebase()
                            .logIn(email: email, password: password);
                        final user = AuthService.firebase().currentUser;
                        if (user?.isEmailVerified ?? false) {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            inventoryRoute,
                            (route) => false,
                          );
                        } else {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            verifyEmailRoute,
                            (route) => false,
                          );
                        }
                      } on UserNotFoundException {
                        await showErrorDialog(
                          context,
                          'User tidak ada',
                        );
                      } on WrongPasswordAuthException {
                        await showErrorDialog(
                          context,
                          'Password salah',
                        );
                      } on GenericAuthException {
                        await showErrorDialog(
                          context,
                          'Terjadi Kesalahan',
                        );
                      }
                    },
                    child: const Text('Login'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        registerRoute,
                        (route) => false,
                      );
                    },
                    child: const Text(
                      "Buat akun baru!",
                      style: TextStyle(
                      color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
