import 'package:chowie/view/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Color(0xFF072FD4)
));
  runApp(App());
  }

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CHOWie',
      theme: ThemeData(
        primaryColor: Color(0xFF072FD4),
      ),
      home: MainScreen(),
    );
  }
}