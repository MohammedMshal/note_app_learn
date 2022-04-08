import 'package:flutter/material.dart';
import 'package:note_app/screens/add_note.dart';
import 'package:note_app/screens/home_page.dart';
import 'package:note_app/screens/login.dart';
import 'package:note_app/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
      routes: {
        'login': (context) => const Login(),
        'signup':(context) =>  const SignUp(),
        'homepage':(context) => const HomePage(),
        'addNote':(context) => const AddNote(),
      },
    );
  }
}
