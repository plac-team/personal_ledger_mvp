import 'package:flutter/material.dart';

class TextFieldStyle {
  static const INPUT_COLOR = Colors.white;
  static const INPUT_DECORATION = InputDecoration(
    filled: true,
    isDense: true,
    contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 9.0),
    fillColor: Colors.transparent,
    hintStyle: TextStyle(color: INPUT_COLOR, fontSize: 10.0),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: INPUT_COLOR, width: 0.0),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: INPUT_COLOR, width: 0.0),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: INPUT_COLOR, width: 0.0),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
  );
}
