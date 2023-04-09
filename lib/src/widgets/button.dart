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
      style: ButtonStyle(
        minimumSize: const MaterialStatePropertyAll(Size.fromHeight(40)),
        foregroundColor:
            MaterialStatePropertyAll<Color>(foregroundColor ?? Colors.black),
        backgroundColor:
            MaterialStatePropertyAll<Color>(backgroundColor ?? Colors.white),
      ),
      child: Text(label),
    );
  }
}
