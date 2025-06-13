// lib/widgets/middle_click_link.dart
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:html' as html;

class MiddleClickLink extends StatelessWidget {
  final String url;
  final Widget child;

  const MiddleClickLink({Key? key, required this.url, required this.child})
    : super(key: key);

  static const int _kMiddleMouseButton = 4;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (event) {
        if (kIsWeb &&
            event.kind == PointerDeviceKind.mouse &&
            (event.buttons & _kMiddleMouseButton) != 0) {
          // Yeni sekme
          html.window.open(url, '_blank');
        }
      },
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          // Flutter router üzerinden gezin
          Navigator.of(context).pushNamed(url);
        },
        child: child,
      ),
    );
  }
}
