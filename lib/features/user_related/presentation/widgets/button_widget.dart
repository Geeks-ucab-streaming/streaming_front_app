import 'package:flutter/material.dart';
export 'button_widget.dart';

Widget createButton({required String buttonText}) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
      backgroundColor: Colors.lightBlueAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: const BorderSide(color: Colors.lightBlueAccent),
      ),
    ),
    child: Text(
      buttonText,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

