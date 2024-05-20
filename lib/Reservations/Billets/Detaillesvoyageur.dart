import 'package:flutter/material.dart';
import 'package:kabum_chatbot/Homepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class DetaillesVoyages extends StatefulWidget {
  const DetaillesVoyages({super.key});

  @override
  State<DetaillesVoyages> createState() => _DetaillesVoyagesState();
}

class _DetaillesVoyagesState extends State<DetaillesVoyages> {
  final datedepartController = TextEditingController();
  final lieudepartController = TextEditingController();
  final lieudestinationController = TextEditingController();
  final nombrebilletController = TextEditingController();

  final CollectionReference collection = FirebaseFirestore.instance
      .collection('DetaillesVoyages'); // Changez le nom de votre collection ici
      
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detaille Voyage'),
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

                    controller:datedepartController,
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
                      hintText: 'Date de Depart',
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

                    controller:lieudepartController,
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
                      hintText: 'Lieu de depart',
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

                    controller:lieudestinationController,
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
                      hintText: 'Lieu de destination',
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

                    controller:nombrebilletController,
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
                      hintText: 'Nombre de billets',
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
                        'Payement',
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
                              'datedepart': datedepartController.text,
                              'lieudepart':lieudepartController.text,
                              'lieudestination':lieudestinationController.text,
                              'nombrebillet':nombrebilletController.text
                              // Ajoutez d'autres champs ici si nécessaire
                            });

                            Navigator.push(
                          context,
                           MaterialPageRoute(builder: (context) => const HomePages()),
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
