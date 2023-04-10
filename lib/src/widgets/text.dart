import 'package:flutter/material.dart';
import 'package:watch_ui/src/shared/colors.dart';
import 'package:watch_ui/src/shared/styles.dart';

class WText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const WText.headingOne(this.text) : style = heading1Style;
  const WText.headingTwo(this.text) : style = heading2Style;
  const WText.headingThree(this.text) : style = heading3Style;
  const WText.headline(this.text) : style = headlineStyle;
  const WText.subheading(this.text) : style = subheadingStyle;
  const WText.caption(this.text) : style = captionStyle;

  WText.body(this.text, {Color color = kcMediumGreyColor})
      : style = bodyStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}
