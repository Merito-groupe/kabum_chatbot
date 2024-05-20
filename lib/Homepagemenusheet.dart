import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kabum_chatbot/Paramettre/Paramettre.dart';
import 'package:kabum_chatbot/Reservations/Billets/InfoVoyageur.dart';
import 'package:kabum_chatbot/Reservations/Collis/InfoExpediteur.dart';

class HomeMenuSheet extends StatefulWidget {
  const HomeMenuSheet({super.key});

  @override
  State<HomeMenuSheet> createState() => _HomeMenuSheetState();
}

class _HomeMenuSheetState extends State<HomeMenuSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 68, 16, 66),
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            // Text('About'),
            Card(
              color: Color(0xFF60AA54),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InforVoyageur()),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.airplanemode_active,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ), // Icône pour 'Réservation Billets'
                  title: Text(
                    'Réservation Billets',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color: Color(0xFF60AA54),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InfomationExpediteur()),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.local_shipping,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  title: Text(
                    'Réservation Colis',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color: Color(0xFF60AA54),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Parametre()),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ), // Icône pour 'Paramètres'
                  title: Text(
                    'Paramètres',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color: Color(0xFF60AA54),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InfomationExpediteur()),
                  );
                },
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
