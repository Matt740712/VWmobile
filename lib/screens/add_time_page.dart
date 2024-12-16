import 'package:flutter/material.dart';
import 'timing_list_page.dart'; // Importa la pagina della lista

class AddTimePage extends StatelessWidget {
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _exerciseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/back_ground_verywell.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Aggiungi Allenamento',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _timeController,
                  decoration: InputDecoration(
                    labelText: 'Tempo (minuti)',
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.black.withOpacity(0.7),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: _weightController,
                  decoration: InputDecoration(
                    labelText: 'Peso (kg)',
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.black.withOpacity(0.7),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: _exerciseController,
                  decoration: InputDecoration(
                    labelText: 'Tipo di Esercizio',
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.black.withOpacity(0.7),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      String time = _timeController.text;
                      String weight = _weightController.text;
                      String exercise = _exerciseController.text;

                      if (time.isNotEmpty && weight.isNotEmpty && exercise.isNotEmpty) {
                        // Naviga alla schermata successiva (TimingListPage per ora)
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TimingListPage(note: '$exercise - $time min - $weight kg'),
                          ),
                        );
                      } else {
                        // Mostra un messaggio di errore se mancano dei campi
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Compila tutti i campi!'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Salva',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Tempi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Aggiungi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'News',
          ),
        ],
        currentIndex: 1, // Indica la sezione attiva
        onTap: (index) {
          // Gestisci la navigazione tra le sezioni se necessario
        },
      ),
    );
  }
}
