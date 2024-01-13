import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifypage extends StatelessWidget{
  const  Notifypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(" Notification"),),
      body: const Center(
        child: Text("Notification Policy",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),),
      ),
    );
  }

}