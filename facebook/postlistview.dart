import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FacebookPostDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FacebookPostDemo extends StatelessWidget {
  const FacebookPostDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook Post UI"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile section
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=${index + 1}"),
                  ),
                  title: Text("User $index"),
                  subtitle: Text("5 minutes ago"),
                  trailing: Icon(Icons.more_vert),
                ),
                // Post content
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Text(
                    "This is a sample post description from user $index. Flutter is love!",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                // Post image
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "https://source.unsplash.com/random/400x200?sig=$index",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                // Reactions
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up_alt_outlined)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.comment_outlined)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
                    ],
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
