import 'package:flutter/material.dart';

class DayWidget extends StatelessWidget {
  final String text1;
  final String day;
  final String image;

  const DayWidget({
    super.key,
    required this.text1,
    required this.day,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.5, 
      width: screenWidth * 0.2, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //color: const Color.fromARGB(255, 98, 119, 201),
        image: DecorationImage(image: AssetImage("assets/images/sky3.jpg"), fit: BoxFit.cover),
        border: Border.all(style: BorderStyle.solid),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: TextStyle(
              fontSize: screenWidth * 0.03, 
              fontWeight: FontWeight.bold,
              
            ),
          ),
          SizedBox(height: screenHeight * 0.01), 
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              image,
              width: screenWidth * 0.1, 
              height: screenWidth * 0.1, 
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: screenHeight * 0.01), 
          Text(
            day,
            style: TextStyle(
              fontSize: screenWidth * 0.04, 
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
