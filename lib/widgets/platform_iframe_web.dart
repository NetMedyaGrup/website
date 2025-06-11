// lib/widgets/platform_iframe_web.dart

import 'dart:html' as html;
import 'dart:ui' as ui;
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
    ui.platformViewRegistry.registerViewFactory(viewType, (int viewId) {
      return html.IFrameElement()
        ..src = iframeUrl
        ..style.border = 'none'
        ..style.width = '100%'
        ..style.height = '100%';
    });
    return HtmlElementView(viewType: viewType);
  }
}
