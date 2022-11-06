// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(146, 12, 16, 49),
        title: const Text('Choose Location'),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromARGB(250, 190, 190, 200),
        padding: EdgeInsets.symmetric(horizontal: 7.0,vertical: 7.0),
        child: Center(
          child:
           Column(
            children: [
            Card( 
              child: ListTile(
                onTap: () {},
                title: Text('Egypt - Cairo',style: TextStyle(fontSize: 30),),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/Images/egypt.png"),
                ),
              ),
            ),
        
          
        
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Go back!'),
            ),
          ]),
        ),
      ),
    );
  }
}
