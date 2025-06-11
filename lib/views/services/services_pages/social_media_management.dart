// lib/services/services_pages/social_media_management.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/header.dart';
import 'package:flutter_application_2/widgets/footer.dart';
import 'package:flutter_application_2/l10n/strings.dart';

/// “Sosyal Medya Yönetimi” servisi sayfası.
/// services_view.dart içinde page: const SocialMediaManagementPage()
/// referansını buradaki class adıyla eşleştirin.
class SocialMediaManagementPage extends StatelessWidget {
  /// Uygulamanın temasını değiştirmek için kullanılacak callback.
  final VoidCallback toggleTheme;

  /// Uygulamanın dilini değiştirmek için kullanılacak callback.
  /// Örneğin: (newLocale) => context.read<LocaleNotifier>().setLocale(newLocale)
  final Function(Locale) changeLanguage;

  const SocialMediaManagementPage({
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
            // ► HEADER: sadece burayı siyah yapıyoruz
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
                        AppStrings.get('social_media_page_title', locale),
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 12),
                      // Alt başlık
                      Text(
                        AppStrings.get('social_media_page_sub', locale),
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w600),
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
                            AppStrings.get('social_media_cta', locale),
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

  /// Sayfanın sol tarafındaki metin bloğunu oluşturan metod
  Widget _buildTextContent(BuildContext context, String locale) {
    final bodyStyle = Theme.of(
      context,
    ).textTheme.bodyLarge!.copyWith(height: 1.5);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.get('social_media_para1', locale), style: bodyStyle),
        const SizedBox(height: 16),
        Text(AppStrings.get('social_media_para2', locale), style: bodyStyle),
        const SizedBox(height: 16),
        Text(AppStrings.get('social_media_para3', locale), style: bodyStyle),
        const SizedBox(height: 16),
        Text(AppStrings.get('social_media_para4', locale), style: bodyStyle),
        const SizedBox(height: 16),
        Text(AppStrings.get('social_media_para5', locale), style: bodyStyle),
      ],
    );
  }

  /// Sağ tarafta gösterilecek görseli döndüren metod
  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'assets/images/services/social_media_management.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
