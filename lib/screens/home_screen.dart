import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('home')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 280.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/hero_image.png'),
                    fit: BoxFit.contain),
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.history_rounded,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Your BMI is',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '---',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    child: Text(
                      'Please, enter your weight and height to calculate your BMI',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
