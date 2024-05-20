import 'package:flutter/material.dart';
import 'package:kabum_chatbot/Reservations/Collis/InfoDestinataire.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class InfomationExpediteur extends StatefulWidget {
  const InfomationExpediteur({super.key});

  @override
  State<InfomationExpediteur> createState() => _InfomationExpediteurState();
}

class _InfomationExpediteurState extends State<InfomationExpediteur> {
  final nomcompletController = TextEditingController();
  final adresseController = TextEditingController();
  final villeController = TextEditingController();
  final codepostalController = TextEditingController();
  final paysController = TextEditingController();
  final numtelController = TextEditingController();
  final adressemailController = TextEditingController();

final CollectionReference collection = FirebaseFirestore.instance
      .collection('InfomationExpediteur'); // Changez le nom de votre collection ici

  
  @override
     Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information sur l’expéditaire'),
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

                    controller:nomcompletController,
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

                    controller:adresseController,
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

                    controller:villeController,
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

                    controller:codepostalController,
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

                    controller:paysController,
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

                    controller:numtelController,
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

                    controller:adressemailController,
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
                        'Ajouter un déstinataire',
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
                              'nomcomplet': nomcompletController.text,
                              'adresse':adresseController.text,
                              'ville':villeController.text,
                              'codepostal':codepostalController.text,
                              'pays':paysController.text,
                              'numtel':numtelController.text,
                              'adressemail':adressemailController.text
                              // Ajoutez d'autres champs ici si nécessaire
                            });

                            Navigator.push(
                          context,
                           MaterialPageRoute(builder: (context) => InfomationDestinataire()),
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
