import 'package:flutter/material.dart';

class FloatingButtonWidget extends StatelessWidget {
  const FloatingButtonWidget(
      {Key? key,
      required this.icon,
      required this.onClick,
      this.iconSize,
      this.color})
      : super(key: key);
  final IconData icon;
  final double? iconSize;
  final Color? color;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onClick,
      heroTag: '',
      backgroundColor:
          color ?? Theme.of(context).floatingActionButtonTheme.backgroundColor,
      child: Icon(
        icon,
        size: iconSize ?? Theme.of(context).floatingActionButtonTheme.iconSize,
      ),
    );
  }
}
