import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GenericText extends TextSpan {
  GenericText({
    required String text,
    VoidCallback? onTap,
    Color? color,
    double? fontSize,
    
  }) : super(
          text: text,
          style: TextStyle(
            color: color ?? Colors.white, // Valor por defecto si color es nulo
            fontSize: fontSize ?? 16,
          ),
          recognizer: onTap != null ? (TapGestureRecognizer()..onTap = onTap) : null,
        );
}