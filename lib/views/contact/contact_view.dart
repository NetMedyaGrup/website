// lib/views/contact/contact_view.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/embedded_map.dart';
import 'package:flutter_application_2/widgets/footer.dart';
import 'package:flutter_application_2/widgets/header.dart';
import 'package:flutter_application_2/l10n/strings.dart';
import 'package:flutter_application_2/widgets/contact_section.dart';

/// Bir ajansın iletişim sayfası, sol ve sağdaki kartlar
/// ekran genişliğine göre yan yana veya dikey diziliyor,
/// altında tek renkli harita ve footer var.
class ContactView extends StatelessWidget {
  final VoidCallback toggleTheme;
  final Function(Locale) changeLanguage;
  final String currentLanguageCode;

  const ContactView({
    super.key,
    required this.toggleTheme,
    required this.changeLanguage,
    required this.currentLanguageCode,
  });

  static const _mobileBreakpoint = 600.0;

  @override
  Widget build(BuildContext context) {
    final lang = currentLanguageCode;
    final scrollController = ScrollController();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Header(
          changeLanguage: changeLanguage,
          onLogoTap:
              () => Navigator.of(
                context,
              ).pushNamedAndRemoveUntil('/', (route) => false),
          onAboutTap: () => Navigator.of(context).pushNamed('/about'),
          onCareersTap: () => Navigator.of(context).pushNamed('/career'),
          onReferencesTap: () => Navigator.of(context).pushNamed('/references'),
          onWorksTap: () => Navigator.of(context).pushNamed('/works'),
          onServicesTap: () => Navigator.of(context).pushNamed('/services'),
          onContactTap: () {},
          onVideoProdTap: () => Navigator.pushNamed(context, '/videoProd'),
          onGoogleMetaTap: () => Navigator.pushNamed(context, '/googleMeta'),
          onMappingTap: () => Navigator.pushNamed(context, '/mapping'),
          onTour360Tap: () => Navigator.pushNamed(context, '/tour360'),
          onAdConsultTap: () => Navigator.pushNamed(context, '/adConsult'),
          onSocialMediaTap: () => Navigator.pushNamed(context, '/socialMedia'),
          onGraphicDesignTap:
              () => Navigator.pushNamed(context, '/graphicDesign'),
          onWebDevTap: () => Navigator.pushNamed(context, '/webDev'),
          onLogoDesignTap: () => Navigator.pushNamed(context, '/logoDesign'),
        ),
      ),
      body: Stack(
        children: [
          // 1) Arka plan resmi
          Positioned.fill(
            child: Image.asset(
              'assets/images/contact-background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // 2) Koyu overlay (opaklık)
          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.4)),
          ),
          // 3) Asıl içerik
          SingleChildScrollView(
            controller: scrollController,
            padding: const EdgeInsets.only(top: kToolbarHeight + 16),
            child: Column(
              children: [
                // ─── Kartlar ve Form ───
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1200),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 40,
                      ),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          final isMobile =
                              constraints.maxWidth < _mobileBreakpoint;
                          final emailFontSize = isMobile ? 24.0 : 32.0;
                          final headingFontSize = isMobile ? 20.0 : 24.0;

                          // ── İLETİŞİM BİLGİLERİ KARTI ──
                          final infoCard = Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 24,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 26),
                                  Text(
                                    AppStrings.get('contact_us', lang),
                                    style: TextStyle(
                                      fontSize: headingFontSize,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 18),
                                  // E-posta satırı (Expanded ile sığdırılıyor)
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.email,
                                        color: Colors.blue,
                                        size: 30,
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          AppStrings.get(
                                            'contact_email_value',
                                            lang,
                                          ),
                                          style: TextStyle(
                                            fontSize: emailFontSize,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 34),
                                  // ── Telefon Satırları ──
                                  Wrap(
                                    spacing: 18,
                                    runSpacing: 12,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    children: [
                                      // Müşteri Desteği
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.phone,
                                            color: Colors.redAccent,
                                            size: 25,
                                          ),
                                          const SizedBox(width: 8),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                AppStrings.get(
                                                  'contact_support_label',
                                                  lang,
                                                ),
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              const SizedBox(height: 2),
                                              Text(
                                                AppStrings.get(
                                                  'contact_support_value',
                                                  lang,
                                                ),
                                                style: const TextStyle(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      // Ofis GSM
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.phone_android,
                                            color: Colors.redAccent,
                                            size: 25,
                                          ),
                                          const SizedBox(width: 8),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                AppStrings.get(
                                                  'contact_office_gsm_label',
                                                  lang,
                                                ),
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              const SizedBox(height: 2),
                                              Text(
                                                AppStrings.get(
                                                  'contact_office_gsm_value',
                                                  lang,
                                                ),
                                                style: const TextStyle(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 34),
                                  const Divider(height: 24),
                                  // Genel Merkez Adresi
                                  Text(
                                    AppStrings.get(
                                      'address_general_label',
                                      lang,
                                    ),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    AppStrings.get(
                                      'address_general_value',
                                      lang,
                                    ),
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                  const SizedBox(height: 46),
                                  // Yönetim Ofisi Adresi
                                  Text(
                                    AppStrings.get(
                                      'address_management_label',
                                      lang,
                                    ),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    AppStrings.get(
                                      'address_management_value',
                                      lang,
                                    ),
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          );

                          // ── İLETİŞİM FORMU KARTI ──
                          final formCard = Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: ContactSection(currentLanguageCode: lang),
                            ),
                          );

                          if (isMobile) {
                            // Mobil: dikey dizilim
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                infoCard,
                                const SizedBox(height: 24),
                                formCard,
                              ],
                            );
                          }

                          // Desktop/tablet: yan yana, eşit yükseklik için IntrinsicHeight
                          return IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(flex: 5, child: infoCard),
                                const SizedBox(width: 24),
                                Expanded(flex: 5, child: formCard),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 24),
                // ─── FULL-WIDTH TEK RENKLİ HARİTA ───
                LayoutBuilder(
                  builder: (context, _) {
                    final isMobile =
                        MediaQuery.of(context).size.width < _mobileBreakpoint;
                    return SizedBox(
                      height: isMobile ? 200 : 300,
                      width: double.infinity,
                      child: ColorFiltered(
                        colorFilter: const ColorFilter.matrix(<double>[
                          0.2126,
                          0.7152,
                          0.0722,
                          0,
                          0,
                          0.2126,
                          0.7152,
                          0.0722,
                          0,
                          0,
                          0.2126,
                          0.7152,
                          0.0722,
                          0,
                          0,
                          0,
                          0,
                          0,
                          1,
                          0,
                        ]),
                        child: const EmbeddedMap(),
                      ),
                    );
                  },
                ),

                // ─── Footer ───
                Footer(
                  scrollController: scrollController,
                  onAboutTap:
                      () => scrollController.animateTo(
                        0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
