import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  const TextApp({
    required this.text,
    required this.style,
    this.maxLines,
    this.softWrap,
    this.textOverflow,
    this.textAlign,
    super.key,
  });
  final String text;
  final TextStyle style;
  final int? maxLines;
  final bool? softWrap;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: softWrap,
      style: style,
      overflow: textOverflow,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
