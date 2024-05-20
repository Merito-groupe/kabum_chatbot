import 'package:flutter/material.dart';

class Deconnexion extends StatefulWidget {
  const Deconnexion({super.key});

  @override
  State<Deconnexion> createState() => _DeconnexionState();
}

class _DeconnexionState extends State<Deconnexion> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
      body: Center(
        child: Container(
          child: Text('Deconnexion...'),
          ),
      ) ,
    );  }
}