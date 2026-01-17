import 'package:ecommerce_app/Components/Onboarding_Screen.dart';
import 'package:flutter/material.dart';
class PlashScreen extends StatefulWidget {
  const PlashScreen({super.key});

  @override
  State<PlashScreen> createState() => _PlashScreenState();
}

class _PlashScreenState extends State<PlashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OnboardingScreen()));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/logo/logoipsum-255 1.png"),
      ),
    );
  }
}
