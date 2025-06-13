import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MiddleClickAction extends StatelessWidget {
  final VoidCallback onActivate;
  final Widget child;
  const MiddleClickAction({
    Key? key,
    required this.onActivate,
    required this.child,
  }) : super(key: key);

  static const int _kMiddleMouseButton = 4;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (event) {
        if (kIsWeb &&
            event.kind == PointerDeviceKind.mouse &&
            (event.buttons & _kMiddleMouseButton) != 0) {
          onActivate();
        }
      },
      child: InkWell(onTap: onActivate, child: child),
    );
  }
}
