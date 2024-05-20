import 'package:flutter/material.dart';

class SuivieReservation extends StatefulWidget {
  const SuivieReservation({super.key});

  @override
  State<SuivieReservation> createState() => _SuivieReservationState();
}

class _SuivieReservationState extends State<SuivieReservation> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Center(
        child: Container(
          child: Text('Suivie Réservation'),
          ),
      ) ,
    );
  }
}