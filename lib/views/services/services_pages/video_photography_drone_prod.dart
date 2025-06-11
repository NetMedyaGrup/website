// lib/services/services_pages/video_photography_drone_prod.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/header.dart';
import 'package:flutter_application_2/widgets/footer.dart';
import 'package:flutter_application_2/l10n/strings.dart';

/// “Video, Fotoğraf & Drone Prodüksiyonu” servisi sayfası.
class VideoPhotographyDroneProdPage extends StatelessWidget {
  final VoidCallback toggleTheme;
  final Function(Locale) changeLanguage;

  const VideoPhotographyDroneProdPage({
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
                        AppStrings.get('video_prod_page_title', locale),
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),

                      // Sol metin – Sağ görsel düzeni
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
                            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            AppStrings.get('video_prod_cta', locale),
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
              onVideoProdTap:
                  () => Navigator.of(context).pushNamed('/videoProd'),
              onGoogleMetaTap:
                  () => Navigator.of(context).pushNamed('/googleMeta'),
              onMappingTap: () => Navigator.of(context).pushNamed('/mapping'),
              onTour360Tap: () => Navigator.of(context).pushNamed('/tour360'),
              onAdConsultTap:
                  () => Navigator.of(context).pushNamed('/adConsult'),
              onSocialMediaTap:
                  () => Navigator.of(context).pushNamed('/socialMedia'),
              onGraphicDesignTap:
                  () => Navigator.of(context).pushNamed('/graphicDesign'),
              onWebDevTap: () => Navigator.of(context).pushNamed('/webDev'),
              onLogoDesignTap:
                  () => Navigator.of(context).pushNamed('/logoDesign'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextContent(BuildContext context, String locale) {
    final titleStyle = Theme.of(context).textTheme.titleMedium!.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 18,
    );
    final bodyStyle = Theme.of(context).textTheme.bodyLarge!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Başlık cümlesi
        Text(AppStrings.get('video_prod_para1', locale), style: titleStyle),
        const SizedBox(height: 12),

        // Giriş metni
        Text(AppStrings.get('video_prod_para2', locale), style: bodyStyle),
        const SizedBox(height: 24),

        // Detaylı tanıtım
        Text(
          AppStrings.get('video_prod_para3', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('video_prod_para4', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('video_prod_para5', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('video_prod_para6', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('video_prod_para7', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 32),

        // Tanıtım Filmi alt başlığı
        Text(AppStrings.get('promo_video_title', locale), style: titleStyle),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('promo_video_para1', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('promo_video_para2', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('promo_video_para3', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('promo_video_para4', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('promo_video_para5', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 32),

        // Reels alt başlığı
        Text(AppStrings.get('reels_title', locale), style: titleStyle),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('reels_para1', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('reels_para2', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('reels_para3', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('reels_para4', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('reels_para5', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 32),

        // Ürün Çekimi alt başlığı
        Text(AppStrings.get('product_photo_title', locale), style: titleStyle),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('product_photo_para1', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('product_photo_para2', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('product_photo_para3', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('product_photo_para4', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('product_photo_para5', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('product_photo_para6', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.get('product_photo_para7', locale),
          style: bodyStyle.copyWith(height: 1.5),
        ),
      ],
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'assets/images/services/video_photography_drone_prod.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
