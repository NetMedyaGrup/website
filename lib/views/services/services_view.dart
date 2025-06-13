// lib/views/services_view.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/header.dart';
import 'package:flutter_application_2/widgets/footer.dart';
import 'package:flutter_application_2/l10n/strings.dart';
import 'package:flutter_application_2/widgets/middle_click_link.dart';

/// Asset path sabitleri
const String advertisingManagementConsultancyImg =
    'assets/images/services/advertising_management_consultancy.jpg';
const String googleAdvertisingConsultancyImg =
    'assets/images/services/google_advertising_consultancy.jpg';
const String graphicDesignImg = 'assets/images/services/graphic_design.jpg';
const String logoDesignCorporateIdentityImg =
    'assets/images/services/logo_design_corporate_identity.jpg';
const String socialMediaManagementImg =
    'assets/images/services/social_media_management.jpg';
const String videoPhotographyDroneProdImg =
    'assets/images/services/video_photography_drone_prod.jpg';
const String virtualTourImg = 'assets/images/services/virtual_tour.jpg';
const String visualMappingModelingImg =
    'assets/images/services/visual_mapping_modeling.jpg';
const String webDesignDevImg = 'assets/images/services/web_design_dev.jpg';

/// Hizmet verilerini tutan model
class _ServiceData {
  final String imageAsset;
  final String title;
  final String description;
  final String routeName;

  _ServiceData({
    required this.imageAsset,
    required this.title,
    required this.description,
    required this.routeName,
  });
}

class ServicesView extends StatelessWidget {
  final VoidCallback toggleTheme;
  final Function(Locale) changeLanguage;
  final String currentLanguageCode;

  const ServicesView({
    super.key,
    required this.toggleTheme,
    required this.changeLanguage,
    required this.currentLanguageCode,
  });

  @override
  Widget build(BuildContext context) {
    final lang = currentLanguageCode;

    // 1) Hizmet verileri: sadece routeName ile
    final services = <_ServiceData>[
      _ServiceData(
        imageAsset: socialMediaManagementImg,
        title: AppStrings.get('svc_social_title', lang),
        description: AppStrings.get('svc_social_sub', lang),
        routeName: '/socialMedia',
      ),
      _ServiceData(
        imageAsset: logoDesignCorporateIdentityImg,
        title: AppStrings.get('svc_logo_title', lang),
        description: AppStrings.get('svc_logo_sub', lang),
        routeName:
            '/logoDesign', // bu rotayı main.dart'ta tanımlamayı unutmayın
      ),
      _ServiceData(
        imageAsset: videoPhotographyDroneProdImg,
        title: AppStrings.get('svc_video_title', lang),
        description: AppStrings.get('svc_video_sub', lang),
        routeName: '/videoProd',
      ),
      _ServiceData(
        imageAsset: virtualTourImg,
        title: AppStrings.get('svc_tour_title', lang),
        description: AppStrings.get('svc_tour_sub', lang),
        routeName: '/tour360',
      ),
      _ServiceData(
        imageAsset: visualMappingModelingImg,
        title: AppStrings.get('svc_mapping_title', lang),
        description: AppStrings.get('svc_mapping_sub', lang),
        routeName: '/mapping',
      ),
      _ServiceData(
        imageAsset: webDesignDevImg,
        title: AppStrings.get('svc_web_title', lang),
        description: AppStrings.get('svc_web_sub', lang),
        routeName: '/webDev',
      ),
      _ServiceData(
        imageAsset: graphicDesignImg,
        title: AppStrings.get('svc_graphic_title', lang),
        description: AppStrings.get('svc_graphic_sub', lang),
        routeName: '/graphicDesign',
      ),
      _ServiceData(
        imageAsset: advertisingManagementConsultancyImg,
        title: AppStrings.get('svc_campaign_title', lang),
        description: AppStrings.get('svc_campaign_sub', lang),
        routeName: '/adConsult',
      ),
      _ServiceData(
        imageAsset: googleAdvertisingConsultancyImg,
        title: AppStrings.get('svc_adsconsult_title', lang),
        description: AppStrings.get('svc_adsconsult_sub', lang),
        routeName: '/googleMeta',
      ),
    ];

    // “Neler Yapıyoruz?” bölümü
    final nelerYapiyoruzTitle = Text(
      AppStrings.get('neler_title', lang),
      style: Theme.of(
        context,
      ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
    );
    final nelerYapiyoruzParagraph = Text(
      AppStrings.get('neler_full_desc', lang),
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(height: 1.5),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          color: Colors.black87,
          child: Header(
            changeLanguage: changeLanguage,
            onLogoTap:
                () => Navigator.of(
                  context,
                ).pushNamedAndRemoveUntil('/', (route) => false),
            onAboutTap: () => Navigator.of(context).pushNamed('/about'),
            onCareersTap: () => Navigator.of(context).pushNamed('/career'),
            onReferencesTap:
                () => Navigator.of(context).pushNamed('/references'),
            onWorksTap: () => Navigator.of(context).pushNamed('/works'),
            onServicesTap: () {}, // zaten burada
            onContactTap: () => Navigator.of(context).pushNamed('/contact'),
            onVideoProdTap: () => Navigator.of(context).pushNamed('/videoProd'),
            onGoogleMetaTap:
                () => Navigator.of(context).pushNamed('/googleMeta'),
            onMappingTap: () => Navigator.of(context).pushNamed('/mapping'),
            onTour360Tap: () => Navigator.of(context).pushNamed('/tour360'),
            onAdConsultTap: () => Navigator.of(context).pushNamed('/adConsult'),
            onSocialMediaTap:
                () => Navigator.of(context).pushNamed('/socialMedia'),
            onGraphicDesignTap:
                () => Navigator.of(context).pushNamed('/graphicDesign'),
            onLogoDesignTap:
                () => Navigator.of(context).pushNamed('/logoDesign'),
            onWebDevTap: () => Navigator.of(context).pushNamed('/webDev'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // AppBar altı boşluk
            SizedBox(height: kToolbarHeight + 120),

            // Hizmetlerimiz başlığı
            Text(
              AppStrings.get('servicesMenu', lang),
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),

            // İçerik bloğu
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final isMobile = constraints.maxWidth < 800;
                  return isMobile
                      ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          nelerYapiyoruzTitle,
                          const SizedBox(height: 12),
                          nelerYapiyoruzParagraph,
                          const SizedBox(height: 24),
                          SizedBox(
                            height: 260,
                            child: PageView.builder(
                              controller: PageController(
                                initialPage: services.length * 1000,
                                viewportFraction: 0.9,
                              ),
                              padEnds: false,
                              itemBuilder: (context, index) {
                                final realIndex = index % services.length;
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: _buildServiceCard(
                                    services[realIndex],
                                    context,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      )
                      : Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                nelerYapiyoruzTitle,
                                const SizedBox(height: 12),
                                nelerYapiyoruzParagraph,
                              ],
                            ),
                          ),
                          const SizedBox(width: 40),
                          Flexible(
                            flex: 4,
                            child: SizedBox(
                              height: 350,
                              child: PageView.builder(
                                controller: PageController(
                                  initialPage: services.length * 1000,
                                  viewportFraction: 0.35,
                                ),
                                padEnds: false,
                                itemBuilder: (context, index) {
                                  final realIndex = index % services.length;
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: _buildServiceCard(
                                      services[realIndex],
                                      context,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      );
                },
              ),
            ),

            const SizedBox(height: 120),
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

  Widget _buildServiceCard(_ServiceData svc, BuildContext context) {
    return MiddleClickLink(
      url: svc.routeName,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(svc.imageAsset, fit: BoxFit.cover),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black87.withOpacity(0.6),
                    Colors.black54.withOpacity(0.2),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Positioned(
              left: 24,
              bottom: 24,
              right: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    svc.title,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    svc.description,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                  ),
                  const SizedBox(height: 16),
                  // Butonu ister bırak, ister MiddleClickLink ile de sar
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/contact');
                    },
                    child: Text(
                      AppStrings.get(
                        'getQuote',
                        Localizations.localeOf(context).languageCode,
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
