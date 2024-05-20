import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DetailleCollis extends StatefulWidget {
  const DetailleCollis({super.key});

  @override
  State<DetailleCollis> createState() => _DetailleCollisState();
}

class _DetailleCollisState extends State<DetailleCollis> {
  final descriptioncontenuController = TextEditingController();
  final dimentionController = TextEditingController();
  final poidsController = TextEditingController();
  final valeurdeclareeController = TextEditingController();
  final optionlivraisonController = TextEditingController();
  final typeserviceController = TextEditingController();
  final assuranceController = TextEditingController();

final CollectionReference collection = FirebaseFirestore.instance
      .collection('DetailleCollis'); 

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails du Colis'),
         backgroundColor: const Color(0xFF60AA54),
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
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

                    controller:descriptioncontenuController,
                    cursorColor:  const Color(0xFF60AA54),
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
                      hintText: 'Description du contenu',
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

                    controller:dimentionController,
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
                      hintText: 'Dimensions',
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

                    controller:poidsController,
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
                      hintText: 'Poids',
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

                    controller:valeurdeclareeController,
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
                      hintText: 'Valeur déclarée',
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

                    controller:optionlivraisonController,
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
                      hintText: 'Option de Livraison',
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

                    controller:typeserviceController,
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
                      hintText: 'Type  de service',
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

                    controller:assuranceController,
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
                      hintText: 'Assurance',
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
                        'Paiement',
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
                              'description': descriptioncontenuController.text,
                              'dimention':dimentionController.text,
                              'poids':poidsController.text,
                              'valeurdeclaree':valeurdeclareeController.text,
                              'optionlivraison':optionlivraisonController.text,
                              'typeservice':typeserviceController.text,
                              'assurance':assuranceController.text,
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
