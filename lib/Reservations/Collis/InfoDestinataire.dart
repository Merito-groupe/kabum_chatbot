import 'package:flutter/material.dart';
import 'package:kabum_chatbot/Reservations/Collis/DetailsColis.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InfomationDestinataire extends StatefulWidget {
  const InfomationDestinataire({super.key});

  @override
  State<InfomationDestinataire> createState() => _InfomationDestinataireState();
}

class _InfomationDestinataireState extends State<InfomationDestinataire> {
  final nomcompletDController = TextEditingController();
  final adresseDController = TextEditingController();
  final villeDController = TextEditingController();
  final codepostalDController = TextEditingController();
  final paysDController = TextEditingController();
  final numtelDController = TextEditingController();
  final adressemailDController = TextEditingController();

final CollectionReference collection = FirebaseFirestore.instance
      .collection('InfomationDestinataire'); // Changez le nom de votre collection ici
  
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information sur destinataire'),
         backgroundColor: Color(0xFF60AA54),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: TextFormField(

                     controller:nomcompletDController,
                    cursorColor:  Color(0xFF60AA54),
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(0, 203, 203, 203),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 83, 83, 83), // Ajoutez la couleur de la bordure ici
                          width: 2, // Ajoutez la largeur de la bordure ici
                          style: BorderStyle
                              .solid, // Changez le style de la bordure ici
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      hintText: 'Nom complet',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                      ),
                    ),
                    // onSaved: (value) => _adresseMail = value!,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Remplis correctement les informations';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: TextFormField(

                    controller:adresseDController,
                    cursorColor:  Color(0xFF60AA54),
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(0, 203, 203, 203),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 83, 83, 83), // Ajoutez la couleur de la bordure ici
                          width: 2, // Ajoutez la largeur de la bordure ici
                          style: BorderStyle
                              .solid, // Changez le style de la bordure ici
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      hintText: 'Adresse',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                      ),
                    ),
                    // onSaved: (value) => _adresseMail = value!,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Remplis correctement les informations';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: TextFormField(

                    controller:villeDController,
                    cursorColor:  Color(0xFF60AA54),
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(0, 203, 203, 203),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 83, 83, 83), // Ajoutez la couleur de la bordure ici
                          width: 2, // Ajoutez la largeur de la bordure ici
                          style: BorderStyle
                              .solid, // Changez le style de la bordure ici
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      hintText: 'Ville',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                      ),
                    ),
                    // onSaved: (value) => _adresseMail = value!,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Remplis correctement les informations';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: TextFormField(

                    controller:codepostalDController,
                    cursorColor:  Color(0xFF60AA54),
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(0, 203, 203, 203),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 83, 83, 83), // Ajoutez la couleur de la bordure ici
                          width: 2, // Ajoutez la largeur de la bordure ici
                          style: BorderStyle
                              .solid, // Changez le style de la bordure ici
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      hintText: 'Code postal',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                      ),
                    ),
                    // onSaved: (value) => _adresseMail = value!,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Remplis correctement les informations';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: TextFormField(

                    controller:paysDController,
                    cursorColor:  Color(0xFF60AA54),
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(0, 203, 203, 203),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 83, 83, 83), // Ajoutez la couleur de la bordure ici
                          width: 2, // Ajoutez la largeur de la bordure ici
                          style: BorderStyle
                              .solid, // Changez le style de la bordure ici
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      hintText: 'Pays',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                      ),
                    ),
                    // onSaved: (value) => _adresseMail = value!,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Remplis correctement les informations';
                      }
                      return null;
                    },
                  ),
                ),
               Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: TextFormField(
                    
                    controller:numtelDController,
                    cursorColor:  Color(0xFF60AA54),
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(0, 203, 203, 203),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 83, 83, 83), // Ajoutez la couleur de la bordure ici
                          width: 2, // Ajoutez la largeur de la bordure ici
                          style: BorderStyle
                              .solid, // Changez le style de la bordure ici
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      hintText: 'Numéro Téléphone',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                      ),
                    ),
                    // onSaved: (value) => _adresseMail = value!,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Remplis correctement les informations';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: TextFormField(

                    controller:adressemailDController,
                    cursorColor:  Color(0xFF60AA54),
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(0, 203, 203, 203),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 83, 83, 83), // Ajoutez la couleur de la bordure ici
                          width: 2, // Ajoutez la largeur de la bordure ici
                          style: BorderStyle
                              .solid, // Changez le style de la bordure ici
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      hintText: 'Adresse e-mail',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                      ),
                    ),
                    // onSaved: (value) => _adresseMail = value!,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Remplis correctement les informations';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: SizedBox(
                    width: 350,
                    height: 50,
                    child: ElevatedButton(
                      child: Text(
                        'Détailles colis',
                        style: TextStyle(
                          color: Colors.white, // Couleur du texte
                          fontSize: 16, // Taille du texte
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>( Color(0xFF60AA54), // Nouvelle couleur de fond
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                5), // Nouveau rayon du coin arrondi
                          ),
                        ),
                        elevation: MaterialStateProperty.all<double>(
                            5), // Ombre du bouton
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(
                                12)), // Padding à l'intérieur du bouton
                      ),
                       onPressed: () async {
                            // Ajoutez les données à la collection
                            await collection.add({
                              'nomcomplet': nomcompletDController.text,
                              'adresse':adresseDController.text,
                              'ville':villeDController.text,
                              'codepostal':codepostalDController.text,
                              'pays':paysDController.text,
                              'numtel':numtelDController.text,
                              'adressemail':adressemailDController.text
                              // Ajoutez d'autres champs ici si nécessaire
                            });

                            Navigator.push(
                          context,
                           MaterialPageRoute(builder: (context) => DetailleCollis()),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
