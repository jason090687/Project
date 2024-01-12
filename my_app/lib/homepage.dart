import 'package:flutter/material.dart';
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
        title: Text('Your App Title'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image at the top
          Image.network(
            'https://your-image-url.com',
            height: 200, // adjust height as needed
          ),
          // Title in the middle
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Your App Title',
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
              'Your app description goes here. Add more details about your app.',
              textAlign: TextAlign.center,
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
                    MaterialPageRoute(builder: (context) => HomeLocation()),
                  );
                },
                child: Text('Start Exploring'),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {},
                child: Text('Landlord Interface'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
