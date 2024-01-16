import 'package:flutter/material.dart';

class SuccessMessage extends StatelessWidget {
  final String message;
  final double? maxWidth;
  final IconData? iconData;

  const SuccessMessage({
    Key? key,
    required this.message,
    this.maxWidth,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: maxWidth,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        border: Border.all(
          color: Colors.green,
          width: 2.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 15,
          ),
          Icon(
            iconData,
            size: 25,
            color: Colors.green,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(message)
        ],
      ),
    );
  }
}
