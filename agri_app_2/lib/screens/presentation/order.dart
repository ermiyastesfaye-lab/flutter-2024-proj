import 'package:flutter/material.dart';
import 'edit.dart';
import 'update.dart';
import 'order.dart';
import 'package:agri_app_2/widget/presentation/app_bar.dart';
import 'package:agri_app_2/widget/presentation/bottom_nav_bar.dart';
import 'package:agri_app_2/widget/presentation/menu_bar.dart';
import 'package:flutter/material.dart';

class OrderPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(
            255, 221, 220, 221), // Set background color to purple
      ),
      home: OrderPage(),
    );
  }
}

class OrderPage extends StatelessWidget {
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
              width: 500, // Adjust height as needed
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.account_circle, // Change to the desired profile icon
                size: 86.0, // Adjust size as needed
                color: Colors.black87, // Adjust color as needed
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality for the +Add button
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Background color
                ),
                child: Text('Connect'),
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
                      labelText: 'Price: ETB ',
                      valueText: '200.00ETB', // Example price
                      onPressed: () {
                        // Add functionality for the button
                      },
                    ),
                    QualityListItem(
                      labelText: 'Quality: ',
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
                      // Add functionality for the Remove button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color.fromARGB(255, 45, 186, 13), // Background color
                    ),
                    child: Text(
                      'Order',
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
  final Function()? onPressed;

  const ListTileWithButton({
    required this.labelText,
    required this.valueText,
    this.onPressed,
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

class QualityListItem extends StatefulWidget {
  final String labelText;

  const QualityListItem({
    required this.labelText,
  });

  @override
  _QualityListItemState createState() => _QualityListItemState();
}

class _QualityListItemState extends State<QualityListItem> {
  int _quality = 85; // Initial quality value

  void _incrementQuality() {
    setState(() {
      if (_quality < 100) {
        _quality++;
      }
    });
  }

  void _decrementQuality() {
    setState(() {
      if (_quality > 0) {
        _quality--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(
            widget.labelText,
            style: TextStyle(
              color: Color.fromARGB(255, 9, 2, 2), // Text color
            ),
          ),
          Spacer(), // Add space between label and value
          ElevatedButton(
            onPressed: _incrementQuality,
            child: Text('+'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[300], // Background color
            ),
          ),
          SizedBox(width: 8), // Add spacing between buttons
          Text(
            '$_quality',
            style: TextStyle(
              color: Color.fromARGB(255, 9, 2, 2), // Text color
            ),
          ),
          SizedBox(width: 8), // Add spacing between buttons
          ElevatedButton(
            onPressed: _decrementQuality,
            child: Text('-'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[300], // Background color
            ),
          ),
        ],
      ),
    );
  }
}
