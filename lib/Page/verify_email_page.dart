import 'package:flutter/material.dart';
import 'package:flutter_aspk_tembakau/constants/colors.dart';
import 'package:flutter_aspk_tembakau/constants/route.dart';
import 'package:flutter_aspk_tembakau/services/auth/auth_service.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({Key? key}) : super(key: key);

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myGreen,
        appBar: AppBar(title: const Text('Verifikasi Email')),
        body: Column(
          children: [
            Image.asset('assets/images/key.png'),
            const Text(
              'Email verifikasi telah dikirim cek inbox email anda!',
              style: TextStyle(
                fontFamily: 'assets/fonts/Roboto-Regular.ttf',
                color: Colors.black,
              ),
            ),
            const Text(
              "Jika belum mendapatkan email klik dibawah untuk mengirimkannya kembali",
              style: TextStyle(
                fontFamily: 'assets/fonts/Roboto-Regular.ttf',
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await AuthService.firebase().sendEmailVerification();
              },
              child: const Text('Kirim email verifikasi'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await AuthService.firebase().logOut();
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    registerRoute,
                    (route) => false,
                  );
                },
                child: const Text('Restart'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.brown),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                )),
          ],
        ));
  }
}
