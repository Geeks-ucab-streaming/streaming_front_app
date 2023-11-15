import 'package:flutter/material.dart';

class WarningMessage extends StatelessWidget {
  final String message;

  WarningMessage({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.red.shade800, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.error_outline, color: Colors.red[800], size: 30),
          SizedBox(width: 10),
          Flexible(
            child: Text(
              message,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
