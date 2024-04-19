import 'package:agri_app_2/data/dummy_data.dart';
import 'package:agri_app_2/screens/presentation/crop_management.dart';
import 'package:agri_app_2/widget/presentation/Logo.dart';
import 'package:agri_app_2/widget/presentation/theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:agri_app_2/widget/presentation/app_bar.dart';
import 'package:agri_app_2/widget/presentation/menu_bar.dart';

class AddCrop extends StatelessWidget {
  const AddCrop({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
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
                        onPressed: () {},
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
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
                borderRadius: BorderRadius.circular(30),
                color: themeProvider.getTheme == darkTheme
                    ? Colors.grey[900]
                    : const Color.fromARGB(255, 246, 246, 246),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Crop Details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: themeProvider.getTheme == darkTheme
                          ? Colors.white
                          : const Color.fromARGB(255, 103, 103, 103),
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
                          color: themeProvider.getTheme == darkTheme
                              ? Colors.white
                              : const Color.fromARGB(255, 103, 103, 103),
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
                          )),
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
                          color: themeProvider.getTheme == darkTheme
                              ? Colors.white
                              : const Color.fromARGB(255, 103, 103, 103),
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
                          )),
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
                          color: themeProvider.getTheme == darkTheme
                              ? Colors.white
                              : const Color.fromARGB(255, 103, 103, 103),
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
                          )),
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
                          color: themeProvider.getTheme == darkTheme
                              ? Colors.white
                              : const Color.fromARGB(255, 103, 103, 103),
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
                          )),
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
                          color: themeProvider.getTheme == darkTheme
                              ? Colors.white
                              : const Color.fromARGB(255, 103, 103, 103),
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
                          )),
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
                                builder: (context) => const CropMangement()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: themeProvider.getTheme == darkTheme
                              ? const Color.fromARGB(255, 0, 64, 0)
                              : const Color.fromARGB(
                                  255, 33, 119, 50), // Background color
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add, color: Colors.white, size: 15),
                            Text(
                              'Add',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
