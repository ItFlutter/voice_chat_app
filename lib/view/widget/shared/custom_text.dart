import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  // final int? maxLines;
  final bool isVisible;
  final bool isUnderLine;
  final TextAlign? textAlign;
  final Color? decorationColor;
  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.isVisible = false,
    this.isUnderLine = false,
    this.textAlign,
    this.decorationColor,
    // this.maxLines
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        // maxLines: maxLines,
        overflow: isVisible ? TextOverflow.visible : TextOverflow.ellipsis,
        textAlign: textAlign,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color,
          decoration:
              isUnderLine ? TextDecoration.underline : TextDecoration.none,
          decorationColor: decorationColor,
        ));
  }
}
