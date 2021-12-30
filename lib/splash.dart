import 'package:flutter/material.dart';
import 'package:mor/web_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Image.asset("assets/images/mor.jpg",width: MediaQuery.of(context).size.width * 0.80,),
        ),
      )
      ,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,MaterialPageRoute<void>(
        builder: (BuildContext context) => MyHomePage(title: "ss",),
      ),);
    });
    super.initState();
  }
}
