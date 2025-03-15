import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ShofikulActivity(),
    debugShowCheckedModeBanner: false,);
  }
}

class ShofikulActivity extends StatelessWidget {
  const ShofikulActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text('Facebook'),
        backgroundColor:Colors.blue,
        bottom:const TabBar(tabs: [
            Tab(icon: Icon(Icons.email)),
              Tab(icon: Icon(Icons.facebook)),
                Tab(icon: Icon(Icons.face)),

        ]),
           
        ),

body: TabBarView(
    children: <Widget>[
            Center(child: Text("It's cloudy here")),
            Center(child: Text("It's rainy here")),
            Center(child: Text("It's sunny here")),
          ],
    
    
     ),









      ),
    );
  }
}
