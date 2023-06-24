import 'package:flutter/material.dart';
import 'package:gymapp/_core/app_colors.dart';

InputDecoration getAuthInputDecoration(String label) {
  return InputDecoration(
    hintText: label,
    label: Text(label),
    fillColor: Colors.white,
    filled: true,
    contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide: const BorderSide(
        color: AppColors.darkBlue,
        width: 4,
      ),
    ),
  );
}
