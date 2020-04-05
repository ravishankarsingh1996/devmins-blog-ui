import 'package:flutter/widgets.dart';
import 'card.dart';

class NeuButton extends StatefulWidget {
  const NeuButton({
    @required this.onPressed,
    this.child,
    this.padding = const EdgeInsets.all(12.0),
    this.shape = BoxShape.rectangle,
    Key key,
    this.bevel = 5,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry padding;
  final BoxShape shape;
  final double bevel;

  @override
  _NeuButtonState createState() => _NeuButtonState();
}

class _NeuButtonState extends State<NeuButton> {
  bool _isPressed = false;

  void _toggle(bool value) {
    if (_isPressed != value) {
      setState(() {
        _isPressed = value;
      });
    }
  }

  void _tapDown() => _toggle(true);

  void _tapUp() => _toggle(false);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTapDown: (_) => _tapDown(),
        onTapUp: (_) => _tapUp(),
        onTapCancel: _tapUp,
        onTap: widget.onPressed,
        child: NeuCard(
          curveType: _isPressed ? CurveType.emboss : CurveType.flat,
          bevel: widget.bevel,
          padding: widget.padding,
          child: widget.child,
          alignment: Alignment.center,
          decoration: NeumorphicDecoration(
            borderRadius: widget.shape == BoxShape.circle
                ? null
                : BorderRadius.circular(16),
            shape: widget.shape,
          ),
        ),
      );
}
