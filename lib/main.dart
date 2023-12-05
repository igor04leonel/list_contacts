import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contacts'),
        ),
        body: ListView(
          children: [
            Column(
              children: [
               Contacts('R', 'Romain Hoogmoed', 'Romain.hoogmod@Example.com'),
               Contacts('E', 'Emilie Olsen', 'emilie.olsen@Example.com'),
               Contacts('T', 'Tel Lefevre', 'tel.lefevre@Example.com'),
               Contacts('N', 'Nicole cruz', 'nicole.cruz@Example.com'),
               Contacts('R', 'Ramma Peixoto', 'rama.peixoto@Example.com'),
               Contacts('J', 'Jose Ortinz', 'jose.ortinz@Example.com'),
               Contacts('A', 'Alma Christensen', 'alma.christensen@Example.com'),
               Contacts('S', 'Sergio Hill', 'sergio.hill@Example.com'),
               Contacts('M', 'Mario Gonzales', 'mario.gonzales@Example.com'),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class Contacts extends StatelessWidget {
  final String startLetter;
  final String name;
  final String email;
  const Contacts(this.startLetter, this.name, this.email,{Key? key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text(startLetter)),
      title: Text(name),
      subtitle: Text(email),
    );
  }
}

