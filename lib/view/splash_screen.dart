import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mymath/view/home.dart';

class MysplashPage extends StatefulWidget {
  const MysplashPage({super.key});

  @override
  State<MysplashPage> createState() => _MysplashPageState();
}

class _MysplashPageState extends State<MysplashPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MyHome()));
    });
  }

  @override
  void dispose() {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive,
    //     overlays: SystemUiOverlay.values);
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.indigo, Colors.blue])),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome !",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset(
              'assets/images/hh.png',
              height: 250,
              width: 250,
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator(
              color: Colors.white,
            )
          ],
        )),
      ),
    );
  }
}
