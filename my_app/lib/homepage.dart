import 'package:flutter/material.dart';
import 'package:my_app/HotelRecommendationApp.dart';
import 'package:my_app/location.dart';

class TeambanganBoardingHouseFinderextends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CDOseek'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image at the top
          Image.asset('lib/assets/images/Ellipse4.png'),
          // Title in the middle
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'CDOseek',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Text in the middle/bottom
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Welcome to Teambangan Boarding House Finder – your shortcut to the perfect home away from home, where comfort and community converge with just a tap',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Buttons at the bottom
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                child: Text('Start Exploring'),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HotelRecommendationApp()),
                  );
                },
                child: Text('Landlord Interface'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
