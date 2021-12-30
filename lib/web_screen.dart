import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  _WebScreenState createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Image.asset("assets/images/mor.jpg",width: MediaQuery.of(context).size.width * 0.30,),
            Container(
              //height: 50,
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width * 0.30,
              decoration: const  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                image: DecorationImage(
                  image: AssetImage("assets/images/mor.png"),
                  fit: BoxFit.fill
                ),
                boxShadow: [BoxShadow(color: Color(0xffCD020D),offset: Offset(0,3),blurRadius: 3.0)]
              ),

            ),
            const SizedBox(height: 20.0,),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: (){
                launch("https://app.meltwater.com/login");
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.20,
                decoration: BoxDecoration(
                    color: Color(0xffCD020D),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))
                ),
                child: Center(
                  child: Text("Click Here to Login",textScaleFactor: 1.0,style: TextStyle(fontSize: 20,color: Colors.white,letterSpacing: 1.0,fontWeight: FontWeight.w600),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
