import 'package:flutter/material.dart';
import 'package:flutter_application_2/l10n/strings.dart';
import 'package:flutter_application_2/widgets/embedded_map.dart';
import 'package:flutter_application_2/widgets/middle_click_link.dart';
import 'package:flutter_application_2/widgets/site_logo.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

/// Küçük model sınıfı, başlık + tıklama callback’i için
class _Link {
  final String text;
  final String route;
  _Link(this.text, this.route);
}

class Footer extends StatelessWidget {
  final ScrollController scrollController;

  // Kurumsal
  final VoidCallback onAboutTap;
  final VoidCallback onCareersTap;
  final VoidCallback onContactTap;

  // Hizmetler
  final VoidCallback onVideoProdTap;
  final VoidCallback onGoogleMetaTap;
  final VoidCallback onMappingTap;
  final VoidCallback onTour360Tap;
  final VoidCallback onAdConsultTap;
  final VoidCallback onSocialMediaTap;
  final VoidCallback onGraphicDesignTap;
  final VoidCallback onWebDevTap;
  final VoidCallback onLogoDesignTap;

  const Footer({
    super.key,
    required this.scrollController,
    required this.onAboutTap,
    required this.onCareersTap,
    required this.onContactTap,
    required this.onVideoProdTap,
    required this.onGoogleMetaTap,
    required this.onMappingTap,
    required this.onTour360Tap,
    required this.onAdConsultTap,
    required this.onSocialMediaTap,
    required this.onGraphicDesignTap,
    required this.onWebDevTap,
    required this.onLogoDesignTap,
  });

  void _launch(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  void _scrollToTop() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 600;

    return Container(
      color: Colors.black87,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 40,
        vertical: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Mobilde dikey, masaüstünde yatay düzen
          if (isMobile) ...[
            _buildLinksSection(lang, AppStrings.get('services', lang), [
              _Link(AppStrings.get('videoProd', lang), '/videoProd'),
              _Link(AppStrings.get('googleMeta', lang), '/googleMeta'),
              _Link(AppStrings.get('mapping', lang), '/mapping'),
              _Link(AppStrings.get('tour360', lang), '/tour360'),
              _Link(AppStrings.get('adConsult', lang), '/adConsult'),
              _Link(AppStrings.get('socialMedia', lang), '/socialMedia'),
              _Link(AppStrings.get('graphicDesign', lang), '/graphicDesign'),
              _Link(AppStrings.get('webDev', lang), '/webDev'),
              _Link(AppStrings.get('logoDesign', lang), '/logoDesign'),
            ]),
            const SizedBox(height: 24),
            _buildLinksSection(lang, AppStrings.get('corporate', lang), [
              _Link(AppStrings.get('about', lang), '/about'),
              _Link(AppStrings.get('careers', lang), '/career'),
            ]),
            const SizedBox(height: 24),
            _buildMapSection(lang),
          ] else ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 2, child: _buildLogoSection(lang)),
                const SizedBox(width: 40),
                Expanded(
                  flex: 2,
                  child: _buildLinksSection(
                    lang,
                    AppStrings.get('services', lang),
                    [
                      _Link(AppStrings.get('videoProd', lang), '/videoProd'),
                      _Link(AppStrings.get('googleMeta', lang), '/googleMeta'),
                      _Link(AppStrings.get('mapping', lang), '/mapping'),
                      _Link(AppStrings.get('tour360', lang), '/tour360'),
                      _Link(AppStrings.get('adConsult', lang), '/adConsult'),
                      _Link(
                        AppStrings.get('socialMedia', lang),
                        '/socialMedia',
                      ),
                      _Link(
                        AppStrings.get('graphicDesign', lang),
                        '/graphicDesign',
                      ),
                      _Link(AppStrings.get('webDev', lang), '/webDev'),
                      _Link(AppStrings.get('logoDesign', lang), '/logoDesign'),
                    ],
                  ),
                ),
                const SizedBox(width: 40),
                Expanded(
                  flex: 2,
                  child: _buildLinksSection(
                    lang,
                    AppStrings.get('corporate', lang),
                    [
                      _Link(AppStrings.get('about', lang), '/about'),
                      _Link(AppStrings.get('careers', lang), '/career'),
                    ],
                  ),
                ),
                const SizedBox(width: 40),
                Expanded(flex: 3, child: _buildMapSection(lang)),
              ],
            ),
          ],

          const SizedBox(height: 40),

          // Alt satır: copyright, sosyal ikonlar, yukarı çık
          _buildBottomRow(lang),
        ],
      ),
    );
  }

  Widget _buildLogoSection(String lang) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SiteLogo(height: 60, onTap: () {}),
      const SizedBox(height: 12),
      Text(
        AppStrings.get('footer_motto', lang),
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 6),
      Text(
        AppStrings.get('footer_company', lang),
        style: const TextStyle(fontSize: 14, color: Colors.white70),
      ),
    ],
  );

  Widget _buildLinksSection(String lang, String title, List<_Link> links) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          for (final link in links)
            MiddleClickLink(
              url: link.route,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Text(
                  link.text,
                  style: const TextStyle(color: Colors.white70),
                ),
              ),
            ),
        ],
      );

  Widget _buildMapSection(String lang) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        AppStrings.get('footer_location', lang),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 12),
      ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: SizedBox(height: 200, child: const EmbeddedMap()),
      ),
    ],
  );

  Widget _buildBottomRow(String lang) {
    return Row(
      children: [
        // 1) Copyright metni: ekranı aşarsa kısalsın
        Expanded(
          child: Text(
            AppStrings.get('footer_copyright', lang),
            style: const TextStyle(color: Colors.white54, fontSize: 13),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),

        const SizedBox(width: 16),

        // 2) Sosyal ikonlar: ihtiyaç kadar alan kaplasın
        Wrap(
          spacing: 16,
          children: [
            IconButton(
              icon: const Icon(Icons.tiktok, color: Colors.white70),
              onPressed:
                  () => _launch('https://www.tiktok.com/@netmedyaoffical'),
            ),
            IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.instagram,
                color: Colors.white70,
              ),
              onPressed:
                  () => _launch('https://www.instagram.com/netmedyagrup/'),
            ),
            IconButton(
              icon: const Icon(Icons.mail, color: Colors.white70),
              onPressed: onContactTap,
            ),
          ],
        ),

        const SizedBox(width: 8),

        // 3) Yukarı çık butonu
        IconButton(
          icon: const Icon(Icons.keyboard_arrow_up, color: Colors.white),
          tooltip: 'Yukarı çık',
          onPressed: _scrollToTop,
        ),
      ],
    );
  }
}
