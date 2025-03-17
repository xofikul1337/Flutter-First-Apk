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
              child: Text('Shofikul Islam'),
            )
          
          ],
        ),
      ),
   
        ],
      )
    );
  }
}
