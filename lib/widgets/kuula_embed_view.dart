// lib/views/work/kuula_embed_view.dart

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/footer.dart';
import 'package:flutter_application_2/widgets/platform_iframe.dart';

class KuulaEmbedView extends StatelessWidget {
  const KuulaEmbedView({Key? key}) : super(key: key);

  static const _viewType = 'kuula-iframe';
  static const _iframeUrl =
      'https://kuula.co/share/collection/71f3D?logo=-1&info=0&fs=1&vr=1&zoom=1&gyro=0&thumbs=1';

  @override
  Widget build(BuildContext context) {
    // AppBar ve Footer yüksekliğini çıkarıp iframe için yükseklik hesaplayalım
    final appBarHeight = kToolbarHeight + MediaQuery.of(context).padding.top;
    const footerHeight = 100.0; // Footer’ın tahmini yüksekliği
    final screenHeight = MediaQuery.of(context).size.height;
    final iframeHeight = screenHeight - appBarHeight - footerHeight;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('360° Sanal Tur'),
        leading: const BackButton(color: Colors.white),
      ),
      // body’de SingleChildScrollView kullanalım:
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1) Web’de iframe’i sabit yükseklikle göster, sayfa kaydırılabilir
            if (kIsWeb)
              SizedBox(
                height: iframeHeight,
                width: double.infinity,
                child: const PlatformIframe(
                  viewType: _viewType,
                  iframeUrl: _iframeUrl,
                ),
              )
            else
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  '360° sanal tur yalnızca web üzerinde görüntülenebilir.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),

            // 2) Footer sayfanın sonunda
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
