import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_aspk_tembakau/constants/route.dart';

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
      appBar: AppBar(title: const Text('Register')),
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
                final userCredential =
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: email,
                  password: password,
                );
                print(userCredential);
              } on FirebaseAuthException catch (e) {
                print("Terjadi kesalahan....");
              }
            },
            child: const Text('Register'),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  loginRoute,
                  (route) => false,
                );
              },
              child: const Text("Login disini!"))
        ],
      ),
    );
  }
}
        import 'package:flutter/material.dart';
        
        
        class RegisterWidget extends StatefulWidget {
        @override
        _RegisterWidgetState createState() => _RegisterWidgetState();
        }
        
        class _RegisterWidgetState extends State<RegisterWidget> {
        @override
        Widget build(BuildContext context) {
        // Figma Flutter Generator RegisterWidget - FRAME
        
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
        top: 577,
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
        top: 714,
        left: 300,
        child: Text('Login disini!', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(44, 38, 38, 1),
        fontFamily: 'Poppins',
        fontSize: 15,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 714,
        left: 300,
        child: Text('Login disini!', textAlign: TextAlign.left, style: TextStyle(
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
        left: 111,
        child: Text('Register', textAlign: TextAlign.center, style: TextStyle(
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
        top: 158.20457458496094,
        left: 46,
        child: Container(
      width: 342,
      height: 251.66004943847656,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 222.5211944580078,
        left: 0,
        child: Container(
      width: 342,
      height: 29.138856887817383,
      
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
        top: 0,
        left: 109.34748077392578,
        child: Container(
      width: 116.9786148071289,
      height: 251.4485321044922,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 231.6083984375,
        left: 0.017622515559196472,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 237.15750122070312,
        left: 0.10590818524360657,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 240.2539520263672,
        left: 0.017622515559196472,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 240.14810180664062,
        left: 0.000068639412347693,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 247.69007873535156,
        left: 15.200176239013672,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 244.72657775878906,
        left: 12.764575958251953,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 244.08688354492188,
        left: 12.112242698669434,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 242.953369140625,
        left: 12.121536254882812,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 242.08523559570312,
        left: 12.33295726776123,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 244.14599609375,
        left: 13.700352668762207,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 242.87747192382812,
        left: 13.450984001159668,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 237.1218719482422,
        left: 1.9498395919799805,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 233.05531311035156,
        left: 3.105039596557617,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 242.35189819335938,
        left: 6.254669666290283,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 241.126220703125,
        left: 4.03462028503418,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 239.60935974121094,
        left: 3.730009078979492,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 238.45364379882812,
        left: 2.805849075317383,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 237.76722717285156,
        left: 2.073232889175415,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 118.44063568115234,
        left: 0.07931922376155853,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 229.57913208007812,
        left: 2.646831750869751,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 135.8019256591797,
        left: 37.16704559326172,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 234.37855529785156,
        left: 91.6160659790039,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 245.75064086914062,
        left: 94.84468841552734,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 238.16452026367188,
        left: 96.65325927734375,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 238.27784729003906,
        left: 96.4942398071289,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 238.53366088867188,
        left: 111.30377197265625,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 239.9539794921875,
        left: 107.31491088867188,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 240.2539520263672,
        left: 106.18836975097656,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 239.9008026123047,
        left: 104.99806213378906,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 239.27479553222656,
        left: 104.3547592163086,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 237.9776153564453,
        left: 107.18584442138672,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 238.8999786376953,
        left: 105.75494384765625,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 245.4612579345703,
        left: 94.90483856201172,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 241.15383911132812,
        left: 93.23902893066406,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 243.43869018554688,
        left: 101.54020690917969,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 246.66162109375,
        left: 99.33486938476562,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 246.11952209472656,
        left: 97.90603637695312,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 246.12933349609375,
        left: 96.4446792602539,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 246.5637969970703,
        left: 95.47920989990234,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 97.10957336425781,
        left: 21.851287841796875,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 153.6051788330078,
        left: 55.701873779296875,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 157.8924560546875,
        left: 59.371665954589844,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 157.8924560546875,
        left: 59.36262893676758,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 135.22885131835938,
        left: 35.48213195800781,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 231.70030212402344,
        left: 89.1097412109375,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 31.321264266967773,
        left: 22.941951751708984,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 31.924291610717773,
        left: 28.106922149658203,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 52.42824935913086,
        left: 90.36302947998047,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 38.19618606567383,
        left: 53.20844650268555,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 38.19670486450195,
        left: 53.20819091796875,
        child: Container(
      width: 45.33271026611328,
      height: 61.08272171020508,
      
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
        top: 45.46555709838867,
        left: 60.69517517089844,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 45.46555709838867,
        left: 60.69517517089844,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 74.04016876220703,
        left: 71.51326751708984,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 64.42374420166016,
        left: 87.97261047363281,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 49.04706573486328,
        left: 62.16841125488281,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 53.087554931640625,
        left: 62.47715377807617,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 37.50693893432617,
        left: 22.379968643188477,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 38.28447341918945,
        left: 17.944002151489258,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 118.08078002929688,
        left: 26.227882385253906,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 100.45256042480469,
        left: 45.64479064941406,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 120.77632904052734,
        left: 48.02463150024414,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 103.70673370361328,
        left: 47.00031280517578,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 39.29020690917969,
        left: 40.416316986083984,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 37.746498107910156,
        left: 26.99173355102539,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 41.18654251098633,
        left: 68.03501892089844,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 46.40985107421875,
        left: 69.26998901367188,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 58.945899963378906,
        left: 65.69673919677734,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 45.17591857910156,
        left: 21.47671890258789,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 69.93772888183594,
        left: 21.466135025024414,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 48.170921325683594,
        left: 28.583457946777344,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 62.27132797241211,
        left: 62.829776763916016,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 83.03807830810547,
        left: 38.61368942260742,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 83.03807830810547,
        left: 36.40809631347656,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 58.78636932373047,
        left: 66.85245513916016,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 40.392486572265625,
        left: 91.6865463256836,
        child: Container(
      width: 25.29213523864746,
      height: 211.0560302734375,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: -0.0000907841749722138,
        left: 3.1049907207489014,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 145.49107360839844,
        left: 21.116300582885742,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 21.066625595092773,
        left: 0.00001989193697227165,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 33.44417190551758,
        left: 9.192571640014648,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 59.706321716308594,
        left: 17.859539031982422,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 98.35530853271484,
        left: 16.338289260864258,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 108.67698669433594,
        left: 16.381399154663086,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 132.9994354248047,
        left: 17.44521713256836,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 179.62330627441406,
        left: 21.499387741088867,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 15.147355079650879,
        left: 5.910771369934082,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 6.537178993225098,
        left: 4.190491676330566,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),
        ]
      )
    )
      ),Positioned(
        top: 57.57721710205078,
        left: 101.3117446899414,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 60.23301315307617,
        left: 102.21060943603516,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 63.92036056518555,
        left: 103.38465118408203,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 13.362099647521973,
        left: 36.18118667602539,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 8.746979713439941,
        left: 41.56016159057617,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 18.586442947387695,
        left: 59.447044372558594,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 17.46092987060547,
        left: 58.44440841674805,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 19.23490333557129,
        left: 51.47629165649414,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 18.125396728515625,
        left: 50.41454315185547,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 18.559080123901367,
        left: 55.675540924072266,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 25.72673988342285,
        left: 53.58688735961914,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 32.0734977722168,
        left: 49.55259323120117,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 18.395931243896484,
        left: 38.118568420410156,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 20.015018463134766,
        left: 39.262149810791016,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: -0.000013426958503259812,
        left: 32.79896926879883,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 8.880699157714844,
        left: 31.229703903198242,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 10.151289939880371,
        left: 36.750396728515625,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 8.633912086486816,
        left: 39.05150604248047,
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
        