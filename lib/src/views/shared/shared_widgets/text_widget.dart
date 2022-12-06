import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
    this.overflow,
    this.padding,
    this.height,
    this.align,
    this.maxLines,
  }) : super(key: key);
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextOverflow? overflow;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final TextAlign? align;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        text,
        style: TextStyle(
          color: color ?? Colors.white,
          fontSize: fontSize ?? 16.sp,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontFamily: fontFamily ?? 'Poppins',
          overflow: overflow ?? TextOverflow.visible,
          height: height,
        ),
        textAlign: align,
        maxLines: maxLines,
      ),
    );
  }
}
