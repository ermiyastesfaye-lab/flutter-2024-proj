import 'package:flutter/material.dart';
import 'edit.dart';
import 'update.dart';
import 'order.dart';
import 'package:agri_app_2/widget/presentation/app_bar.dart';
import 'package:agri_app_2/widget/presentation/bottom_nav_bar.dart';
import 'package:agri_app_2/widget/presentation/menu_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(
          255,
          221,
          220,
          221,
        ), // Set background color to purple
      ),
      home: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => EditPage(),
          );
        },
      ),
    );
  }
}

class EditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      drawer: const MenuBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/fruits.jpg', // Adjust the path as per your project structure
              height: 200,
              width: 400, // Adjust height as needed
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Crop Management',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpdatePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Background color
                ),
                child: Text('+ Add ->'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(227, 238, 235, 235)),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Crop Details',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTileWithButton(
                      labelText: 'Crop Name: ',
                      valueText: 'Corn', // Example crop name
                      onPressed: () {
                        // Add functionality for the button
                      },
                    ),
                    ListTileWithButton(
                      labelText: 'Crop Type: ',
                      valueText: 'Grain', // Example crop type
                      onPressed: () {
                        // Add functionality for the button
                      },
                    ),
                    ListTileWithButton(
                      labelText: 'Planting Date: ',
                      valueText: 'April 1, 2024', // Example planting date
                      onPressed: () {
                        // Add functionality for the button
                      },
                    ),
                    ListTileWithButton(
                      labelText: 'Harvesting Date: ',
                      valueText: 'July 15, 2024', // Example harvesting date
                      onPressed: () {
                        // Add functionality for the button
                      },
                    ),
                    ListTileWithButton(
                      labelText: 'Price: ETB ',
                      valueText: '200.00ETB', // Example price
                      onPressed: () {
                        // Add functionality for the button
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality for the Edit button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Background color
                    ),
                    child: Text(
                      'Edit',
                      style: TextStyle(color: Colors.white), // Text color
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality for the Remove button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color.fromARGB(255, 45, 186, 13), // Background color
                    ),
                    child: Text(
                      'Remove',
                      style: TextStyle(color: Colors.white), // Text color
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
      floatingActionButton: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context); // Navigate back to the previous page
        },
      ),
    );
  }
}

class ListTileWithButton extends StatelessWidget {
  final String labelText;
  final String valueText;
  final Function() onPressed;

  const ListTileWithButton({
    required this.labelText,
    required this.valueText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(
            labelText,
            style: TextStyle(
              color: Color.fromARGB(255, 9, 2, 2), // Text color
            ),
          ),
          Spacer(), // Add space between label and value
          ElevatedButton(
            onPressed: onPressed,
            child: Text(valueText),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[300], // Background color
            ),
          ),
        ],
      ),
    );
  }
}
