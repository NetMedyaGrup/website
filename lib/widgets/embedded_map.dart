// lib/embedded_map.dart
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'dart:html' as html;

// stub/web şartlı import
import 'embedded_map_stub.dart' if (dart.library.html) 'embedded_map_web.dart';

class EmbeddedMapToggle extends StatelessWidget {
  const EmbeddedMapToggle({Key? key}) : super(key: key);

  void _scrollToMap() {
    if (kIsWeb) {
      html.document
          .getElementById('embedded-map')
          ?.scrollIntoView(html.ScrollAlignment.TOP);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Center(
        child:
            kIsWeb
                ? ElevatedButton(
                  onPressed: _scrollToMap,
                  child: const Text('Haritaya Git'),
                )
                : const Text('Harita yalnızca web üzerinde görüntülenir.'),
      ),
    );
  }
}
