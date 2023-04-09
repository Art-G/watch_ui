import 'dart:math';

import 'package:flutter/material.dart';
import 'package:watch_ui/src/widgets/button.dart';

class WAction {
  final String label;
  final VoidCallback handler;
  Icon? icon;

  WAction({Key? key, required this.label, required this.handler});
}

/// How to use :
/// The WCard size will adapt to the parent size.
/// If you want it to be a specific size, you can add a container.
class WCard extends StatefulWidget {
  WCard({
    Key? key,
    required this.id,
    required this.image,
    required this.tapHandler,
    this.highlight,
    this.action,
  }) : super(key: key);

  final double id;
  final VoidCallback tapHandler;
  final Image image;
  String? highlight;
  WAction? action;

  @override
  State<WCard> createState() => _WCardState();
}

class _WCardState extends State<WCard> {
  double x = 0;
  double y = 0;
  double amplitude = 0.00005;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()
          ..setEntry(3, 0, x)
          ..setEntry(3, 1, y),
        child: GestureDetector(
          onTap: widget.tapHandler,
          onPanUpdate: (details) {
            if (x - details.delta.dx < 0) {
              setState(() {
                x = max(x - details.delta.dx / 100000, -amplitude);
              });
            } else {
              setState(() {
                x = min(x - details.delta.dx / 100000, amplitude);
              });
            }

            if (y - details.delta.dy < 0) {
              setState(() {
                y = max(y - details.delta.dy / 100000, -amplitude);
              });
            } else {
              setState(() {
                y = min(y - details.delta.dy / 100000, amplitude);
              });
            }
          },
          onPanEnd: (details) {
            setState(() {
              x = 0;
              y = 0;
            });
          },
          child: AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: widget.image.image,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                      color: const Color(0xFF000000),
                      width: 1.0,
                      style: BorderStyle.solid),
                  boxShadow: const [
                    BoxShadow(color: Color(0xFF000000), blurRadius: 6)
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (widget.highlight != null)
                      Text(widget.highlight!,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              decoration: TextDecoration.none)),
                    const SizedBox(
                      height: 10,
                    ),
                    if (widget.action != null)
                      WButton(
                          label: widget.action!.label,
                          handler: widget.action!.handler),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
