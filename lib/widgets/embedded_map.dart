// lib/widgets/embedded_map.dart

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/platform_iframe.dart';

class EmbeddedMap extends StatelessWidget {
  const EmbeddedMap({Key? key}) : super(key: key);

  static const String mapUrl =
      'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3066.032816703621!2d32.8557314!3d39.9132612!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d34f8ac6935263%3A0x1648a285b14dc5fd!2sKavakl%C4%B1dere%2C%20Esat%20Cd.%20No%3A12%20%C4%B0%C3%A7%20Kap%C4%B1%20No%3A1%2C%2006680%20%C3%87ankaya%2FAnkara!5e0!3m2!1str!2str!4v1713114063327!5m2!1str!2str';
  static const _viewType = 'embedded-map-ankara';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child:
          kIsWeb
              ? const PlatformIframe(viewType: _viewType, iframeUrl: mapUrl)
              : const Center(
                child: Text('Harita yalnızca Web’de görüntülenir'),
              ),
    );
  }
}
