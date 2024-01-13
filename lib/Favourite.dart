import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favourite extends StatelessWidget{
  const  Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favourite"),),
      body: const Center(
        child: Text("Favourite Policy",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),),
      ),
    );
  }

}