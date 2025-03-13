import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShofikulActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ShofikulActivity extends StatelessWidget {
  const ShofikulActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('X BOMBER PRO'), backgroundColor: Colors.blue),

      body: Container(
        height: 200,
        width: 600,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
        padding: EdgeInsets.all(0),

        decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),

          color: Colors.green,
      
          border: Border.all(width: 4,

           color: Colors.black),
        ),

        child: Center(
          child: Text(
            "Shofikul Islam",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 233, 8, 8),
            ),
          ),
        ),
      ),
    );
  }
}
