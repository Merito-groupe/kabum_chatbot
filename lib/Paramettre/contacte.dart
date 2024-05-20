import 'package:flutter/material.dart';

class ContactezNous extends StatefulWidget {
  const ContactezNous({super.key});

  @override
  State<ContactezNous> createState() => _ContactezNousState();
}

class _ContactezNousState extends State<ContactezNous> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Contactez Nous...'),
          ),
      ) ,
    );  }
}