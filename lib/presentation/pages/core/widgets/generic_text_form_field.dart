import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final double? maxWidth; // Parámetro opcional para el ancho máximo del widget
  final IconData? iconSuffixData; // icon to show at the end

  const CustomTextFormField({
    Key? key,
    required this.hintText,
    this.controller,
    this.maxWidth, // Agregado aquí en el constructor
    this.iconSuffixData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: maxWidth ?? double.infinity), // Usando coalescencia nula
      child: TextFormField(
        controller: controller,
        style: const TextStyle(
          color: Colors.white,
        ), // Establece el color del texto a blanco
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.9),
          ), // Color del texto del placeholder
          filled: true,
          fillColor: const Color.fromARGB(
            255,
            75,
            56,
            109,
          ), // Color de fondo del campo
          border: InputBorder.none, // Sin bordes
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none, // Sin bordes cuando está habilitado
            borderRadius: BorderRadius.circular(15), // Bordes más redondos
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none, // Sin bordes cuando está enfocado
            borderRadius: BorderRadius.circular(10), // Bordes más redondos
          ),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 10,
            minHeight: 10,
          ),
          suffixIcon: InkWell(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                child: Icon(
                  iconSuffixData,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              onTap: () {}),
        ),
      ),
    );
  }
}
