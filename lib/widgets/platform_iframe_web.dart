// lib/widgets/platform_iframe_web.dart

// Bu dosya yalnızca Web derlemesinde kullanılır:
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
// Web API’sinin ui namespace’i:
import 'dart:ui' as ui;
import 'package:flutter/widgets.dart';

class PlatformIframe extends StatelessWidget {
  final String viewType;
  final String iframeUrl;
  const PlatformIframe({
    Key? key,
    required this.viewType,
    required this.iframeUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Tek sefer register et
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
