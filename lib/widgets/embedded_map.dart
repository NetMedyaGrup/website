import 'dart:html' as html;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

class EmbeddedMap extends StatelessWidget {
  const EmbeddedMap({Key? key}) : super(key: key);

  void _scrollToMap() {
    // Jump to the #embedded-map anchor in index.html
    html.window.location.hash = 'embedded-map';
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
