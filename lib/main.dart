import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'liste_evenements.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // Utilisation de super.key

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Événements Culturels',
      theme: ThemeData(
        primaryColor: const Color(0xFF1A237E),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFF64B5F6)),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black), // headline1
          titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black), // headline6
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black), // bodyText2
        ),
      ),
      home: const ListeEvenements(),
    );
  }
}
