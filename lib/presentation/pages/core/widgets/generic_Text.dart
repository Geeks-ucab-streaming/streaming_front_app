// ignore_for_file: file_names

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GenericText extends TextSpan {
  GenericText({
    required String text,
    VoidCallback? onTap,
    Color? color,
    double? fontSize,
    bool isBold = false,
  }) : super(
          text: text,
          style: TextStyle(
            color: color ?? Colors.white, // Valor por defecto si color es nulo
            fontSize: fontSize ?? 16,
            fontWeight: isBold
                ? FontWeight.bold
                : FontWeight.normal, // Negritas si isBold es true
          ),
          recognizer:
              onTap != null ? (TapGestureRecognizer()..onTap = onTap) : null,
        );
}
