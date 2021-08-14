import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:githubstatus/pages/widgets/themeF.dart';

class Repository extends StatefulWidget {
  final repository;
  Repository({this.repository});

  @override
  _RepositoryState createState() => _RepositoryState();
}

class _RepositoryState extends State<Repository> {
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeInImage.assetNetwork(image:this.widget.repository['owner']['avatar_url'],placeholder:'assets/github.png',height: 30,),
                    SizedBox( height: 10 ),
                    Text( this.widget.repository['full_name'] , style: TextStyle( color: AppColor.principalColor, fontSize: 18 ),),
                    SizedBox( height: 10 ),
                    Text(this.widget.repository['description'] != null ? this.widget.repository['description'] : '',maxLines: 3,)
                  ],
                )
          ),
        ),
      ),
    );
  }
}