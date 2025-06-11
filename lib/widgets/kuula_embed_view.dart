import 'dart:html' as html;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/footer.dart';

class KuulaEmbedView extends StatelessWidget {
  const KuulaEmbedView({Key? key}) : super(key: key);

  void _scrollToTour() {
    // Navigate to the "kuula-tour" section in index.html
    html.window.location.hash = 'kuula-tour';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('360° Sanal Tur'),
        backgroundColor: Colors.black87,
        leading: const BackButton(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child:
                  kIsWeb
                      ? ElevatedButton(
                        onPressed: _scrollToTour,
                        child: const Text('360° Sanal Turu Başlat'),
                      )
                      : const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          '360° sanal tur yalnızca web üzerinde görüntülenebilir.',
                          textAlign: TextAlign.center,
                        ),
                      ),
            ),
          ),
          // Footer stays at bottom
          Footer(
            scrollController: ScrollController(),
            onAboutTap: () => Navigator.pushNamed(context, '/about'),
            onCareersTap: () => Navigator.pushNamed(context, '/career'),
            onContactTap: () => Navigator.pushNamed(context, '/contact'),
            onVideoProdTap: () => Navigator.pushNamed(context, '/videoProd'),
            onGoogleMetaTap: () => Navigator.pushNamed(context, '/googleMeta'),
            onMappingTap: () => Navigator.pushNamed(context, '/mapping'),
            onTour360Tap: _scrollToTour,
            onAdConsultTap: () => Navigator.pushNamed(context, '/adConsult'),
            onSocialMediaTap:
                () => Navigator.pushNamed(context, '/socialMedia'),
            onGraphicDesignTap:
                () => Navigator.pushNamed(context, '/graphicDesign'),
            onWebDevTap: () => Navigator.pushNamed(context, '/webDev'),
            onLogoDesignTap: () => Navigator.pushNamed(context, '/logoDesign'),
          ),
        ],
      ),
    );
  }
}
