import 'package:flutter/material.dart';
import 'package:flutter_application_2/l10n/strings.dart';
import 'package:flutter_application_2/widgets/site_logo.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'hover_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onLogoTap;
  final VoidCallback onServicesTap;
  final VoidCallback onAboutTap;
  final VoidCallback onCareersTap;
  final VoidCallback onReferencesTap;
  final VoidCallback onWorksTap;
  final VoidCallback onContactTap;
  final VoidCallback onVideoProdTap;
  final VoidCallback onGoogleMetaTap;
  final VoidCallback onMappingTap;
  final VoidCallback onTour360Tap;
  final VoidCallback onAdConsultTap;
  final VoidCallback onSocialMediaTap;
  final VoidCallback onGraphicDesignTap;
  final VoidCallback onWebDevTap;
  final VoidCallback onLogoDesignTap;
  final Function(Locale) changeLanguage;

  const Header({
    Key? key,
    required this.onLogoTap,
    required this.onServicesTap,
    required this.onAboutTap,
    required this.onCareersTap,
    required this.onReferencesTap,
    required this.onWorksTap,
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
    required this.changeLanguage,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  void _launch(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  void _openMobileMenu(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    showModalBottomSheet(
      backgroundColor: const Color.fromARGB(207, 41, 41, 41),
      barrierColor: Colors.black.withOpacity(0.5),
      context: context,
      builder: (ctx) {
        int state = 0; // 0=main,1=services,2=corporate
        return StatefulBuilder(
          builder: (ctx2, setState) {
            List<Widget> items;
            if (state == 1) {
              // Services submenu
              items = [
                ListTile(
                  leading: const Icon(Icons.arrow_back),
                  onTap: () => setState(() => state = 0),
                ),
                ListTile(
                  title: Text(
                    AppStrings.get('servicesMenu', lang),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pop(ctx2);
                    onServicesTap();
                  },
                ),
                ListTile(
                  title: Text(AppStrings.get('videoProd', lang)),
                  onTap: () {
                    Navigator.pop(ctx2);
                    onVideoProdTap();
                  },
                ),
                ListTile(
                  title: Text(AppStrings.get('googleMeta', lang)),
                  onTap: () {
                    Navigator.pop(ctx2);
                    onGoogleMetaTap();
                  },
                ),
                ListTile(
                  title: Text(AppStrings.get('mapping', lang)),
                  onTap: () {
                    Navigator.pop(ctx2);
                    onMappingTap();
                  },
                ),
                ListTile(
                  title: Text(AppStrings.get('tour360', lang)),
                  onTap: () {
                    Navigator.pop(ctx2);
                    onTour360Tap();
                  },
                ),
                ListTile(
                  title: Text(AppStrings.get('adConsult', lang)),
                  onTap: () {
                    Navigator.pop(ctx2);
                    onAdConsultTap();
                  },
                ),
                ListTile(
                  title: Text(AppStrings.get('socialMedia', lang)),
                  onTap: () {
                    Navigator.pop(ctx2);
                    onSocialMediaTap();
                  },
                ),
                ListTile(
                  title: Text(AppStrings.get('graphicDesign', lang)),
                  onTap: () {
                    Navigator.pop(ctx2);
                    onGraphicDesignTap();
                  },
                ),
                ListTile(
                  title: Text(AppStrings.get('webDev', lang)),
                  onTap: () {
                    Navigator.pop(ctx2);
                    onWebDevTap();
                  },
                ),
                ListTile(
                  title: Text(AppStrings.get('logoDesign', lang)),
                  onTap: () {
                    Navigator.pop(ctx2);
                    onLogoDesignTap();
                  },
                ),
              ];
            } else if (state == 2) {
              // Corporate submenu
              items = [
                ListTile(
                  leading: const Icon(Icons.arrow_back),
                  onTap: () => setState(() => state = 0),
                ),
                ListTile(
                  title: Text(AppStrings.get('about', lang)),
                  onTap: () {
                    Navigator.pop(ctx2);
                    onAboutTap();
                  },
                ),
                ListTile(
                  title: Text(AppStrings.get('careers', lang)),
                  onTap: () {
                    Navigator.pop(ctx2);
                    onCareersTap();
                  },
                ),
              ];
            } else {
              // Main menu
              items = [
                // 1) Büyük “Hemen Teklif Al” butonu
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ElevatedButton(
                    onPressed: onContactTap,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(102, 153, 204, 255),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(AppStrings.get('getQuote', lang)),
                  ),
                ),
                const Divider(),

                // 2) Kurumsal
                ListTile(
                  title: Text(AppStrings.get('corporate', lang)),
                  onTap: () => setState(() => state = 2),
                ),

                // 3) Referanslarımız
                ListTile(
                  title: Text(AppStrings.get('references', lang)),
                  onTap: () {
                    Navigator.pop(ctx2);
                    onReferencesTap();
                  },
                ),

                // 4) Çalışmalarımız
                ListTile(
                  title: Text(AppStrings.get('works', lang)),
                  onTap: () {
                    Navigator.pop(ctx2);
                    onWorksTap();
                  },
                ),

                // 5) Hizmetlerimiz
                ListTile(
                  title: Text(AppStrings.get('servicesMenu', lang)),
                  onTap: () => setState(() => state = 1),
                ),

                // 6) İletişime Geçin
                ListTile(
                  title: Text(AppStrings.get('contact_us', lang)),
                  onTap: () {
                    Navigator.pop(ctx2);
                    onContactTap();
                  },
                ),

                const Divider(),

                // 7) Sosyal Medya Linkleri
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.facebook, color: Colors.white),
                        onPressed:
                            () => _launch(
                              'https://www.facebook.com/profile.php?id=61573492821315',
                            ),
                      ),
                      IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                        ),
                        onPressed:
                            () => _launch(
                              'https://www.instagram.com/netmedyagrup/',
                            ),
                      ),
                    ],
                  ),
                ),
              ];
            }

            return Theme(
              data: Theme.of(context).copyWith(
                listTileTheme: const ListTileThemeData(
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800, // ekstra kalın
                    fontSize: 18, // isteğe bağlı: daha büyük puntoda
                  ),
                ),
              ),
              child: SafeArea(
                child: ListView(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 24,
                  ),
                  children: items,
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 1200;

    if (isMobile) {
      return SafeArea(
        child: Container(
          color: Colors.transparent,
          height: kToolbarHeight,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              SiteLogo(height: 40, width: 100, onTap: onLogoTap),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () => _openMobileMenu(context),
              ),
            ],
          ),
        ),
      );
    }

    // Desktop layout remains unchanged...
    return SafeArea(
      child: Container(
        color: Colors.transparent,
        height: kToolbarHeight,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            SiteLogo(height: 80, width: 160, onTap: onLogoTap),
            const Spacer(),
            HoverMenu(
              title: Row(
                children: [
                  Text(
                    AppStrings.get('corporate', lang),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_down, color: Colors.white),
                ],
              ),
              onTap: onAboutTap,
              items: [
                _menuItem(context, 'about', onAboutTap),
                _menuItem(context, 'careers', onCareersTap),
              ],
            ),
            const SizedBox(width: 24),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: onReferencesTap,
              child: Text(
                AppStrings.get('references', lang),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 24),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: onWorksTap,
              child: Text(
                AppStrings.get('works', lang),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 24),
            HoverMenu(
              title: InkWell(
                onTap: onServicesTap,
                child: Row(
                  children: [
                    Text(
                      AppStrings.get('servicesMenu', lang),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down, color: Colors.white),
                  ],
                ),
              ),
              onTap: onServicesTap,
              items: [
                _menuItem(context, 'videoProd', onVideoProdTap),
                _menuItem(context, 'googleMeta', onGoogleMetaTap),
                _menuItem(context, 'mapping', onMappingTap),
                _menuItem(context, 'tour360', onTour360Tap),
                _menuItem(context, 'adConsult', onAdConsultTap),
                _menuItem(context, 'socialMedia', onSocialMediaTap),
                _menuItem(context, 'graphicDesign', onGraphicDesignTap),
                _menuItem(context, 'webDev', onWebDevTap),
                _menuItem(context, 'logoDesign', onLogoDesignTap),
              ],
            ),
            const SizedBox(width: 24),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: onContactTap,
              child: Text(
                AppStrings.get('contact_us', lang),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            PopupMenuButton<String>(
              icon: const Icon(Icons.language, color: Colors.white),
              onSelected: (code) => changeLanguage(Locale(code)),
              itemBuilder:
                  (_) => const [
                    PopupMenuItem(value: 'tr', child: Text('TR')),
                    PopupMenuItem(value: 'en', child: Text('EN')),
                  ],
            ),
            const SizedBox(width: 24),
            IconButton(
              icon: const Icon(Icons.facebook),
              color: Colors.white,
              onPressed:
                  () => _launch(
                    'https://www.facebook.com/profile.php?id=61573492821315',
                  ),
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.instagram),
              color: Colors.white,
              onPressed:
                  () => _launch('https://www.instagram.com/netmedyagrup/'),
            ),
            const SizedBox(width: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(102, 153, 204, 255),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: onContactTap,
              child: Text(AppStrings.get('getQuote', lang)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuItem(BuildContext context, String key, VoidCallback onTap) {
    final lang = Localizations.localeOf(context).languageCode;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Text(
          AppStrings.get(key, lang),
          style: const TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
