import 'package:flutter/material.dart';

class TableadeBord extends StatefulWidget {
  const TableadeBord({super.key});

  @override
  State<TableadeBord> createState() => _TableadeBordState();
}

class _TableadeBordState extends State<TableadeBord> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
      body: Center(
        child: Container(
          child: Text(' Tableau de Bord'),
          ),
      ) ,
    );  }
}