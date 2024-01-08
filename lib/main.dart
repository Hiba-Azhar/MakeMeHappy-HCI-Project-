import 'package:flutter/material.dart';

import 'package:helloflutter/app_screens/firstscreen.dart';

void main() => runApp(HappySoul());

class HappySoul extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Scaffold(body: FirstScreen()));
  }
}
