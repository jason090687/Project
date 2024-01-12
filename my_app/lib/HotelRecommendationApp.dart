import 'package:flutter/material.dart';
import 'package:my_app/location.dart';

void main() {
  runApp(const HotelRecommendationApp());
}

class HotelRecommendationApp extends StatelessWidget {
  const HotelRecommendationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 80), // Space above

              // "CDOseek"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'CDO',
                    style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  Text(
                    'seek',
                    style: TextStyle(fontSize: 32.0, color: Colors.yellow),
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Description
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Welcome to Teambangan\'s Boarding House Finder – your shortcut to the perfect home away from home, where comfort and community converge with just a tap!',
                  style: const TextStyle(fontSize: 18.0),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 48),

              // Column for buttons
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Blue button with arrow
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homelocation()),
                      );
                    }, // Replace with desired action
                    icon: const Icon(Icons.arrow_forward_ios),
                    label: const Text('Start Exploring'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white, // White text
                      textStyle: const TextStyle(fontWeight: FontWeight.bold),
                      minimumSize: const Size(250, 75),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24), // Increased padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20), // Rounded corners
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  // Yellow button with arrow
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios),
                    label: const Text('Landlord Interface'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Yellow background
                      onPrimary: Colors.white, // Blue text
                      textStyle: const TextStyle(fontWeight: FontWeight.bold),
                      minimumSize: const Size(250, 75),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24), // Increased padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20), // Rounded corners
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                ),
                Text(
                  'Login',
                  style: TextStyle(color: Colors.yellow),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
