import 'package:flutter/material.dart';

class Aproposdenous extends StatefulWidget {
  const Aproposdenous({super.key});

  @override
  State<Aproposdenous> createState() => _AproposdenousState();
}

class _AproposdenousState extends State<Aproposdenous> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
      body: Center(
        child: Container(
          child: Text('Apropos de nous'),
          ),
      ) ,
    );  }
}