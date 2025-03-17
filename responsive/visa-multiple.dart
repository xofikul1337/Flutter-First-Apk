import 'package:flutter/material.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Column(
        children: [
          Container(
        height: screenHeight * 0.3,
        width: screenWidth * 0.8,
        color: Colors.grey[300],
        child: Stack(
          children: [
            Align(
              alignment: Alignment(-0.9, -0.9),
              child: Text('Top Left', style: TextStyle(fontSize: 16)),
            ),
            Align(
              alignment: Alignment.center,
              child: Text('Center', style: TextStyle(fontSize: 16)),
            ),
            Align(
              alignment: Alignment(0.9, 0.9),
              child: Text('Bottom Right', style: TextStyle(fontSize: 16)),
            ),
          ],

          
        ),
      ),
      Container(
        height: screenHeight*0.3,
        width: screenWidth*0.8,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          
          color: Colors.purple,
          borderRadius: BorderRadius.circular(10),
          

        ),
        child: Stack(
          
          children: [
           const Align(
              alignment: Alignment(-0.9, 0.9),
              child: Text('Shofikul Islam',style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),),
            ),
            Align(
              alignment: Alignment(-0.9, 0.1),
              child:Padding(padding: EdgeInsets.all(8),
              
             child:  CircleAvatar(
                backgroundImage:NetworkImage('https://i.postimg.cc/cC9ZXzKC/image.png') ,

              )
            )
            ),
            Align(
              alignment: Alignment(0.9, 0.9),
              child: Text('VISA',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.white),),
            ),
              Align(
              alignment: Alignment(-0.9, 0.6),
              child: Text('1212 4545 4545 4545',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Colors.white),),
            )
          ],
        ),
      ),
   
        ],
      )
    );
  }
}
