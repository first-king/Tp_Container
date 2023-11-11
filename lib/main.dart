import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Container',
            style: TextStyle(color: Colors.amber),
          )),
        ),
        body: Center(
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              padding: const EdgeInsets.all(50),
              child: Transform.rotate(
                angle: 120,
                child: Container(
                  padding: const EdgeInsets.all(50),
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(75),
                      boxShadow: [
                        const BoxShadow(
                            color: Colors.black,
                            spreadRadius: 4,
                            blurRadius: 15)
                      ]),
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient:
                            RadialGradient(colors: [Colors.white, Colors.blue]),
                        boxShadow: [
                          BoxShadow(blurRadius: 20, spreadRadius: 4)
                        ]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
