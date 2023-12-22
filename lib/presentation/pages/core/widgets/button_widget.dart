import 'package:flutter/material.dart';
export 'button_widget.dart';

Widget createButton({
  required String buttonText,
  Function? actionToDo,
  double? maxWidth, // Parámetro opcional para la longitud máxima
}) {
  // Usar un ConstrainedBox para definir el ancho máximo
  return ConstrainedBox(
    constraints: BoxConstraints(maxWidth: maxWidth ?? double.infinity),
    child: ElevatedButton(
      onPressed: () {
        if (actionToDo != null) {
          actionToDo();
        }
      },
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
    ),
  );
}
