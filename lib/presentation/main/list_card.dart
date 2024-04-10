import 'package:flutter/material.dart';
import 'package:smart_dictionary/presentation/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListCard extends StatelessWidget {
  final String title;
  final String wordCount;
  final String leadingIcon;
  const ListCard({
    super.key,
    required this.title,
    required this.wordCount,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListTile(
        leading: SvgPicture.network(
          leadingIcon,
          width: 34,
          height: 34,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            letterSpacing: 0,
          ),
        ),
        subtitle: Text(
          "слов: $wordCount",
          style: const TextStyle(
            letterSpacing: 0,
          ),
        ),
        trailing: const Icon(
          Icons.keyboard_arrow_down_sharp,
          size: 24,
        ),
        dense: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        tileColor: AppColors.baseContainerColor,
      ),
    );
  }
}
