import 'package:flutter/material.dart';

void main() {
  runApp(Location());
}

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CDOseek',
      home: HomeLocation(),
    );
  }
}

class HomeLocation extends StatefulWidget {
  const HomeLocation({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeLocation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CDOseek'),
      ),
      body: Column(
        children: [
          // Top section with text and image
          _buildTopSection(),

          // Search bar and location section
          _buildSearchBar(),

          // Check-in and guest section
          _buildDateAndGuestSections(),

          // Footer
          _buildBottomNavigationBar(),
        ],
      ),
    );
  }

  Widget _buildTopSection() {
    return Stack(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                  'assets/travel_image.jpg'), // Replace with your actual image path
            ),
          ),
        ),
        Center(
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
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Where?',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          ElevatedButton(
            onPressed: () {}, // Add functionality later
            child: Text('FIND'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue, // Blue background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateAndGuestSections() {
    return Column(
      children: [
        // Check-in section
        _buildInfoRow('Check-in', 'DD/MM/YY', Icons.calendar_today),

        // Guests section
        _buildInfoRow('Guests', '1 1', Icons.add_circle),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            label,
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Row(
            children: [
              Text(value),
              const SizedBox(width: 10.0),
              Icon(
                icon,
                color: _currentIndex == 4
                    ? Colors.blue
                    : Colors.grey, // Change color based on active index
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
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
      icon: Icon(
        icon,
        color: _currentIndex == index
            ? Colors.blue
            : Colors.grey, // Change color based on active index
      ),
      label: label,
    );
  }
}
