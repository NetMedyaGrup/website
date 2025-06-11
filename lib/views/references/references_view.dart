import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/header.dart';
import 'package:flutter_application_2/widgets/footer.dart';
import 'package:flutter_application_2/l10n/strings.dart';

/// Bir ajansın referanslarını listeleyen sayfa.
class ReferencesView extends StatefulWidget {
  final VoidCallback toggleTheme;
  final Function(Locale) changeLanguage;
  final String currentLanguageCode;

  const ReferencesView({
    Key? key,
    required this.toggleTheme,
    required this.changeLanguage,
    required this.currentLanguageCode,
  }) : super(key: key);

  @override
  State<ReferencesView> createState() => _ReferencesViewState();
}

class _ReferencesViewState extends State<ReferencesView> {
  final ScrollController _scrollController = ScrollController();

  static const List<String> _logoPaths = [
    'assets/images/refs/AlohaBurgerito.png',
    'assets/images/refs/arquetlgoob.png',
    'assets/images/refs/defaultofficeimage.png',
    'assets/images/refs/logo_brass-transformed.png',
    'assets/images/refs/n5.png',
    'assets/images/refs/pepsi-logo_brandlogos.net_3bfir.png',
    'assets/images/refs/simlogo-Kopya.png',
    'assets/images/refs/cimcim.png',
    'assets/images/refs/shebit.png',
  ];

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final isMobile = w < 600; // 600 px altı mobil varsayımı

    // Başlık stili
    final headingStyle = Theme.of(context).textTheme.headlineSmall?.copyWith(
      color: Colors.white,
      fontSize: isMobile ? 20 : null, // mobilde 20px yap
    );

    // Grid ayarları
    final crossCount = isMobile ? 2 : 3; // mobilde 2 sütun
    final spacing = isMobile ? 16.0 : 35.0; // kenar boşlukları
    final aspect = isMobile ? 1.2 : 2.5; // kareye yakın oran

    return Scaffold(
      body: Stack(
        children: [
          // 1) En altta: tam ekran arka plan resmi
          SizedBox.expand(
            child: Image.asset(
              'assets/images/background_ref.jpg', // Kendi arka plan resminiz
              fit: BoxFit.cover,
            ),
          ),

          // 2) Üstüne bindirilen yarı opak gri katman
          Container(
            color: Colors.grey.shade900.withOpacity(0.5),
            // Opaklık değeriyle oynayabilirsiniz (0.0 – 1.0 arası)
          ),
          SingleChildScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // HEADER
                Container(
                  color: Colors.black87,
                  child: Header(
                    changeLanguage: widget.changeLanguage,
                    onLogoTap:
                        () => Navigator.of(
                          context,
                        ).pushNamedAndRemoveUntil('/', (route) => false),
                    onServicesTap:
                        () => Navigator.pushNamed(context, '/services'),
                    onAboutTap: () => Navigator.pushNamed(context, '/about'),
                    onCareersTap: () => Navigator.pushNamed(context, '/career'),
                    onReferencesTap: () {}, // şu an bu sayfa
                    onWorksTap: () => Navigator.pushNamed(context, '/works'),
                    onContactTap:
                        () => Navigator.pushNamed(context, '/contact'),
                    onVideoProdTap:
                        () => Navigator.pushNamed(context, '/videoProd'),
                    onGoogleMetaTap:
                        () => Navigator.pushNamed(context, '/googleMeta'),
                    onMappingTap:
                        () => Navigator.pushNamed(context, '/mapping'),
                    onTour360Tap:
                        () => Navigator.pushNamed(context, '/tour360'),
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

                SizedBox(height: isMobile ? 60 : 100),

                // İçerik Başlığı
                // Başlık
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 16 : 120,
                  ),
                  child: Text(
                    AppStrings.get(
                      'referencesHeading',
                      widget.currentLanguageCode,
                    ),
                    style: headingStyle,
                  ),
                ),
                SizedBox(height: isMobile ? 40 : 62),
                // Logo Grid
                // Logo Grid
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 16 : 120,
                  ),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossCount,
                      mainAxisSpacing: spacing,
                      crossAxisSpacing: spacing,
                      childAspectRatio: aspect,
                    ),
                    itemCount: _logoPaths.length,
                    itemBuilder:
                        (ctx, i) => Card(
                          color: Colors.transparent,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7),
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Image.asset(_logoPaths[i]),
                            ),
                          ),
                        ),
                  ),
                ),

                SizedBox(height: isMobile ? 80 : 120),

                // FOOTER
                Container(
                  color: Colors.black87,
                  child: Footer(
                    scrollController: _scrollController,
                    onAboutTap: () => Navigator.pushNamed(context, '/about'),
                    onCareersTap: () => Navigator.pushNamed(context, '/career'),
                    onContactTap:
                        () => Navigator.pushNamed(context, '/contact'),
                    onVideoProdTap:
                        () => Navigator.pushNamed(context, '/videoProd'),
                    onGoogleMetaTap:
                        () => Navigator.pushNamed(context, '/googleMeta'),
                    onMappingTap:
                        () => Navigator.pushNamed(context, '/mapping'),
                    onTour360Tap:
                        () => Navigator.pushNamed(context, '/tour360'),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
