// ignore_for_file: file_names, prefer_const_constructors, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  getData() async {
    try {
      Response response = await get(
          Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Jerusalem'));
      Map receivedData = jsonDecode(response.body);
      print(receivedData["utc_datetime"]);
      // Do whatever you want

    } catch (e) {
      print("ERROE IS : $e");
    }
  }

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
                getData();
              },
              child: const Text(
                'GET DATA',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
