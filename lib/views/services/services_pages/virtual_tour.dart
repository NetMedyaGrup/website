// lib/services/services_pages/virtual_tour.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/header.dart';
import 'package:flutter_application_2/widgets/footer.dart';
import 'package:flutter_application_2/l10n/strings.dart';

/// “360° Sanal Tur” servisi sayfası.
class VirtualTourPage extends StatelessWidget {
  final VoidCallback toggleTheme;
  final Function(Locale) changeLanguage;

  const VirtualTourPage({
    Key? key,
    required this.toggleTheme,
    required this.changeLanguage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ► HEADER
            Container(
              color: Colors.black87,
              child: Header(
                changeLanguage: changeLanguage,
                onLogoTap: () => Navigator.of(context).pop(),
                onServicesTap:
                    () => Navigator.of(context).pushNamed('/services'),
                onAboutTap: () => Navigator.of(context).pushNamed('/about'),
                onCareersTap: () => Navigator.of(context).pushNamed('/career'),
                onReferencesTap:
                    () => Navigator.of(context).pushNamed('/references'),
                onWorksTap: () => Navigator.of(context).pushNamed('/works'),
                onContactTap: () => Navigator.of(context).pushNamed('/contact'),
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

            // ► İÇERİK
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 32.0,
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  bool isWide = constraints.maxWidth > 800;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Sayfa başlığı
                      Text(
                        AppStrings.get('virtual_tour_page_title', locale),
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 12),
                      // Alt başlık
                      Text(
                        AppStrings.get('virtual_tour_page_sub', locale),
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),

                      // Metin ve görsel düzeni
                      isWide
                          ? Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 6,
                                child: _buildTextContent(context, locale),
                              ),
                              const SizedBox(width: 40),
                              Expanded(flex: 4, child: _buildImage()),
                            ],
                          )
                          : Column(
                            children: [
                              _buildImage(),
                              const SizedBox(height: 24),
                              _buildTextContent(context, locale),
                            ],
                          ),

                      const SizedBox(height: 40),

                      // İletişim Butonu
                      Center(
                        child: ElevatedButton(
                          onPressed:
                              () => Navigator.of(context).pushNamed('/contact'),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                            backgroundColor: Colors.deepOrangeAccent,
                          ),
                          child: Text(
                            AppStrings.get('virtual_tour_cta', locale),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            // ► FOOTER
            Footer(
              scrollController: ScrollController(),
              onAboutTap: () => Navigator.of(context).pushNamed('/about'),
              onCareersTap: () => Navigator.of(context).pushNamed('/career'),
              onContactTap: () => Navigator.of(context).pushNamed('/contact'),
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

  Widget _buildTextContent(BuildContext context, String locale) {
    final bodyStyle = Theme.of(
      context,
    ).textTheme.bodyLarge!.copyWith(height: 1.5);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.get('virtual_tour_para1', locale), style: bodyStyle),
        const SizedBox(height: 16),
        Text(AppStrings.get('virtual_tour_para2', locale), style: bodyStyle),
        const SizedBox(height: 16),
        Text(AppStrings.get('virtual_tour_para3', locale), style: bodyStyle),
        const SizedBox(height: 16),
        Text(AppStrings.get('virtual_tour_para4', locale), style: bodyStyle),
      ],
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'assets/images/services/virtual_tour.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
