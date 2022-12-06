import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
  const CircleButtonWidget({
    Key? key,
    required this.side,
    required this.onClick,
    this.color,
    this.decoratedImage,
    this.child,
    this.padding,
    this.margin,
  }) : super(key: key);
  final double side;
  final VoidCallback onClick;
  final Color? color;
  final DecorationImage? decoratedImage;
  final Widget? child;
  final EdgeInsetsGeometry? padding, margin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: padding ?? const EdgeInsets.all(5),
        margin: margin,
        height: side,
        width: side,
        decoration: BoxDecoration(
          color: color,
          image: decoratedImage,
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0.5, 0.5),
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 2,
            ),
          ],
        ),
        child: Center(child: child ?? const SizedBox()),
      ),
    );
  }
}
