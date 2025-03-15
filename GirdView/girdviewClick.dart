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
  longPress(message, context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shofikul App"), backgroundColor: Colors.blue),

      body: GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 4,
    crossAxisSpacing: 3,
  ),
  itemCount: 40,
  itemBuilder: (context, index) {
    return GestureDetector(
      onTap: () {
        print('Shofikul $index pressed');
      },
      child: Container(
        height: 50,
        width: 50,
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.all(5),
        color: Colors.yellowAccent,
        child: Text('Shofikul $index'),
      ),
    );
  },
)

    );
  }
}
