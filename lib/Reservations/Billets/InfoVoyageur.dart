// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:kabum_chatbot/Reservations/Billets/Detaillesvoyageur.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class InforVoyageur extends StatefulWidget {
//   const InforVoyageur({super.key});

//   @override
//   State<InforVoyageur> createState() => _InforVoyageurState();
// }

// class _InforVoyageurState extends State<InforVoyageur> {
//   final nomcompletController = TextEditingController();
//   final telephoneController = TextEditingController();
//   final adresseController = TextEditingController();
//   final nationaliteController = TextEditingController();

//   final CollectionReference collection = FirebaseFirestore.instance.collection('nom_de_votre_collection'); // Définissez votre collection ici

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Information Voyageur'),
//         backgroundColor: Color(0xFF60AA54),
//       ),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: collection.snapshots(),
//         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (snapshot.hasError) {
//             return Text('Une erreur est survenue');
//           }

//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Text("Chargement...");
//           }
//  return  Container(
//                 color: Color.fromARGB(255, 255, 255, 255),
//                 child: SingleChildScrollView(
//                   child: Form(
//                     child: Column(
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 25,
//                             vertical: 10,
//                           ),
//                           child: TextFormField(
//                             controller: nomcompletController,
//                             cursorColor: Color(0xFF60AA54),
//                             decoration: InputDecoration(
//                               fillColor: Color.fromARGB(0, 203, 203, 203),
//                               filled: true,
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: const BorderSide(
//                                   color: Color.fromARGB(255, 83, 83,
//                                       83), // Ajoutez la couleur de la bordure ici
//                                   width: 2, // Ajoutez la largeur de la bordure ici
//                                   style: BorderStyle
//                                       .solid, // Changez le style de la bordure ici
//                                 ),
//                               ),
//                               contentPadding: const EdgeInsets.symmetric(
//                                 horizontal: 20,
//                                 vertical: 10,
//                               ),
//                               hintText: 'Nom complet',
//                               hintStyle: TextStyle(
//                                 fontSize: 14,
//                                 color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
//                               ),
//                             ),
//                             // onSaved: (value) => _adresseMail = value!,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Remplis correctement les informations';
//                               }
//                               return null;
//                             },
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 25,
//                             vertical: 10,
//                           ),
//                           child: TextFormField(
//                             controller: telephoneController,
//                             cursorColor: Color(0xFF60AA54),
//                             decoration: InputDecoration(
//                               fillColor: Color.fromARGB(0, 203, 203, 203),
//                               filled: true,
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: const BorderSide(
//                                   color: Color.fromARGB(255, 83, 83,
//                                       83), // Ajoutez la couleur de la bordure ici
//                                   width: 2, // Ajoutez la largeur de la bordure ici
//                                   style: BorderStyle
//                                       .solid, // Changez le style de la bordure ici
//                                 ),
//                               ),
//                               contentPadding: const EdgeInsets.symmetric(
//                                 horizontal: 20,
//                                 vertical: 10,
//                               ),
//                               hintText: 'Numéro de téléphone',
//                               hintStyle: TextStyle(
//                                 fontSize: 14,
//                                 color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
//                               ),
//                             ),
//                             // onSaved: (value) => _adresseMail = value!,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Remplis correctement les informations';
//                               }
//                               return null;
//                             },
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 25,
//                             vertical: 10,
//                           ),
//                           child: TextFormField(
//                             controller: adresseController,
//                             cursorColor: Color(0xFF60AA54),
//                             decoration: InputDecoration(
//                               fillColor: Color.fromARGB(0, 203, 203, 203),
//                               filled: true,
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: const BorderSide(
//                                   color: Color.fromARGB(255, 83, 83,
//                                       83), // Ajoutez la couleur de la bordure ici
//                                   width: 2, // Ajoutez la largeur de la bordure ici
//                                   style: BorderStyle
//                                       .solid, // Changez le style de la bordure ici
//                                 ),
//                               ),
//                               contentPadding: const EdgeInsets.symmetric(
//                                 horizontal: 20,
//                                 vertical: 10,
//                               ),
//                               hintText: 'Adresse e-mail',
//                               hintStyle: TextStyle(
//                                 fontSize: 14,
//                                 color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
//                               ),
//                             ),
//                             // onSaved: (value) => _adresseMail = value!,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Remplis correctement les informations';
//                               }
//                               return null;
//                             },
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 25,
//                             vertical: 10,
//                           ),
//                           child: TextFormField(

//                             controller:nationaliteController,
//                             cursorColor: Color(0xFF60AA54),
//                             decoration: InputDecoration(
//                               fillColor: Color.fromARGB(0, 203, 203, 203),
//                               filled: true,
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: const BorderSide(
//                                   color: Color.fromARGB(255, 83, 83,
//                                       83), // Ajoutez la couleur de la bordure ici
//                                   width: 2, // Ajoutez la largeur de la bordure ici
//                                   style: BorderStyle
//                                       .solid, // Changez le style de la bordure ici
//                                 ),
//                               ),
//                               contentPadding: const EdgeInsets.symmetric(
//                                 horizontal: 20,
//                                 vertical: 10,
//                               ),
//                               hintText: 'Nationalité',
//                               hintStyle: TextStyle(
//                                 fontSize: 14,
//                                 color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
//                               ),
//                             ),
//                             // onSaved: (value) => _adresseMail = value!,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Remplis correctement les informations';
//                               }
//                               return null;
//                             },
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 25,
//                             vertical: 10,
//                           ),
//                           child: SizedBox(
//                             width: 350,
//                             height: 50,
//                             child: ElevatedButton(
//                               child: Text(
//                                 'Details Voyage',
//                                 style: TextStyle(
//                                   color: Colors.white, // Couleur du texte
//                                   fontSize: 16, // Taille du texte
//                                 ),
//                               ),
//                               style: ButtonStyle(
//                                 backgroundColor: MaterialStateProperty.all<Color>(
//                                   Color(0xFF60AA54), // Nouvelle couleur de fond
//                                 ),
//                                 shape:
//                                     MaterialStateProperty.all<RoundedRectangleBorder>(
//                                   RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(
//                                         5), // Nouveau rayon du coin arrondi
//                                   ),
//                                 ),
//                                 elevation: MaterialStateProperty.all<double>(
//                                     5), // Ombre du bouton
//                                 padding: MaterialStateProperty.all<EdgeInsets>(
//                                     EdgeInsets.all(
//                                         12)), // Padding à l'intérieur du bouton
//                               ),
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => DetaillesVoyages()),
//                                 );
//                               },
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//           // Ici, vous devez retourner le widget qui doit être affiché une fois les données chargées.
//           // Par exemple, vous pouvez retourner un ListView pour afficher les documents de votre collection.

//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:kabum_chatbot/Reservations/Billets/Detaillesvoyageur.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class InforVoyageur extends StatefulWidget {
//   const InforVoyageur({super.key});

//   @override
//   State<InforVoyageur> createState() => _InforVoyageurState();
// }

// class _InforVoyageurState extends State<InforVoyageur> {
//   final nomcompletController = TextEditingController();
//   final telephoneController = TextEditingController();
//   final adresseController = TextEditingController();
//   final nationaliteController = TextEditingController();

//   final CollectionReference collection = FirebaseFirestore.instance.collection('nom_de_votre_collection'); // Définissez votre collection ici

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Information Voyageur'),
//         backgroundColor: Color(0xFF60AA54),
//       ),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: collection.snapshots(),
//         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (snapshot.hasError) {
//             return Text('Une erreur est survenue');
//           }

//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Text("Chargement...");
//           }
//  return  Container(
//                 color: Color.fromARGB(255, 255, 255, 255),
//                 child: SingleChildScrollView(
//                   child: Form(
//                     child: Column(
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 25,
//                             vertical: 10,
//                           ),
//                           child: TextFormField(
//                             controller: nomcompletController,
//                             cursorColor: Color(0xFF60AA54),
//                             decoration: InputDecoration(
//                               fillColor: Color.fromARGB(0, 203, 203, 203),
//                               filled: true,
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(3),
//                                 borderSide: const BorderSide(
//                                   color: Color.fromARGB(255, 83, 83,
//                                       83), // Ajoutez la couleur de la bordure ici
//                                   width: 2, // Ajoutez la largeur de la bordure ici
//                                   style: BorderStyle
//                                       .solid, // Changez le style de la bordure ici
//                                 ),
//                               ),
//                               contentPadding: const EdgeInsets.symmetric(
//                                 horizontal: 20,
//                                 vertical: 10,
//                               ),
//                               hintText: 'Nom complet',
//                               hintStyle: TextStyle(
//                                 fontSize: 14,
//                                 color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
//                               ),
//                             ),
//                             // onSaved: (value) => _adresseMail = value!,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Remplis correctement les informations';
//                               }
//                               return null;
//                             },
//                           ),
//                         ),

//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 25,
//                             vertical: 10,
//                           ),
//                           child: SizedBox(
//                             width: 350,
//                             height: 50,
//                             child: ElevatedButton(
//                               child: Text(
//                                 'Details Voyage',
//                                 style: TextStyle(
//                                   color: Colors.white, // Couleur du texte
//                                   fontSize: 16, // Taille du texte
//                                 ),
//                               ),
//                               style: ButtonStyle(
//                                 backgroundColor: MaterialStateProperty.all<Color>(
//                                   Color(0xFF60AA54), // Nouvelle couleur de fond
//                                 ),
//                                 shape:
//                                     MaterialStateProperty.all<RoundedRectangleBorder>(
//                                   RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(
//                                         5), // Nouveau rayon du coin arrondi
//                                   ),
//                                 ),
//                                 elevation: MaterialStateProperty.all<double>(
//                                     5), // Ombre du bouton
//                                 padding: MaterialStateProperty.all<EdgeInsets>(
//                                     EdgeInsets.all(
//                                         12)), // Padding à l'intérieur du bouton
//                               ),
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => DetaillesVoyages()),
//                                 );
//                               },
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//           // Ici, vous devez retourner le widget qui doit être affiché une fois les données chargées.
//           // Par exemple, vous pouvez retourner un ListView pour afficher les documents de votre collection.

//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kabum_chatbot/Reservations/Billets/Detaillesvoyageur.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InforVoyageur extends StatefulWidget {
  const InforVoyageur({super.key});

  @override
  State<InforVoyageur> createState() => _InforVoyageurState();
}

class _InforVoyageurState extends State<InforVoyageur> {
  final nomcompletController = TextEditingController();
  final telephoneController = TextEditingController();
  final adresseController = TextEditingController();
  final nationaliteController = TextEditingController();

  final CollectionReference collection = FirebaseFirestore.instance
      .collection('InforVoyageur'); // Changez le nom de votre collection ici

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information Voyageur'),
        backgroundColor: Color(0xFF60AA54),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: collection.snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Une erreur est survenue');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Chargement...");
          }
          return Container(
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
                        controller: nomcompletController,
                        cursorColor: Color(0xFF60AA54),
                        decoration: InputDecoration(
                          fillColor: Color.fromARGB(0, 203, 203, 203),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 83, 83,
                                  83), // Ajoutez la couleur de la bordure ici
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
                            color:
                                Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
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
                            controller: telephoneController,
                            cursorColor: Color(0xFF60AA54),
                            decoration: InputDecoration(
                              fillColor: Color.fromARGB(0, 203, 203, 203),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 83, 83,
                                      83), // Ajoutez la couleur de la bordure ici
                                  width: 2, // Ajoutez la largeur de la bordure ici
                                  style: BorderStyle
                                      .solid, // Changez le style de la bordure ici
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              hintText: 'Numéro de téléphone',
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
                            controller: adresseController,
                            cursorColor: Color(0xFF60AA54),
                            decoration: InputDecoration(
                              fillColor: Color.fromARGB(0, 203, 203, 203),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 83, 83,
                                      83), // Ajoutez la couleur de la bordure ici
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
                          child: TextFormField(

                            controller:nationaliteController,
                            cursorColor: Color(0xFF60AA54),
                            decoration: InputDecoration(
                              fillColor: Color.fromARGB(0, 203, 203, 203),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 83, 83,
                                      83), // Ajoutez la couleur de la bordure ici
                                  width: 2, // Ajoutez la largeur de la bordure ici
                                  style: BorderStyle
                                      .solid, // Changez le style de la bordure ici
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              hintText: 'Nationalité',
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
                            'Details Voyage',
                            style: TextStyle(
                              color: Colors.white, // Couleur du texte
                              fontSize: 16, // Taille du texte
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF60AA54), // Nouvelle couleur de fond
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                              'nomscomplet': nomcompletController.text,
                              'telephone':telephoneController.text,
                              'adresse':adresseController.text,
                              'nationalite':nationaliteController.text
                              // Ajoutez d'autres champs ici si nécessaire
                            });

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetaillesVoyages()),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
          // Ici, vous devez retourner le widget qui doit être affiché une fois les données chargées.
          // Par exemple, vous pouvez retourner un ListView pour afficher les documents de votre collection.
        },
      ),
    );
  }
}
