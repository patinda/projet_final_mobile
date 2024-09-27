import 'package:flutter/material.dart';
import 'event.dart';

class DetailsEvenement extends StatelessWidget {
  final Event event;

  const DetailsEvenement({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Détails de l\'événement', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1A237E),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              event.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Date : ${event.date}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Lieu : ${event.location}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Text(event.description, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
