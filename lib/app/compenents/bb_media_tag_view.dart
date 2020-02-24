import 'package:flutter/material.dart';

import '../utils/bb_utils.dart';
import '../models/bb_text_attributes_definations.dart';

export '../models/bb_text_attributes.dart';

BorderRadius _borderRadius = BorderRadius.circular(2.0);

class BBMediaTagView extends StatelessWidget {
  final TextAttributesDifinations textAttributes;
  final BorderRadius borderRadius;
  final EdgeInsets contentInsets;
  BBMediaTagView({
    Key key,
    this.textAttributes,
    this.borderRadius,
    this.contentInsets = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return textAttributes == null ||
            textAttributes.text == null ||
            textAttributes.text.isEmpty
        ? SizedBox.shrink()
        : Container(
            padding: contentInsets,
            decoration: BoxDecoration(
              color: BBColor.from(
                  Theme.of(context).brightness == Brightness.light
                      ? textAttributes?.backgroundColor
                      : textAttributes?.darkModeBackgroundColor),
              border: Border.all(
                color: BBColor.from(
                        Theme.of(context).brightness == Brightness.light
                            ? textAttributes.borderColor
                            : textAttributes.darkModeBorderColor) ??
                    Colors.transparent,
              ),
              borderRadius: borderRadius ?? _borderRadius,
            ),
            child: Center(
              child: Text(
                textAttributes.text,
                style: TextStyle(
                  fontSize: 10.0,
                  color: BBColor.from(
                      Theme.of(context).brightness == Brightness.light
                          ? textAttributes.textColor
                          : textAttributes.darkModeTextColor),
                ),
              ),
            ),
          );
  }
}
