import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const ShofikulActivity());
  }
}

class ShofikulActivity extends StatelessWidget {
  const ShofikulActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dacebook App"),
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, //serial a joto gulo show korabo
          childAspectRatio: 1.2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
         return Container(
  padding: EdgeInsets.all(12),
  color: Colors.amber,
  child: Stack(
    alignment: Alignment.center, // text er position set
    children: [
      Image.network(
        'https://fastly.picsum.photos/id/484/200/200.jpg?hmac=3rqhoyJTHVOGelhVPMaglcnpAMl_V3cvNkHZDpSz6_g',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Text(
        'My Text',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.black54,
        ),
      ),
    ],
  ),
);

        },
      ),
    );
  }
}
