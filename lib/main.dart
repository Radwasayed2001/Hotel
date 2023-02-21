import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

String s = "King Room";
int x = 0;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[600],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[500],
          title: Center(
            child: Text(
              'Hotel',
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.blueGrey[800],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Card(
                child: Container(
                  height: 320,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 10.0),
                                child: Image.asset(
                                  x == 0
                                      ? 'images/icon-1.jpg'
                                      : x == 1
                                          ? 'images/icon-2.jpg'
                                          : 'images/icon-3.jpg',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1.0,
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  x == 0
                                      ? 'King Room'
                                      : x == 1
                                          ? 'Double Room'
                                          : 'Family Room',
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            SizedBox(
                              width: 3.0,
                            ),
                            Icon(
                              Icons.keyboard_arrow_up,
                              size: 40.0,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          x == 0
                              ? 'A room with a king-sized bed'
                              : x == 1
                                  ? 'A room assigned to two people'
                                  : 'A room assigned to three or four people',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        x++;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
