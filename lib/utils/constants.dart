import 'package:flutter/material.dart';

const kMainColor = Color(0xFF6C63FF);

final kRoundedTextFieldDecoration = InputDecoration(
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(
          color: kMainColor
      )
  ),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(
          color: kMainColor
      )
  ),
  fillColor: Colors.white,
  filled: true,
  hintText: 'Email',
);