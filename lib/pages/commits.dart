import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:githubstatus/pages/widgets/appbar.dart';
import 'package:githubstatus/pages/widgets/commit.dart';
import 'package:githubstatus/pages/widgets/themeF.dart';
import 'package:githubstatus/services/api.dart';

class Commits extends StatefulWidget {
  final type;
  const Commits({this.type});
  @override
  _CommitsState createState() => _CommitsState();
}

class _CommitsState extends State<Commits> {
  var commits = [];
  bool displayError = false;
  @override
  void initState() {
    super.initState();
   _getCommits();
  }
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: BaseAppBar(
        title:Text('Commits',style: TextStyle(color: AppColor.secondColor,fontWeight: FontWeight.bold)),
        appBar: AppBar(),
      ),
      body: SafeArea(
        child:
        displayError == false ? SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:EdgeInsets.only(left: 20,right: 20,top:20),
                child: Text('In this section you will see all current project commits',style: TextStyle(fontWeight: FontWeight.bold, fontSize:15),textAlign: TextAlign.center,)
              ),
              ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: commits.length,
                itemBuilder: (BuildContext context, int index){
                  return Commit(commit: commits[index]);
                }
              )
            ],
          ),
        ) : Container(
              height: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/error.jpg'),
                fit: BoxFit.fill,
              ),
            )),
      ),
    );
  }

  _getCommits() async {
    var p =this.widget.type == 'flutter' ?  await ApiGitHub().getCommits('GithubStatus', 'master') : await ApiGitHub().getCommitsNode('GithubStatus', 'master');
    var body = json.decode(p.body);
    if(p != null){
      setState(() {
        commits.addAll(body);
      });
    }else{
      setState(() {
        displayError = true;
      });
    }
  }
}