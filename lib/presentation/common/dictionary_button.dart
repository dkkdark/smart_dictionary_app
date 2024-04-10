import 'package:flutter/material.dart';
import 'package:smart_dictionary/presentation/theme/colors.dart';

class DictionaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const DictionaryButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.primaryColor),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            fixedSize: const Size.fromHeight(48),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          child: Text(
            text,
            style: const TextStyle(
                color: AppColors.onPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
