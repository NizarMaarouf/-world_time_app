// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(146, 12, 16, 49),
        title: const Text('Loading ....'),
        centerTitle: true,
      ),
      body: Container(
         color: Color.fromARGB(255, 150, 150, 150),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SpinKitFadingCircle(
              color: Color.fromARGB(255, 54, 54, 55),
              size: 150.0,
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const Text('Launch screen'),
            ),
          ]),
        ),
      ),
    );
  }
}
