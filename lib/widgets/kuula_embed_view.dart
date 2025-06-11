import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'dart:ui' as ui; // HtmlElementView için
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/widgets/footer.dart'; // unutmayın

class KuulaEmbedView extends StatelessWidget {
  const KuulaEmbedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('360° Sanal Tur'),
        backgroundColor: Colors.black87,
        leading: const BackButton(color: Colors.white),
      ),
      body: ListView(
        children: [
          // 1. Kuula iframe
          if (kIsWeb)
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              width: double.infinity,
              child: HtmlElementView(viewType: 'kuula-tour-iframe'),
            )
          else
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '360° sanal tur yalnızca web üzerinde görüntülenebilir.',
                textAlign: TextAlign.center,
              ),
            ),

          // 2. Footer
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Footer(
                scrollController: ScrollController(),
                onAboutTap: () => Navigator.pushNamed(context, '/about'),
                onCareersTap: () => Navigator.pushNamed(context, '/career'),
                onContactTap: () => Navigator.pushNamed(context, '/contact'),
                onVideoProdTap:
                    () => Navigator.pushNamed(context, '/videoProd'),
                onGoogleMetaTap:
                    () => Navigator.pushNamed(context, '/googleMeta'),
                onMappingTap: () => Navigator.pushNamed(context, '/mapping'),
                onTour360Tap: () => Navigator.pushNamed(context, '/tour360'),
                onAdConsultTap:
                    () => Navigator.pushNamed(context, '/adConsult'),
                onSocialMediaTap:
                    () => Navigator.pushNamed(context, '/socialMedia'),
                onGraphicDesignTap:
                    () => Navigator.pushNamed(context, '/graphicDesign'),
                onWebDevTap: () => Navigator.pushNamed(context, '/webDev'),
                onLogoDesignTap:
                    () => Navigator.pushNamed(context, '/logoDesign'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
