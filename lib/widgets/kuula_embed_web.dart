// kuula_embed_web.dart
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart' show kIsWeb;

class KuulaEmbed extends StatelessWidget {
  const KuulaEmbed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return const Center(child: Text('360° tur yalnızca web’de.'));
    }
    return SizedBox(
      height: 600, // istediğiniz yükseklik
      width: double.infinity,
      child: HtmlElementView(viewType: 'kuula-tour-iframe'),
    );
  }
}
