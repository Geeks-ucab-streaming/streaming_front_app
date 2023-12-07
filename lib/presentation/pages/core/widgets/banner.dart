import 'package:flutter/material.dart';

class Banner extends StatelessWidget{
  const Banner({super.key, required this.bannerImage});

  final ImageProvider bannerImage;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,  
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Stack(
        children: [
            InkWell(
              child: Image(image: bannerImage),
              onTap: () {
                
              },
            ),  
        ],
      ),
    );
  }
}