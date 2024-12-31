import 'package:flutter/material.dart';

extension KeyboardUtile on BuildContext {
  void hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
} 