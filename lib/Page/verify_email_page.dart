import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({Key? key}) : super(key: key);

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verifikasi Email')),
      body: Column(children: [
        const Text('Verifikasi email anda'),
        TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              await user?.sendEmailVerification();
            },
            child: const Text('Kirim email verifikasi'))
      ]),
    );
  }
}
        import 'package:flutter/material.dart';
        
        
        class VerifikasiemailWidget extends StatefulWidget {
        @override
        _VerifikasiemailWidgetState createState() => _VerifikasiemailWidgetState();
        }
        
        class _VerifikasiemailWidgetState extends State<VerifikasiemailWidget> {
        @override
        Widget build(BuildContext context) {
        // Figma Flutter Generator VerifikasiemailWidget - FRAME
        
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
      color : Color.fromRGBO(34, 199, 169, 1),
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
        top: 509,
        left: 118,
        child: Text('Verifikasi E-mail', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(70, 68, 68, 1),
        fontFamily: 'Poppins',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 165,
        left: 99,
        child: Container(
      width: 242.9781494140625,
      height: 245.00021362304688,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 242.83517456054688,
        left: 9.094947017729282e-13,
        child: Container(
      width: 242.9781494140625,
      height: 0.31443700194358826,
      
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
        top: -4.547473508864641e-13,
        left: 55.545413970947266,
        child: Container(
      width: 36.35137939453125,
      height: 35.104007720947266,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0.0766015499830246,
        left: 0.029178816825151443,
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
      ),Positioned(
        top: 12.101415634155273,
        left: 9.498271942138672,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),
        ]
      )
    )
      ),Positioned(
        top: 0.10967284440994263,
        left: 54.43196105957031,
        child: Container(
      width: 137.81454467773438,
      height: 244.89053344726562,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 212.45635986328125,
        left: 0,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 224.43896484375,
        left: 7.803253650665283,
        child: Container(
      width: 2.2723946571350098,
      height: 2.2142207622528076,
      
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
        top: 228.23806762695312,
        left: 0,
        child: Container(
      width: 25.48769760131836,
      height: 16.652446746826172,
      
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
        top: 229.78004455566406,
        left: 13.6163330078125,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 232.8608856201172,
        left: 15.898571014404297,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 235.65472412109375,
        left: 18.138105392456055,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 225.85787963867188,
        left: 15.685064315795898,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 220.81163024902344,
        left: 17.069107055664062,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 221.53118896484375,
        left: 19.73581886291504,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 221.2480926513672,
        left: 92.84629821777344,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 234.33499145507812,
        left: 96.41913604736328,
        child: Container(
      width: 2.2495107650756836,
      height: 2.235978841781616,
      
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
        top: 240.7244415283203,
        left: 94.50284576416016,
        child: Container(
      width: 29.084318161010742,
      height: 2.067958354949951,
      
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
        top: 234.47962951660156,
        left: 106.17691802978516,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 235.91452026367188,
        left: 109.88508605957031,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 237.2521209716797,
        left: 113.36442565917969,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 230.9329833984375,
        left: 104.62533569335938,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 122.97221374511719,
        left: 7.5522613525390625,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 123.86112213134766,
        left: 61.391578674316406,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 129.17596435546875,
        left: 59.184478759765625,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 51.330535888671875,
        left: 125.4919204711914,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 53.447998046875,
        left: 78.69097900390625,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 60.96407699584961,
        left: 125.1050033569336,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 4.350316524505615,
        left: 59.899803161621094,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 39.54074478149414,
        left: 67.19031524658203,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 20.45848274230957,
        left: 68.79927825927734,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 22.36048126220703,
        left: 69.69258117675781,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 20.076126098632812,
        left: 75.8006591796875,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 15.304664611816406,
        left: 68.03358459472656,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 17.82012939453125,
        left: 79.62682342529297,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 23.19755744934082,
        left: 55.20527267456055,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 24.880836486816406,
        left: 56.53618240356445,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 30.44341278076172,
        left: 72.55177307128906,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 21.105846405029297,
        left: 79.50605010986328,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 22.910709381103516,
        left: 80.32259368896484,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 0,
        left: 52.789878845214844,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 6.320443153381348,
        left: 56.257972717285156,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 2.334554433822632,
        left: 67.4844970703125,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 10.822332382202148,
        left: 82.60320281982422,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 47.624977111816406,
        left: 70.32250213623047,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 42.146827697753906,
        left: 38.862083435058594,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 62.20339584350586,
        left: 81.18232727050781,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 99.77140045166016,
        left: 41.15345001220703,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 44.679893493652344,
        left: 0.3205856382846832,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 91.5300521850586,
        left: 5.808027267456055,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 95.02471160888672,
        left: 1.1066479682922363,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 84.90189361572266,
        left: 58.75339126586914,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 46.74813461303711,
        left: 75.64957427978516,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 54.18598175048828,
        left: 101.36585235595703,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 45.26695251464844,
        left: 91.5582504272461,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 50.38850021362305,
        left: 87.26513671875,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 56.525753021240234,
        left: 74.4876708984375,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 76.37076568603516,
        left: 61.42792510986328,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 89.1655044555664,
        left: 6.742077350616455,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 52.6976318359375,
        left: 101.28730010986328,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 45.81033706665039,
        left: 101.09384155273438,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 69.82833862304688,
        left: 46.256744384765625,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 92.79348754882812,
        left: 64.82610321044922,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 74.01274108886719,
        left: 31.000484466552734,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 50.14011764526367,
        left: 30.862112045288086,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 50.66654968261719,
        left: 40.64429473876953,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 68.26828002929688,
        left: 30.862112045288086,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 53.1256217956543,
        left: 126.00971221923828,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 52.97958755493164,
        left: 125.87770080566406,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 56.2894287109375,
        left: 127.9166030883789,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 59.863624572753906,
        left: 130.10562133789062,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 62.690711975097656,
        left: 134.005126953125,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),Positioned(
        top: 63.52485275268555,
        left: 134.15670776367188,
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
      ),Positioned(
        top: 550,
        left: 65,
        child: Text('Email verifikasi telah dikirim! Jika belum mendapatkan e-mail, silahkan klik link di bawah ini untuk mengirimkannya kembali.', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Poppins',
        fontSize: 11,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 696,
        left: 50,
        child: Container(
      width: 339,
      height: 55,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 339,
        height: 55,
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
      color : Color.fromRGBO(217, 217, 217, 1),
  )
      )
      ),Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 170,
        height: 55,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(0),
          ),
      color : Color.fromRGBO(223, 180, 151, 1),
  )
      )
      ),Positioned(
        top: 13,
        left: 50,
        child: Text('Restart', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Outfit',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 13,
        left: 208,
        child: Text('Kirim lagi', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(32, 35, 34, 1),
        fontFamily: 'Outfit',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
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
        