import 'package:flutter/material.dart';

class ResponsiveTemplate extends StatelessWidget {
  const ResponsiveTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    // Screen height & width
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive UI'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        color: Colors.grey[200],
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.25,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  'Top Card',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Container(
              height: screenHeight * 0.2,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  'Another Section',
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Expanded(
              child: Container(
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    'Bottom Area (Expanded)',
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
