import 'package:flutter/material.dart';
import 'add_time_page.dart';
import 'timing_list_page.dart';
   // Dovrai creare anche questa pagina o sostituirla con la tua

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // Lista delle pagine da mostrare
  final List<Widget> _pages = [
    TimingListPage(note: ''), // Pagina Tempi
    AddTimePage(),            // Pagina Aggiungi
    NewsPage(),               // Pagina News
  ];

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
          _pages[_currentIndex], // Mostra la pagina corrispondente all'indice selezionato
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // Sfondo nero
        selectedItemColor: Colors.white, // Colore dell'icona e testo selezionati
        unselectedItemColor: Colors.white70, // Colore dell'icona e testo non selezionati
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
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
      ),
    );
  }
}
