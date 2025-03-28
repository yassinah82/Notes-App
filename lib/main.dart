import 'package:flutter/material.dart';
import 'database_helper.dart';
import 'notes_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DBHelper.createDB();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Notes(),
      debugShowCheckedModeBanner: false,
    );
  }
}
