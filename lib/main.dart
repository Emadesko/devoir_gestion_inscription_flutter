import 'package:flutter/material.dart';
import 'package:devoir_gestion_inscription_flutter/models/inscription.dart';
import 'package:devoir_gestion_inscription_flutter/services/api_service.dart';
import 'package:devoir_gestion_inscription_flutter/views/layout.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // Define your routes here
        '/':
            (context) => Layout(
              apiService: ApiService<Inscription>(
                endpoint: 'inscriptions',
                fromJson: (json) => Inscription.fromJson(json),
                toJson: (inscription) => inscription.toJson(),
                baseUrl: "http://192.168.1.8:3000",
              ),
            ),
      },
    );
  }
}
