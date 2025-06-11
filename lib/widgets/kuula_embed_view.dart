// lib/views/work/kuula_embed_view.dart

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/footer.dart';

/// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:ui' as ui;

class KuulaEmbedView extends StatefulWidget {
  const KuulaEmbedView({Key? key}) : super(key: key);

  static const String _viewType = 'kuula-iframe';
  static const String _iframeUrl =
      'https://kuula.co/share/collection/71f3D?logo=-1&info=0&fs=1&vr=1&zoom=1&gyro=0&thumbs=1';

  @override
  State<KuulaEmbedView> createState() => _KuulaEmbedViewState();
}

class _KuulaEmbedViewState extends State<KuulaEmbedView> {
  bool _registered = false;

  void _registerIframe() {
    if (_registered) return;
    // Tek sefer register et
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(KuulaEmbedView._viewType, (
      int viewId,
    ) {
      final iframe =
          html.IFrameElement()
            ..src = KuulaEmbedView._iframeUrl
            ..style.border = 'none'
            ..style.width = '100%'
            ..style.height = '100%'
            ..allowFullscreen = true;
      return iframe;
    });
    _registered = true;
  }

  @override
  Widget build(BuildContext context) {
    // AppBar yüksekliğini aldıktan sonra kalan alanı hesaplayacağız
    final appBarHeight = kToolbarHeight + MediaQuery.of(context).padding.top;
    // Footer’ın yaklaşık yüksekliğini tahmin edin (örneğin 100px)
    const footerHeight = 100.0;
    // Ekranın toplam yüksekliği
    final screenHeight = MediaQuery.of(context).size.height;
    // Iframe’in kaplaması gereken yükseklik
    final iframeHeight = screenHeight - appBarHeight - footerHeight;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('360° Sanal Tur'),
        leading: const BackButton(color: Colors.white),
      ),
      // 1) body’yi SingleChildScrollView ile sarmalıyoruz
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 2) Web dışı platform kontrolü
            if (!kIsWeb)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  '360° sanal tur yalnızca web üzerinde görüntülenebilir.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              )
            else ...[
              // 3) iframe’i register edip tam yüksekliğe yerleştiriyoruz
              Builder(
                builder: (_) {
                  _registerIframe();
                  return SizedBox(
                    width: double.infinity,
                    height: iframeHeight,
                    child: const HtmlElementView(
                      viewType: KuulaEmbedView._viewType,
                    ),
                  );
                },
              ),
            ],
            // 4) Footer’u sütunun sonunda gösteriyoruz
            Footer(
              scrollController: ScrollController(),
              onAboutTap: () => Navigator.pushNamed(context, '/about'),
              onCareersTap: () => Navigator.pushNamed(context, '/career'),
              onContactTap: () => Navigator.pushNamed(context, '/contact'),
              onVideoProdTap: () => Navigator.pushNamed(context, '/videoProd'),
              onGoogleMetaTap:
                  () => Navigator.pushNamed(context, '/googleMeta'),
              onMappingTap: () => Navigator.pushNamed(context, '/mapping'),
              onTour360Tap: () => Navigator.pushNamed(context, '/tour360'),
              onAdConsultTap: () => Navigator.pushNamed(context, '/adConsult'),
              onSocialMediaTap:
                  () => Navigator.pushNamed(context, '/socialMedia'),
              onGraphicDesignTap:
                  () => Navigator.pushNamed(context, '/graphicDesign'),
              onWebDevTap: () => Navigator.pushNamed(context, '/webDev'),
              onLogoDesignTap:
                  () => Navigator.pushNamed(context, '/logoDesign'),
            ),
          ],
        ),
      ),
    );
  }
}
