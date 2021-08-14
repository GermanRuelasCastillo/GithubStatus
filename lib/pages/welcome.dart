import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:githubstatus/pages/menu.dart';
import 'package:githubstatus/pages/widgets/animation.dart';
import 'package:githubstatus/pages/widgets/themeF.dart';


class Welcome extends StatefulWidget {

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: FadeAnimation(
          1.6,Padding(
            padding:EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                SizedBox(height: 80),
                Center(
                  child: SvgPicture.asset('assets/logo.svg',height: 110),
                ),
                SizedBox(height: 40),
                Text('Welcome to Take-Home Test',style: TextStyle(fontWeight: FontWeight.bold, fontSize:20)),
                SizedBox(height: 20),
                Text('In the next view you will see a list of functions you can use with Github Api',style: TextStyle(color: AppColor.secondColor),textAlign: TextAlign.center),
                SizedBox(height: 80),

                ElevatedButton(
                  style: AppColor.primaryButton,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>Menu()));
                  },
                  child: Text('Start',style:TextStyle(fontSize:17)),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}