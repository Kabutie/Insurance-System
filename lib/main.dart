import 'package:cars_ms/firebase_options.dart';
import 'package:cars_ms/services/auth/auth_gate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cars_ms/models/insurance_options.dart';
import 'package:cars_ms/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    // multi provider
    MultiProvider(
        providers: [
          // theme provider
          ChangeNotifierProvider(create: (context) => ThemeProvider()),

          // Insurance provider
          ChangeNotifierProvider(create: (context) => InsuranceOptions()),
        ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
