import 'package:http/http.dart' as http;

class ApiGitHub{
  final String _url = 'https://api.github.com/';
  final String _urlNode = 'http://192.168.0.7:3000/api/';

  getRepos() async{
    const url = 'users/GermanRuelasCastillo/repos';
    try {
      return await http.get(Uri.parse(_url + url));
    } catch (e) {
      return null;
    }
  }

  getCommits(String project,String branch) async{
    final url = 'repos/GermanRuelasCastillo/'+project+'/commits?sha='+branch;
    try {
      return await http.get(Uri.parse(_url + url));
    } catch (e) {
      return null;
    }
  }

  // Reques with NODE + EXPRESS + TYPESCRIPT
  // TODO: could implement a conditional in only two functions, but for test reasons will be in four functions

  getReposNode() async{
    const url = 'getRepos';
    try {
      return await http.get(Uri.parse(_urlNode + url));
    } catch (e) {
      return null;
    }

  }

  getCommitsNode(String project,String branch) async{
    final url = 'getCommits/'+project+'/'+branch;
    try {
      return await http.get(Uri.parse(_urlNode + url));
    } catch (e) {
      return null;
    }
  }

}