import 'package:flutter/material.dart';
import 'package:weather_app/widgets/daywidget.dart';
import 'package:lottie/lottie.dart';


class Layout extends StatelessWidget {
  final List<Map<String, dynamic>> forecate = [
    {
      "text1": "SUN",
      "image": "assets/images/sun.webp",
      "day": "22",
     
    },
    {
      "text1": "MON",
      "image": "assets/images/cloudsun.webp",
      "day": "23",
     
    },
    {
      "text1": "TUE",
      "image": "assets/images/sun.webp",
      "day": "24",
     
    },
    {
     "text1": "WED",
     "image": "assets/images/cloudsun.webp",
     "day": "25",
      
    },
    {
      "text1": "THU",
      "image": "assets/images/sunwithrain.webp",
      "day": "26",
      
    },
    {
       "text1": "FRI",
       "image": "assets/images/cloudsun.webp",
       "day": "27",
      
    },
    {
       "text1": "FRI",
       "image": "assets/images/cloudsun.webp",
       "day": "27",
      
    },
    {
      "text1": "SAT",
      "image": "assets/images/sunwithrain.webp",
      "day": "28",
    }
     // Add other items as needed
  ];

 Layout({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

     DateTime now = DateTime.now();
      List<String> monthNames = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    String monthName = monthNames[now.month - 1]; // Adjust for 0-indexed list

    // Extract components
    String day = now.day.toString();
    String month = monthName;
    String year = now.year.toString();
    String hour = now.hour.toString().padLeft(2, '0'); // Ensure 2 digits
    String minute = now.minute.toString().padLeft(2, '0');
    String second = now.second.toString().padLeft(2, '0');

    return Scaffold(
     body: Stack(
      //fit: StackFit.expand,
      children: [
        // ClipRRect(
        //   borderRadius: const BorderRadius.all(Radius.circular(10)),
        //   child: Flexible(
        //     child: Image.asset("assets/images/sun.webp")
        //   ),
        // )
      Container(
        width: screenWidth,
        height: screenHeight,
        color: const Color.fromARGB(255, 168, 196, 243),

      ),
       Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom:  screenHeight * 0.3,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent, 
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
              image: const DecorationImage(
                image: AssetImage("assets/images/sky2.jpg"), 
                fit: BoxFit.cover, 
              ),
            ),
          ),
        ),


      
       Positioned(
        top: screenHeight * .05,
        left: screenWidth * .09,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(icon: const Icon(Icons.more_vert,size:30), onPressed: () {},),
            SizedBox(width: MediaQuery.of(context).size.width * 0.06),
            IconButton(onPressed: (){}, icon:const Icon(Icons.location_on,size:40 ,)),
            const Text("Thrissur ", style: TextStyle(fontSize: 26, color: Colors.white),),
            SizedBox(width: MediaQuery.of(context).size.width * 0.08),

            IconButton(onPressed: (){}, icon:const Icon(Icons.add,size:25,)),
          ],
        ),
       ), 

        Positioned(
          top: screenHeight * .09 + 25,
          left: screenWidth * 0.3, 
          child: Row(
            children: [
 
              Text(day.toString(),style: const TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white),),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),


              Text(month.toString(),style: const TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white),),
              const Text(",",style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white),),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),

              
              Text(year.toString(),style: const TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white),),
              SizedBox(width: MediaQuery.of(context).size.width * 0.05),

            ],
          ),

        ), 
        Positioned(
          top: screenHeight * .09 + 55,
          left: screenWidth * 0.4,
          child: Row(
                children: [
                  Text(hour.toString(),style: const TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                  
                  const Text(":",style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),),
                  
                  Text(minute.toString(),style: const TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                  
                  const Text(":",style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),),
                  
                  Text(second.toString(),style: const TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                ],
              ),
        ),


         Positioned(
          top: screenHeight * .09 + 110,
          left: screenWidth * 0.6,
          child: Row(
          children: [
             SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                //SizedBox(height: MediaQuery.of(context).size.height * 0.4 * 3),
                const Text("o C",style: TextStyle(fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 255, 255, 1)),),

          ]
        )),

        Positioned(
          top: screenHeight * .09 + 120,
          left: screenWidth * 0.4,
          child: const Row(
              children: [

                //SizedBox(width: MediaQuery.of(context).size.width * 0.09 * 3),
                Text("28",style: TextStyle(fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.white),),
              ],
            ),
            
        ),

        Positioned(
          top: screenHeight * .09 + 200,
          left: screenWidth * 0.6,
          child:Container(
            width: 120,
            height: 120,
            child: Lottie.asset("assets/images/lottieSun.json"),
          )),
        
      
       Positioned(
          top: screenHeight * 0.7 + 30,
          left: screenWidth * 0.08,
          child: Container(
            width: screenWidth * 0.84,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "7 - Day forecasts",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 100, // Set an appropriate height for the horizontal list
                  child: ListView.builder(
                    itemCount: forecate.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final item = forecate[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: DayWidget(
                          text1: item['text1'],
                          image: item['image'],
                          day: item['day'],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
     ]
     ), 
    );
  }
}