import 'package:flutter/material.dart';
import 'package:uts_mobile/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginPage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
        // make loading screen full screen
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
          Icon(
            Icons.android,
            size: 100,
          ),
          SizedBox(height: 50),
          CircularProgressIndicator()
              ],
            ),
        ));
  }
}
