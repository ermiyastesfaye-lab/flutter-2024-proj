import 'package:agri_app_2/data/dummy_data.dart';
import 'package:agri_app_2/widget/presentation/Logo.dart';
import 'order.dart';
import 'package:flutter/material.dart';
import 'package:agri_app_2/widget/presentation/app_bar.dart';
import 'package:agri_app_2/widget/presentation/bottom_nav_bar.dart';
import 'package:agri_app_2/widget/presentation/menu_bar.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
        appBar: const AppBarWidget(),
        drawer: const MenuBarWidget(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Opacity(
                opacity: 0.5,
                child: IgnorePointer(
                    child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 19, vertical: 10),
                        child: LogoWidget(logo: logos[0]),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OrderPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                myColor.secondary, // Background color
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add, color: Colors.white, size: 15),
                              Text(
                                'Add',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 450,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(227, 238, 235, 235)),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Crop Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: myColor.tertiary,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Crop Name',
                          style: TextStyle(
                            fontSize: 16,
                            color: myColor.tertiary,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 35,
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: myColor.primary),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Corn'
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Crop Type',
                          style: TextStyle(
                            fontSize: 16,
                            color: myColor.tertiary,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 35,
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: myColor.primary),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Zea mays'
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Planting Date',
                          style: TextStyle(
                            fontSize: 16,
                            color: myColor.tertiary,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 35,
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: myColor.primary),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: '14/04/2024'
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Harvesting Date',
                          style: TextStyle(
                            fontSize: 16,
                            color: myColor.tertiary,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 35,
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: myColor.primary),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: '14/04/2024'
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price(ETB)',
                          style: TextStyle(
                            fontSize: 16,
                            color: myColor.tertiary,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 35,
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: myColor.primary),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'ETB 200'
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: SizedBox(
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrderPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: myColor.secondary,
                            // Background color
                          ),
                          child: const Text(
                            'Update',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
=======
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
                    MaterialPageRoute(builder: (context) => OrderPage()),
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
>>>>>>> c3ea6556788d9626833b326dc0d3ff0f4df31c3b
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
                      // Add functionality for the Update button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color.fromARGB(255, 45, 186, 13), // Background color
                    ),
                    child: Text(
                      'Update',
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
