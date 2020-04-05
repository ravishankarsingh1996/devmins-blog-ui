import 'package:flutter/material.dart';

class NeuText extends StatelessWidget {
  const NeuText(
    this.text, {
    this.parentColor,
    this.spread,
    this.depth,
    this.style,
    this.emboss,
  });

  final String text;
  final Color parentColor;
  final TextStyle style;
  final double spread;
  final int depth;
  final bool emboss;

  @override
  Widget build(BuildContext context) {
    final int depthValue = depth == null ? 40 : depth;

    final textStyle = style ?? DefaultTextStyle.of(context).style;
    Color colorValue = style?.color ?? Color(0xFFf0f0f0);
    final Color outerColorValue = parentColor ?? colorValue;

    double fontSizeValue = textStyle.fontSize;

    fontSizeValue =
        textStyle.fontSize != null ? textStyle.fontSize : fontSizeValue;
    final double spreadValue =
        spread == null ? _getSpread(fontSizeValue) : spread;
    final bool embossValue = emboss == null ? false : emboss;

    List<Shadow> shadowList = [
      Shadow(
        color: _getAdjustColor(
          outerColorValue,
          embossValue ? 0 - depthValue : depthValue,
        ),
        offset: Offset(0 - spreadValue / 2, 0 - spreadValue / 2),
        blurRadius: spreadValue,
      ),
      Shadow(
        color: _getAdjustColor(
          outerColorValue,
          embossValue ? depthValue : 0 - depthValue,
        ),
        offset: Offset(spreadValue / 2, spreadValue / 2),
        blurRadius: spreadValue,
      )
    ];

    if (embossValue) {
      shadowList = shadowList.reversed.toList();
      colorValue = _getAdjustColor(colorValue, 0 - depthValue);
    }

    return Text(
      text,
      style: textStyle.copyWith(
        color: colorValue,
        shadows: shadowList,
        fontSize: fontSizeValue,
      ),
    );
  }

  Color _getAdjustColor(Color baseColor, amount) {
    Map colors = {
      'r': baseColor.red,
      'g': baseColor.green,
      'b': baseColor.blue
    };
    colors = colors.map((key, value) {
      if (value + amount < 0) {
        return MapEntry(key, 0);
      }
      if (value + amount > 255) {
        return MapEntry(key, 255);
      }
      return MapEntry(key, value + amount);
    });
    return Color.fromRGBO(colors['r'], colors['g'], colors['b'], 1);
  }

  double _getSpread(base) {
    final double calculated = (base / 10).floor().toDouble();
    return calculated == 0 ? 1 : calculated;
  }
}
