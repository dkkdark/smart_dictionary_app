import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_dictionary/presentation/theme/colors.dart';

class DictionaryFab extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData icon;
  const DictionaryFab(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      label: Text(
        text,
        style: const TextStyle(
            color: AppColors.onPrimaryColor, fontWeight: FontWeight.bold),
      ),
      icon: Icon(
        icon,
        color: AppColors.onPrimaryColor,
      ),
      backgroundColor: AppColors.primaryColor,
    );
  }
}
