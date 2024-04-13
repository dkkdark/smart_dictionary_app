import 'package:flutter/material.dart';
import 'package:smart_dictionary/core/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DictionaryTextField extends StatefulWidget {
  final String hint;
  final Widget? iconList;
  final String? icon;
  final String? title;

  const DictionaryTextField(
      {super.key,
      required this.hint,
      this.iconList,
      this.icon,
      required this.title});

  @override
  State<DictionaryTextField> createState() => _DictionaryTextFieldState();
}

class _DictionaryTextFieldState extends State<DictionaryTextField> {
  final containerKey = GlobalKey();
  bool _isListVisible = false;
  double? buttonWidth;

  void printWidgetPosition() {
    print('absolute coordinates on screen: ${containerKey.globalPaintBounds}');
    setState(() {
      buttonWidth = containerKey.globalPaintBounds?.left;
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      printWidgetPosition();
    });
    super.initState();
  }

  Widget getButton() {
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
                    Text(widget.title!),
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Stack(
        children: [
          Container(
            width: buttonWidth,
            decoration: BoxDecoration(
              color: AppColors.baseContainerColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: widget.hint,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 12.0),
                    border: InputBorder.none,
                  ),
                ),
                if (widget.iconList != null) widget.iconList!,
              ],
            ),
          ),
          if (widget.icon != null && widget.title != null) getButton()
        ],
      ),
    );
  }
}

extension GlobalKeyExtension on GlobalKey {
  Rect? get globalPaintBounds {
    final renderObject = currentContext?.findRenderObject();
    final matrix = renderObject?.getTransformTo(null);

    if (matrix != null && renderObject?.paintBounds != null) {
      final rect = MatrixUtils.transformRect(matrix, renderObject!.paintBounds);
      return rect;
    } else {
      return null;
    }
  }
}

class IconsList extends StatelessWidget {
  final List<String> results;
  final double iconSize;
  const IconsList({super.key, required this.results, required this.iconSize});

  @override
  Widget build(BuildContext context) {
    final int crossAxisCount = MediaQuery.of(context).size.width ~/ iconSize;

    return Column(
      children: [
        const Divider(
          thickness: 3.0,
        ),
        const SizedBox(height: 12.0),
        if (results.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 16.0,
              ),
              itemCount: results.length,
              itemBuilder: (context, index) {
                return Center(
                  child: SvgPicture.network(
                    results[index],
                    width: iconSize,
                    height: iconSize,
                  ),
                );
              },
            ),
          )
        else
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'No results',
              style: TextStyle(fontSize: 16),
            ),
          ),
        const SizedBox(height: 12.0),
      ],
    );
  }
}
