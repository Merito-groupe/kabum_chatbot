import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kabum_chatbot/Paramettre/Apropodens.dart';
import 'package:kabum_chatbot/Paramettre/Deconnexion.dart';
import 'package:kabum_chatbot/Paramettre/SuivieRes.dart';
import 'package:kabum_chatbot/Paramettre/TableauBord.dart';
import 'package:kabum_chatbot/Paramettre/contacte.dart';

class Parametre extends StatefulWidget {
  const Parametre({super.key});

  @override
  State<Parametre> createState() => _ParametreState();
}

class _ParametreState extends State<Parametre> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parametre'),
        backgroundColor: Color(0xFF60AA54),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16,18, 16, 66),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  
                  Card(
                    color: Color(0xFF60AA54),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SuivieReservation()),
                        );
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.schedule,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ), // Icône pour 'Réservation Billets'
                        title: Text(
                          'Suivi de réservations',
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
                              builder: (context) => const TableadeBord()),
                        );
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.dashboard,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        title: Text(
                          'Tableau de bord',
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
                              builder: (context) => const ContactezNous()),
                        );
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.contact_mail,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        title: Text(
                          'Contactez-nous',
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
                              builder: (context) => const Aproposdenous()),
                        );
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.info,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        title: Text(
                          'A propos de nous ',
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
                              builder: (context) => const Deconnexion()),
                        );
                      },
                      child: ListTile(
                        leading: Icon(
                           Icons.logout,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        title: Text(
                          'Déconnexion',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
