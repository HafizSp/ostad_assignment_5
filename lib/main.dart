import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.add_alert_sharp),
          title: Text(
            'Home',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.search),
            )
          ],
          toolbarHeight: 100,
          elevation: 70,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This is mod 5 Assignment',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'My ',
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'phone ',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                    TextSpan(
                      text: 'name ',
                      style: TextStyle(
                          color: Colors.purpleAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Your phone name',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
