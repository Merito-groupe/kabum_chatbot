import 'package:flutter/material.dart';
import 'package:kabum_chatbot/Homepagemenusheet.dart';
import 'package:kabum_chatbot/chat/chatview.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {

  void _onpenIconButtonPressed(){
    
    showModalBottomSheet(
      isScrollControlled: false,
      context: context, 
      builder: (ctx) => const HomeMenuSheet());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 206, 206),
      body: Stack(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: const EdgeInsets.fromLTRB(16, 68, 16, 16),
                     
                      child: Text(
                        'Kabum ChatBot', // Ajoutez votre texte ici
                        style: TextStyle(
                          color: Colors.black, // Couleur du texte
                          fontSize: 30,
                          fontWeight: FontWeight.bold, // Taille du texte
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 1,
                      ),
                      child: SizedBox(
                        width: 350,
                        height: 50,
                        child: ElevatedButton(
                          child: const Text(
                            'Avez-vous une question',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1), // Couleur du texte
                              fontSize: 16, // Taille du texte
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF60AA54), // Nouvelle couleur de fond
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    5), // Nouveau rayon du coin arrondi
                              ),
                            ),
                            elevation:
                                MaterialStateProperty.all<double>(5), // Ombre du bouton
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(
                                    12)), // Padding à l'intérieur du bouton
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ChatView()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Color(0xFF60AA54), // Ajoutez la couleur ici
                  size: 60.0, // Augmentez la taille ici
                ),
                onPressed:_onpenIconButtonPressed, 
              ),
            ),
          ),
        ],
      ),
    );
  }
}
