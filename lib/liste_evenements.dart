import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'event.dart';
import 'details_evenement.dart';
import 'modifier_evenement.dart';
import 'ajouter_evenement.dart';

class ListeEvenements extends StatelessWidget {
  const ListeEvenements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Événements Culturels', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1A237E),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('events').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          var events = snapshot.data!.docs.map((doc) {
            return Event.fromDocument(doc.data() as Map<String, dynamic>, doc.id);
          }).toList();

          return ListView.builder(
            itemCount: events.length,
            padding: const EdgeInsets.all(16.0),
            itemBuilder: (context, index) {
              var event = events[index];
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(15.0),
                  leading: const Icon(Icons.event, color: Color(0xFF1A237E), size: 40),
                  title: Text(event.title, style: Theme.of(context).textTheme.titleLarge),

                  subtitle: Text(event.description),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsEvenement(event: event),
                      ),
                    );
                  },
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.blue),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ModifierEvenement(event: event),
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          FirebaseFirestore.instance.collection('events').doc(event.id).delete();
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AjouterEvenement()),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: const Color(0xFF64B5F6), // Bleu clair pour le contraste
      ),
    );
  }
}
