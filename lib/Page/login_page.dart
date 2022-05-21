import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_aspk_tembakau/constants/route.dart';

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
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Column(
        children: [
          TextField(
            controller: _email,
            enableSuggestions: false,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(hintText: 'Masukkan Email anda!'),
          ),
          TextField(
            controller: _password,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration:
                const InputDecoration(hintText: 'Masukkan password anda!'),
          ),
          TextButton(
            onPressed: () async {
              final email = _email.text;
              final password = _password.text;
              try {
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: email,
                  password: password,
                );
                Navigator.of(context).pushNamedAndRemoveUntil(
                  inventoryRoute,
                  (route) => false,
                );
              } on FirebaseAuthException catch (e) {
                print('terjadi kesalahan');
              }
            },
            child: const Text('Login'),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  registerRoute,
                  (route) => false,
                );
              },
              child: const Text("Buat akun baru!"))
        ],
      ),
    );
  }
}
        import 'package:flutter/material.dart';
        
        
        class LoginWidget extends StatefulWidget {
        @override
        _LoginWidgetState createState() => _LoginWidgetState();
        }
        
        class _LoginWidgetState extends State<LoginWidget> {
        @override
        Widget build(BuildContext context) {
        // Figma Flutter Generator LoginWidget - FRAME
        
        return Container(
      width: 439,
      height: 885,
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
      color : Color.fromRGBO(45, 182, 163, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 179,
        left: 94,
        child: Container(
        width: 245,
        height: 246,
        decoration: BoxDecoration(
          color : Color.fromRGBO(228, 175, 236, 0.1899999976158142),
      borderRadius : BorderRadius.all(Radius.elliptical(245, 246)),
  )
      )
      ),Positioned(
        top: 140.49136352539062,
        left: 99.49298858642578,
        child: Container(
        width: 22.5654296875,
        height: 21.025924682617188,
        decoration: BoxDecoration(
          color : Color.fromRGBO(255, 248, 243, 1),
      borderRadius : BorderRadius.all(Radius.elliptical(22.5654296875, 21.025924682617188)),
  )
      )
      ),Positioned(
        top: 400.4481506347656,
        left: 400.02337646484375,
        child: Container(
        width: 10.25701904296875,
        height: 9.557220458984375,
        decoration: BoxDecoration(
          color : Color.fromRGBO(255, 248, 243, 1),
      borderRadius : BorderRadius.all(Radius.elliptical(10.25701904296875, 9.557220458984375)),
  )
      )
      ),Positioned(
        top: 84,
        left: 360,
        child: Container(
        width: 14,
        height: 14,
        decoration: BoxDecoration(
          color : Color.fromRGBO(251, 179, 148, 0.6299999952316284),
      borderRadius : BorderRadius.all(Radius.elliptical(14, 14)),
  )
      )
      ),Positioned(
        top: 418,
        left: 275,
        child: Container(
        width: 14,
        height: 14,
        decoration: BoxDecoration(
          color : Color.fromRGBO(251, 179, 148, 0.6299999952316284),
      borderRadius : BorderRadius.all(Radius.elliptical(14, 14)),
  )
      )
      ),Positioned(
        top: 235,
        left: 360,
        child: Container(
        width: 9,
        height: 9,
        decoration: BoxDecoration(
          color : Color.fromRGBO(251, 179, 148, 0.6299999952316284),
      borderRadius : BorderRadius.all(Radius.elliptical(9, 9)),
  )
      )
      ),Positioned(
        top: 589,
        left: 65,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 443,
        left: 104,
        child: Text('Selamat datang,', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(70, 68, 68, 1),
        fontFamily: 'Poppins',
        fontSize: 30,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 489,
        left: 66,
        child: Text('(tulisan)', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Poppins',
        fontSize: 13,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 567,
        left: 40,
        child: Container(
      decoration: BoxDecoration(
          
  ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Container(
        width: 339,
        height: 59,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.11999999731779099),
          offset: Offset(0,2),
          blurRadius: 1
      )],
      color : Color.fromRGBO(243, 243, 243, 1),
  )
      ),

        ],
      ),
    )
      ),Positioned(
        top: 646,
        left: 50,
        child: Container(
        width: 339,
        height: 59,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.11999999731779099),
          offset: Offset(0,2),
          blurRadius: 1
      )],
      color : Color.fromRGBO(243, 243, 243, 1),
  )
      )
      ),Positioned(
        top: 597,
        left: 116,
        child: Text('Username , Email ', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(102, 97, 97, 1),
        fontFamily: 'Poppins',
        fontSize: 15,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 665,
        left: 116,
        child: Text('Password', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(102, 97, 97, 1),
        fontFamily: 'Poppins',
        fontSize: 15,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 667,
        left: 349,
        child: Container(
      width: 25,
      height: 17.1875,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 4.6875,
        left: 8.59375,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 0,
        left: 0,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),
        ]
      )
    )
      ),Positioned(
        top: 595,
        left: 68,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 662,
        left: 69,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 713,
        left: 255,
        child: Text('Buat akun baru?', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(44, 38, 38, 1),
        fontFamily: 'Poppins',
        fontSize: 15,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 765,
        left: 56,
        child: Container(
      width: 320.6000061035156,
      height: 60,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 320.6000061035156,
        height: 60,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
      color : Color.fromRGBO(223, 180, 151, 1),
  )
      )
      ),Positioned(
        top: 14,
        left: 130,
        child: Text('Login', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Poppins',
        fontSize: 23,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 205,
        left: 55,
        child: Container(
      width: 329,
      height: 212,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 141.73529052734375,
        left: 245.68414306640625,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 144.90707397460938,
        left: 270.37445068359375,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 115.34453582763672,
        left: 2.1060463950561825e-7,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 119.70097351074219,
        left: 17.79408836364746,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: -0.0000020907953057758277,
        left: 98.13275909423828,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 0.0016638817032799125,
        left: 98.132568359375,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 130.22299194335938,
        left: 192.48390197753906,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 210.82760620117188,
        left: 38.00531005859375,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 43.81520080566406,
        left: 125.7385025024414,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 82.0831298828125,
        left: 125.73847961425781,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 128.59263610839844,
        left: 125.92757415771484,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 43.81525421142578,
        left: 142.75575256347656,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 43.81525421142578,
        left: 161.66378784179688,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 33,
        left: 171,
        child: Container(
      width: 115.59234619140625,
      height: 178.99986267089844,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: -4.547473508864641e-13,
        left: 49.15934371948242,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 20.269367218017578,
        left: 70.70369720458984,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 11.198721885681152,
        left: 101.97177124023438,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 16.846956253051758,
        left: 105.346435546875,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 19.665294647216797,
        left: 5.40135383605957,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 10.569270133972168,
        left: 0,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 16.2310733795166,
        left: 5.923761367797852,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 3.2138500213623047,
        left: 49.22379684448242,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 9.96268367767334,
        left: 50.22388458251953,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 10.209941864013672,
        left: 55.87789535522461,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 10.37829875946045,
        left: 52.12028121948242,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 15.659917831420898,
        left: 52.59758377075195,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 20.223886489868164,
        left: 53.179168701171875,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 2.236879825592041,
        left: 49.76693344116211,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 10.403426170349121,
        left: 63.457584381103516,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 11.26254653930664,
        left: 64.30489349365234,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 7.811992645263672,
        left: 50.04296112060547,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 8.16252613067627,
        left: 56.018611907958984,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 170.74388122558594,
        left: 42.147796630859375,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 175.5035400390625,
        left: 55.054473876953125,
        child: Container(
      width: 3.5368802547454834,
      height: 2.8479371070861816,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),
        ]
      )
    )
      ),Positioned(
        top: 177.194580078125,
        left: 42.10906219482422,
        child: Container(
      width: 16.494272232055664,
      height: 1.6403412818908691,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),
        ]
      )
    )
      ),Positioned(
        top: 178.1557159423828,
        left: 42.129329681396484,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 177.0760955810547,
        left: 44.604042053222656,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 176.2853240966797,
        left: 47.90998458862305,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 176.11558532714844,
        left: 48.59622573852539,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 175.69393920898438,
        left: 48.68693923950195,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 175.08145141601562,
        left: 48.71068572998047,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 175.38475036621094,
        left: 46.236976623535156,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 175.05242919921875,
        left: 47.83334732055664,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 175.42018127441406,
        left: 55.09592056274414,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 171.42611694335938,
        left: 57.41207504272461,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 177.40640258789062,
        left: 50.95372009277344,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 177.3807830810547,
        left: 55.45574951171875,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 176.47215270996094,
        left: 56.075904846191406,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 175.99586486816406,
        left: 56.91203308105469,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 175.8254852294922,
        left: 57.907470703125,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 170.58985900878906,
        left: 78.18663787841797,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 176.09552001953125,
        left: 78.55458068847656,
        child: Container(
      width: 3.744605779647827,
      height: 2.7605485916137695,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),
        ]
      )
    )
      ),Positioned(
        top: 176.524169921875,
        left: 78.77435302734375,
        child: Container(
      width: 16.42690086364746,
      height: 2.4756968021392822,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),
        ]
      )
    )
      ),Positioned(
        top: 177.47349548339844,
        left: 78.61393737792969,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 176.39915466308594,
        left: 91.7400894165039,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 175.918212890625,
        left: 88.79762268066406,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 175.81494140625,
        left: 87.95747375488281,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 175.41302490234375,
        left: 87.38506317138672,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 174.878173828125,
        left: 87.1597900390625,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 174.92616271972656,
        left: 89.04663848876953,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 174.7491455078125,
        left: 88.31403350830078,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 175.9840545654297,
        left: 78.60212707519531,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 171.9603271484375,
        left: 79.30043029785156,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 177.37612915039062,
        left: 83.45645141601562,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 177.7301788330078,
        left: 81.5395736694336,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 176.89266967773438,
        left: 80.75043487548828,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 176.5044403076172,
        left: 79.68174743652344,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 176.4149932861328,
        left: 78.9346923828125,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 72.35132598876953,
        left: 42.070152282714844,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 171.3431854248047,
        left: 75.78919219970703,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 173.3314208984375,
        left: 87.22022247314453,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 170.01417541503906,
        left: 86.69818878173828,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 166.69114685058594,
        left: 86.14035034179688,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 163.36749267578125,
        left: 85.58050537109375,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 160.04446411132812,
        left: 85.02254486083984,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 156.72067260742188,
        left: 84.4610595703125,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 153.39764404296875,
        left: 83.89492797851562,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 150.07461547851562,
        left: 83.33106231689453,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 146.75082397460938,
        left: 82.7643051147461,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 143.42779541015625,
        left: 82.20508575439453,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 140.10476684570312,
        left: 81.61822509765625,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 136.7876434326172,
        left: 81.05473327636719,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 133.46385192871094,
        left: 80.48922729492188,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 130.1466064453125,
        left: 79.9014892578125,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 126.82369995117188,
        left: 79.31588745117188,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 123.5294418334961,
        left: 78.72286987304688,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 120.1886978149414,
        left: 78.13562774658203,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 116.87156677246094,
        left: 77.542236328125,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 113.554443359375,
        left: 76.94193267822266,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 110.23656463623047,
        left: 76.34087371826172,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 106.91365814208984,
        left: 75.72109985351562,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 103.60834503173828,
        left: 75.08686828613281,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 100.29649353027344,
        left: 74.49058532714844,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 96.98515319824219,
        left: 73.85171508789062,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 93.67405700683594,
        left: 73.2112045288086,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 90.36873626708984,
        left: 72.57044219970703,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 87.05689239501953,
        left: 71.92302703857422,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 83.7691650390625,
        left: 71.2671890258789,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 80.45204162597656,
        left: 70.6026840209961,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 77.14622497558594,
        left: 69.92071533203125,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 74.66007232666016,
        left: 69.39151763916016,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 173.3255157470703,
        left: 59.118003845214844,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 169.94256591796875,
        left: 59.00782012939453,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 166.5602264404297,
        left: 58.87464141845703,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 163.17739868164062,
        left: 58.78581619262695,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 159.79505920410156,
        left: 58.702518463134766,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 156.412109375,
        left: 58.61959457397461,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 153.02398681640625,
        left: 58.50978469848633,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 149.6410369873047,
        left: 58.37397003173828,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 146.2646026611328,
        left: 58.23777770996094,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 142.88177490234375,
        left: 58.119300842285156,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 139.4994354248047,
        left: 58.014015197753906,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 136.11647033691406,
        left: 57.919281005859375,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 132.73426818847656,
        left: 57.84239196777344,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 129.35130310058594,
        left: 57.80155944824219,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 125.96307373046875,
        left: 57.73647689819336,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 122.58010864257812,
        left: 57.71310806274414,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 119.19790649414062,
        left: 57.701171875,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 115.81494140625,
        left: 57.706825256347656,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 112.4327392578125,
        left: 57.724918365478516,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 109.04977416992188,
        left: 57.77781295776367,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 105.66757202148438,
        left: 57.82429885864258,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 102.27857971191406,
        left: 57.895286560058594,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 98.89562225341797,
        left: 57.99831008911133,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 95.51341247558594,
        left: 58.16704177856445,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 92.1482925415039,
        left: 58.43352508544922,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 89.6317367553711,
        left: 58.79724884033203,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 171.9070587158203,
        left: 46.23596954345703,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 73.63963317871094,
        left: 56.77294921875,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 74.85807800292969,
        left: 57.99265670776367,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 74.07258605957031,
        left: 65.27369689941406,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 73.63963317871094,
        left: 42.40824508666992,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 25.55877685546875,
        left: 22.658397674560547,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 41.36217498779297,
        left: 60.83448791503906,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 42.28335952758789,
        left: 60.94731140136719,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 23.30355453491211,
        left: 52.59758377075195,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 26.591781616210938,
        left: 56.68638610839844,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 64.3966064453125,
        left: 57.8854866027832,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 52.09402084350586,
        left: 58.217674255371094,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 38.04705810546875,
        left: 58.96146011352539,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 25.2383975982666,
        left: 52.751869201660156,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 25.22382354736328,
        left: 59.45358657836914,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 32.53778076171875,
        left: 24.788986206054688,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 36.6142692565918,
        left: 26.058820724487305,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 33.57606506347656,
        left: 88.10773468017578,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 32.92324447631836,
        left: 86.57820892333984,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),
        ]
      )
    )
      ),
        ]
      )
    )
      ),
        ]
      )
    );
        }
        }
        