import 'package:flutter/material.dart';

void main() {
  runApp(HotelRecommendationApp());
}

class HotelRecommendationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Recommendation',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 8.0),
                Text('Cagayan de Oro, Lapasan'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.notifications),
                SizedBox(width: 16.0),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cagayan de Oro, Lapasan',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(width: 8.0),
                    Text('DD/MM/YY'),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle guests button press
                  },
                  child: Text('1 Guests'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search...',
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle filtering icon press
                    },
                    icon: Icon(Icons.filter_list),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Recommended Hotels',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Add a list of recommended hotels here
            // You can create a separate HotelCard widget for each recommendation
          ],
        ),
      ),
    );
  }
}

class HotelCard extends StatelessWidget {
  // HotelCard widget to display individual hotel recommendations
  @override
  Widget build(BuildContext context) {
    return Card(
      // Customize the appearance of each hotel card
      child: ListTile(
          // Display hotel information (e.g., name, price, etc.)
          ),
    );
  }
}
