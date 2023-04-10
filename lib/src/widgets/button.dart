import 'package:flutter/material.dart';

class WButton extends StatelessWidget {
  WButton({
    Key? key,
    required this.label,
    required this.handler,
    this.foregroundColor,
    this.backgroundColor,
  }) : super(key: key);

  final String label;
  final VoidCallback handler;
  Color? foregroundColor;
  Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: handler,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(40),
        foregroundColor: foregroundColor ?? Colors.black,
        animationDuration: const Duration(milliseconds: 1000),
        backgroundColor: backgroundColor ?? Colors.white,
        shadowColor: foregroundColor ?? Colors.black,
      ),
      child: Text(
        label,
      ),
    );
  }
}
