import 'package:flutter/widgets.dart';

class NeuTorch extends InheritedWidget {
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    throw UnimplementedError();
  }
}

enum LightPosition {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}
