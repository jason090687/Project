import 'package:flutter/material.dart';

void main() {
  runApp(Homelocation());
}

class Homelocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'CDO',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              TextSpan(
                text: 'seek',
                style: TextStyle(
                  color: Color(0xFFfdcd25),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xFFB0BEC5),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTopSection(),
          const SizedBox(height: 20.0),
          _buildSearchBar(),
          const SizedBox(height: 20.0),
          _buildDateSection(),
          const SizedBox(height: 20.0),
          _buildGuestsAndRoomsSection(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildTopSection() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/travel_image.jpg'),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Step Into your Upcoming exploration!',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Explore an Ideal stay with CDOseek',
              style: TextStyle(color: Colors.yellow),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            color: Colors.blue,
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Where?',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0), // Round border
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'FIND',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), // Round border
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateSection() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
        borderRadius: BorderRadius.circular(35.0),
      ),
      child: _buildInfoColumn('Check-in', 'DD/MM/YY', Icons.calendar_today),
    );
  }

  Widget _buildGuestsAndRoomsSection() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
        borderRadius: BorderRadius.circular(35.0), // Round border
      ),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildInfoColumn('Guests', '1', Icons.add_circle),
          _buildInfoColumn('Rooms', '1', Icons.hotel),
        ],
      ),
    );
  }

  Widget _buildInfoColumn(String label, String value, IconData icon) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18.0,
          ),
        ),
        const SizedBox(height: 5.0),
        Row(
          children: [
            Text(
              value,
              style: TextStyle(fontSize: 16.0), // Smaller font size
            ),
            const SizedBox(width: 10.0),
            Icon(
              icon,
              color: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        _buildNavItem(Icons.home, 'Home', 0),
        _buildNavItem(Icons.favorite, 'Favorites', 1),
        _buildNavItem(Icons.book, 'Bookings', 2),
        _buildNavItem(Icons.chat, 'Chat', 3),
        _buildNavItem(Icons.person, 'Profile', 4),
      ],
    );
  }

  BottomNavigationBarItem _buildNavItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
