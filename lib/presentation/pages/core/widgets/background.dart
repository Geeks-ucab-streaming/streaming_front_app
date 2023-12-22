import 'package:flutter/material.dart';

class Background extends StatelessWidget{
  final Widget child;
  
  const Background({super.key, required this.child});

  @override
  Widget build(BuildContext context){
    
      return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 28, 20, 97),
              Color.fromARGB(255, 26, 25, 31),
            ],
            begin: Alignment.topRight,
            end: Alignment.centerLeft,
          )
        ),
        child: child,
      );
  }
}