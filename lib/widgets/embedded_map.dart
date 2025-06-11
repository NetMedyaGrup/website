import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
// ignore: deprecated_member_use
import 'dart:html' as html;
import 'dart:js_interop';

class EmbeddedMap extends StatefulWidget {
  const EmbeddedMap({super.key});

  @override
  State<EmbeddedMap> createState() => _EmbeddedMapState();
}

class _EmbeddedMapState extends State<EmbeddedMap> {
  bool _shouldLoadMap = false;
  bool _iframeRegistered = false;

  static const String mapUrl =
      'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3066.032816703621!2d32.8557314!3d39.9132612!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d34f8ac6935263%3A0x1648a285b14dc5fd!2sKavaklıdere%2C%20Esat%20Cd.%20No%3A12%20İç%20Kapı%20No%3A1%2C%2006680%20Çankaya%2FAnkara!5e0!3m2!1str!2str!4v1713114063327!5m2!1str!2str';
  static const String viewId = 'embedded-map-ankara';

  void _registerIframeOnce() {
    if (_iframeRegistered) return;

    final iframe =
        html.IFrameElement()
          ..src = mapUrl
          ..style.border = '0'
          ..style.width = '100%'
          ..style.height = '100%'
          ..allowFullscreen = true;

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(viewId, (int _) => iframe);

    _iframeRegistered = true;
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('embedded-map-visibility'),
      onVisibilityChanged: (info) {
        if (!_shouldLoadMap && info.visibleFraction > 0.3) {
          setState(() {
            _shouldLoadMap = true;
            _registerIframeOnce();
          });
        }
      },
      child: SizedBox(
        height: 300,
        child:
            _shouldLoadMap
                ? const HtmlElementView(viewType: viewId)
                : const Center(child: Text("Harita yükleniyor...")),
      ),
    );
  }
}
