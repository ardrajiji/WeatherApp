import 'package:flutter/material.dart';
import 'package:weather_app/widgets/daywidget.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Color.fromARGB(255, 67, 102, 216),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("7 - Day forecasts",
              style: TextStyle(
              fontSize: 17,
             color:Colors.black,)),
                       Row(
                         children: [
                           DayWidget(
                            text1: "SUN",
                            image: "assets/images/sun.webp",
                            day: "22",
                           ),SizedBox(width: 9,),
                           DayWidget(
                            text1: "MON",
                            image: "assets/images/cloudsun.webp",
                            day: "23",
                           ),SizedBox(width: 9,),
                           DayWidget(
                            text1: "TUE",
                            image: "assets/images/sun.webp",
                            day: "24",
                           ),SizedBox(width: 9,),
                           DayWidget(
                            text1: "WED",
                            image: "assets/images/cloudsun.webp",
                            day: "25",
                           ),SizedBox(width: 9,),
                           DayWidget(
                            text1: "THU",
                             image: "assets/images/sunwithrain.webp",
                            day: "26",
                           ),SizedBox(width: 9,),
                           DayWidget(
                            text1: "FRI",
                            image: "assets/images/cloudsun.webp",
                            day: "27",
                           ),SizedBox(width: 9,),
                           DayWidget(
                            text1: "SAT",
                            image: "assets/images/sunwithrain.webp",
                            day: "28",
                           ),SizedBox(width: 9,),
                         ],
                       ),


              
            ],
          
          ),
        ),
      ),
    );
  }
}