import 'package:flutter/material.dart';
import 'package:githubstatus/pages/welcome.dart';
import 'package:intl/date_symbol_data_local.dart';
// void main() {
//   runApp(MyApp());
// }
void main() async{
  try {
    WidgetsFlutterBinding.ensureInitialized();
  } catch (e) {
    print('catch');
  }
    Map<int, Color> color = {50: Color.fromRGBO(249,156,48, .1),100:Color.fromRGBO(249,156,48, .2),200:Color.fromRGBO(249,156,48, .3),300:Color.fromRGBO(249,156,48, .4),400:Color.fromRGBO(249,156,48, .5),500:Color.fromRGBO(249,156,48, .6),600:Color.fromRGBO(249,156,48, .7),700:Color.fromRGBO(249,156,48, .8),800:Color.fromRGBO(249,156,48, .9),900:Color.fromRGBO(249,156,48, 1)};
    MaterialColor colorCustom = MaterialColor(0xFFF99C30, color);
    initializeDateFormatting().then((_) => runApp(
      new MaterialApp(
        home: Welcome(),
        title: 'German Ruelas - Github',
      )
    ));
}
