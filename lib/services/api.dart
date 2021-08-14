import 'package:http/http.dart' as http;

class ApiGitHub{
  final String _url = 'https://api.github.com/';

  getRepos() async{
    final url = 'users/GermanRuelasCastillo/repos';
    return await http.get(Uri.parse(_url + url));
  }

  getMasterBranch(String project) async{

  }

  getCommits(String project,String branch) async{

    final url = 'repos/GermanRuelasCastillo/'+project+'/commits?sha='+branch;
    return await http.get(Uri.parse(_url + url));
  }
}