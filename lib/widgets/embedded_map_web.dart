// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

/// Web derlemesinde gerçek iframe
class EmbeddedMap extends StatelessWidget {
  const EmbeddedMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // footer’da kullanacağınız yükseklik
      width: double.infinity,
      child: HtmlElementView(viewType: 'google-map-iframe'),
    );
  }
}
