import 'package:http/http.dart' as http;

class Api{
  final String _url = 'https://api.github.com/';

  getUsers() async{
    final url = 'users/GermanRuelasCastillo/repos';
    return await http.get(Uri.parse(_url + url));
  }
}