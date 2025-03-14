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
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.lightBlueAccent.shade200,
        actions: [Icon(Icons.support)],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            for (var i = 0; i < 30; i++)
              Container(
                height: 100,
                color: Colors.amber,
                margin: EdgeInsets.all(12),
                child: Center(
                  child: Text(
                    "Serial Number: "
                    "$i",
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
