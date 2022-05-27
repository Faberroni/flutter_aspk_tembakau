import 'package:flutter/material.dart';
import 'package:flutter_aspk_tembakau/constants/colors.dart';
import 'package:flutter_aspk_tembakau/constants/route.dart';
import 'package:flutter_aspk_tembakau/functions/show_error_dialogue.dart';
import 'package:flutter_aspk_tembakau/services/auth/auth_exceptions.dart';
import 'package:flutter_aspk_tembakau/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
    return Scaffold(
      backgroundColor: myGreen,
      resizeToAvoidBottomInset: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/Character.png',
                height: 200,
              ),
              Image.asset(
                'assets/images/Ellipse.png',
              )
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: const Text(
              "Daftarkan Akun Baru!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: TextField(
                controller: _email,
                enableSuggestions: false,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.all(10.0),
                  hintText: 'Masukkan Email anda!',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: TextField(
                controller: _password,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.all(10.0),
                  hintText: 'Masukkan password anda!',
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.brown),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    onPressed: () async {
                      final email = _email.text;
                      final password = _password.text;
                      try {
                        await AuthService.firebase()
                            .createUser(email: email, password: password);
                        AuthService.firebase().sendEmailVerification();
                        Navigator.of(context).pushNamed(verifyEmailRoute);
                      } on EmailAlreadyInUseAuthException {
                        await showErrorDialog(
                          context,
                          'Email telah digunakan',
                        );
                      } on InvalidEmailAuthException {
                        await showErrorDialog(
                          context,
                          'Email invalid',
                        );
                      } on WeakPasswordAuthException {
                        await showErrorDialog(
                          context,
                          'Password lemah',
                        );
                      } on GenericAuthException {
                        await showErrorDialog(
                          context,
                          'Terjadi Kesalahan',
                        );
                      }
                    },
                    child: const Text('Register'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        loginRoute,
                        (route) => false,
                      );
                    },
                    child: const Text(
                      "Login disini!",
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
