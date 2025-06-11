// lib/widgets/platform_iframe_web.dart

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
// import 'dart:ui' as ui;    ← yorumlayın
import 'package:flutter/widgets.dart';

class PlatformIframe extends StatelessWidget {
  const PlatformIframe({
    super.key,
    required this.viewType,
    required this.iframeUrl,
  });
  final String viewType;
  final String iframeUrl;

  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    // ui.platformViewRegistry.registerViewFactory(viewType, (id) {
    //   return html.IFrameElement()
    //     ..src = iframeUrl
    //     ..style.border = 'none'
    //     ..style.width = '100%'
    //     ..style.height = '100%';
    // });
    return HtmlElementView(viewType: viewType);
  }
}
