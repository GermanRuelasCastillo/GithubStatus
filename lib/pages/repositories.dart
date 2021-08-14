import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:githubstatus/pages/widgets/appbar.dart';
import 'package:githubstatus/pages/widgets/repository.dart';
import 'package:githubstatus/pages/widgets/themeF.dart';
import 'package:githubstatus/services/api.dart';

class Repositories extends StatefulWidget {
  @override
  _RepositoriesState createState() => _RepositoriesState();
}

class _RepositoriesState extends State<Repositories> {
  var repositories = [];
  @override
  void initState() {
    super.initState();
   _getRepositories();
  }
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: BaseAppBar(
        title:Text('Repositories',style: TextStyle(color: AppColor.secondColor,fontWeight: FontWeight.bold)),
        appBar: AppBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:EdgeInsets.only(left: 20,right: 20,top:20),
                child: Text('In this section you will see all public repositories of GermanRuelasCastillo',style: TextStyle(fontWeight: FontWeight.bold, fontSize:15),textAlign: TextAlign.center,)
              ),
              ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: repositories.length,
                itemBuilder: (BuildContext context, int index){
                  return Repository(repository: repositories[index]);
                }
              )
            ],
          ),
        ),
      ),
    );
  }



  _getRepositories() async {
    var p = await ApiGitHub().getRepos();
    var body = json.decode(p.body);
    setState(() {
      repositories.addAll(body);
    });
  }
}