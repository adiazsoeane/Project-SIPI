import 'package:flutter/material.dart';
import 'package:sipi/gui/deslizable.dart';
import 'package:sipi/gui/principal.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey[900],
        scaffoldBackgroundColor: Colors.blueGrey[900],
        colorScheme: ColorScheme.dark(
          secondary: Colors.blueAccent, 
        ),
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Principal(),
        drawer: Delizable()
      ),
    );
  }
}
