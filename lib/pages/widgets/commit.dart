import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:githubstatus/pages/widgets/themeF.dart';

class Commit extends StatefulWidget {
  final commit;
  Commit({this.commit});

  @override
  _CommitState createState() => _CommitState();
}

class _CommitState extends State<Commit> {
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
                child: Padding(
                  padding:EdgeInsets.only(left: 20,right:20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/github.png'),
                          fit: BoxFit.fill,
                        ),
                      )),
                      SizedBox( height: 10 ),
                      Text( this.widget.commit['commit']['author']['name'] , style: TextStyle( color: AppColor.principalColor, fontSize: 18 ),),
                      SizedBox( height: 10 ),
                      Text(this.widget.commit['commit']['message'] != null ? this.widget.commit['commit']['message'] : '',maxLines: 4,textAlign: TextAlign.center,)
                    ],
                  ),
                )
          ),
        ),
      ),
    );
  }
}