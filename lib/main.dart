import 'package:flutter/material.dart';
import 'package:sales_crm_2/Views/agents_screen.dart';
import 'Views/single_agents_screen.dart';
import 'Views/agents_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AgentsScreen());
  }
}




