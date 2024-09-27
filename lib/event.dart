class Event {
  String id;
  String title;
  String description;
  String date;
  String location;

  Event({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.location,
  });

  // Méthode pour convertir un document Firestore en instance Event
  factory Event.fromDocument(Map<String, dynamic> doc, String id) {
    return Event(
      id: id,
      title: doc['title'],
      description: doc['description'],
      date: doc['date'],
      location: doc['location'],
    );
  }

  // Méthode pour convertir un Event en map pour Firestore
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'date': date,
      'location': location,
    };
  }
}
