import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View Example'),
        ),
        body: Center(
          child: GridView.extent(
            // crossAxisCount: 0,
            maxCrossAxisExtent: 200,
            children: <Widget>[
              IconCard(
                icon: Icons.email,
                label: 'Email',
                backgroundColor: Color.fromARGB(255, 39, 169, 45),
              ),
              IconCard(
                icon: Icons.phone,
                label: 'Phone',
                backgroundColor: Color.fromARGB(255, 110, 139, 162),
              ),
              IconCard(
                icon: Icons.account_balance,
                label: 'Bank account',
                backgroundColor: Color.fromARGB(255, 10, 109, 111),
              ),
              IconCard(
                icon: Icons.camera,
                label: 'Camera',
                backgroundColor: Color.fromARGB(255, 107, 68, 68),
              ),
              IconCard(
                icon: Icons.alarm,
                label: 'Alarm',
                backgroundColor: Color.fromARGB(255, 22, 245, 14),
              ),
              IconCard(
                icon: Icons.location_city,
                label: 'Location',
                backgroundColor: Color.fromARGB(255, 50, 15, 167),
              ),
              IconCard(
                icon: Icons.shopping_cart,
                label: 'Shopping',
                backgroundColor: Color.fromARGB(255, 151, 91, 28),
              ),
              IconCard(
                icon: Icons.add_to_drive,
                label: 'Drive',
                backgroundColor: Color.fromARGB(255, 153, 181, 197),
              ),
              IconCard(
                icon: Icons.airplanemode_active,
                label: 'AirplaneMode',
                backgroundColor: Color.fromARGB(255, 228, 10, 10),
              ),
              IconCard(
                icon: Icons.android,
                label: 'Android',
                backgroundColor: Color.fromARGB(255, 147, 143, 158),
              ),
              IconCard(
                icon: Icons.announcement,
                label: 'Announcement',
                backgroundColor: Color.fromARGB(255, 50, 133, 42),
              ),
              IconCard(
                icon: Icons.app_settings_alt_rounded,
                label: 'Setting',
                backgroundColor: Color.fromARGB(255, 41, 4, 129),
              ),
              // Add more icons here...
            ],
          ),
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color backgroundColor;

  const IconCard({
    Key? key,
    required this.icon,
    required this.label,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 40,
              color: Colors
                  .white, // Assuming icon color should be white for visibility
            ),
            SizedBox(height: 5),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors
                    .white, // Assuming label color should be white for visibility
              ),
            ),
          ],
        ),
      ),
    );
  }
}
