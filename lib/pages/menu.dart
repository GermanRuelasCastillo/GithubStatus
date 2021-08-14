import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:githubstatus/pages/widgets/appbar.dart';
import 'package:githubstatus/pages/widgets/themeF.dart';

class Menu extends StatefulWidget {

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title:Text('GitHub Actions',style: TextStyle(color: AppColor.secondColor,fontWeight: FontWeight.bold)),
        appBar: AppBar(),
      ),
      body: SafeArea(
        child:Column(
          children:[
            Table(
              children: [
                TableRow(
                  children: [
                    _SigleCard( color: AppColor.principalColor, icon: Icons.list,text: 'Repositories' ),
                    _SigleCard( color: AppColor.thirdColor, icon: Icons.upload, text: 'Commits' ),
                  ]
                ),
              ],
            )
          ]
        )
      ),
    );
  }
}

class _SigleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard({
    Key key,
     this.icon,
     this.color,
     this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

      return _CardBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: this.color,
              child: Icon( this.icon, size: 35, color: Colors.white, ),
              radius: 30,
            ),
            SizedBox( height: 10 ),
            Text( this.text , style: TextStyle( color: this.color, fontSize: 18 ),)
          ],
        )
      );
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({
    Key key,
     this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5 ),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 173, 239, 0.07),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: this.child,
          ),
        ),
      ),
    );
  }
}