import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;
  countNumber() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App'), backgroundColor: Colors.blue,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.facebook)),
        IconButton(onPressed: (){}, icon: Icon(Icons.support)),
        IconButton(onPressed: (){}, icon: Icon(Icons.refresh)),
      ],
      ),
backgroundColor: Colors.deepPurple,
      body:  Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            Text(
              'You have click this button many times',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10,
            ),
            Text(
              count.toString(),
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold,),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countNumber();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
