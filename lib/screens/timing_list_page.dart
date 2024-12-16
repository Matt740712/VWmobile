import 'package:flutter/material.dart';

class TimingListPage extends StatelessWidget {
  final String note; // Variabile per ricevere l'appunto

  TimingListPage({required this.note}); // Costruttore per ricevere l'appunto

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Timing'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            note, // Mostra l'appunto passato
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
