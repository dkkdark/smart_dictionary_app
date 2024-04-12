import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_dictionary/presentation/common/dictionary_text_field.dart';
import 'package:smart_dictionary/presentation/theme/colors.dart';

class ListChosingButton extends StatefulWidget {
  final String? icon;
  final String title;

  const ListChosingButton({super.key, this.icon, required this.title});

  @override
  State<ListChosingButton> createState() => _ListChosingButtonState();
}

class _ListChosingButtonState extends State<ListChosingButton> {
  bool _isListVisible = false;
  final containerKey = GlobalKey();
  //VoidCallback buttonWidth;

  void printWidgetPosition() {
    print(
        '11 absolute coordinates on screen: ${containerKey.globalPaintBounds}');
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      printWidgetPosition();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: UnconstrainedBox(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.baseContainerColor),
              child: ElevatedButton(
                key: containerKey,
                onPressed: () {
                  setState(() {
                    _isListVisible = !_isListVisible;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                child: Row(
                  children: [
                    if (widget.icon != null)
                      SvgPicture.network(
                        widget.icon!,
                        width: 24,
                        height: 24,
                      ),
                    const SizedBox(width: 8.0),
                    Text(widget.title),
                  ],
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: _isListVisible,
          child: Align(
            alignment: Alignment.topRight,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.baseContainerColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8.0),
                      child: Text("data1"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.baseContainerColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8.0),
                      child: Text("data1"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
