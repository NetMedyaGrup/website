import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/middle_click_link.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_application_2/core/constants/colors.dart';
import 'package:flutter_application_2/l10n/strings.dart';
import 'package:flutter_application_2/widgets/references_carousel.dart';

class Service {
  final IconData icon;
  final String title;
  final String subtitle;
  final String description;

  Service({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.description,
  });
}

class DesktopHomeContent extends StatefulWidget {
  final ScrollController scrollController;

  const DesktopHomeContent({Key? key, required this.scrollController})
    : super(key: key);

  @override
  DesktopHomeContentState createState() => DesktopHomeContentState();
}

class DesktopHomeContentState extends State<DesktopHomeContent> {
  late final VideoPlayerController _videoController;
  late final PageController _pageController;
  int _currentPage = 0;

  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey referencesKey = GlobalKey();
  final GlobalKey worksKey = GlobalKey();
  final GlobalKey info2Key = GlobalKey();
  final GlobalKey servicesKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    _videoController = VideoPlayerController.asset(
        'assets/videos/1536315-hd_1920_1080_30fps.mp4',
      )
      ..initialize().then((_) {
        setState(() {});
        _videoController
          ..setLooping(true)
          ..setVolume(0)
          ..play();
      });

    _pageController = PageController(viewportFraction: 0.75)..addListener(() {
      final page = (_pageController.page ?? 0).round();
      if (page != _currentPage) {
        setState(() => _currentPage = page);
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _videoController.dispose();
    super.dispose();
  }

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final screenSize = MediaQuery.of(context).size;
    final isMobile = screenSize.width < 800;

    final horizontalPadding = isMobile ? 16.0 : 120.0;
    final heroHeight = isMobile ? screenSize.height * 0.5 : screenSize.height;
    final cardHeight = isMobile ? screenSize.height * 0.40 : 340.0;
    final servicesVerticalPadding = isMobile ? 40.0 : 80.0;
    final ctaVerticalPadding = isMobile ? 40.0 : 60.0;

    final services = [
      Service(
        icon: Icons.campaign,
        title: AppStrings.get('svc_social_title', lang),
        subtitle: AppStrings.get('svc_social_sub', lang),
        description: AppStrings.get('svc_social_desc', lang),
      ),
      Service(
        icon: Icons.design_services,
        title: AppStrings.get('svc_logo_title', lang),
        subtitle: AppStrings.get('svc_logo_sub', lang),
        description: AppStrings.get('svc_logo_desc', lang),
      ),
      Service(
        icon: Icons.photo_camera,
        title: AppStrings.get('svc_video_title', lang),
        subtitle: AppStrings.get('svc_video_sub', lang),
        description: AppStrings.get('svc_video_desc', lang),
      ),
      Service(
        icon: Icons.web,
        title: AppStrings.get('svc_promo_title', lang),
        subtitle: AppStrings.get('svc_promo_sub', lang),
        description: AppStrings.get('svc_promo_desc', lang),
      ),
      Service(
        icon: Icons.map,
        title: AppStrings.get('svc_reels_title', lang),
        subtitle: AppStrings.get('svc_reels_sub', lang),
        description: AppStrings.get('svc_reels_desc', lang),
      ),
      Service(
        icon: Icons.camera_alt,
        title: AppStrings.get('svc_product_title', lang),
        subtitle: AppStrings.get('svc_product_sub', lang),
        description: AppStrings.get('svc_product_desc', lang),
      ),
      Service(
        icon: Icons.camera,
        title: AppStrings.get('svc_tour_title', lang),
        subtitle: AppStrings.get('svc_tour_sub', lang),
        description: AppStrings.get('svc_tour_desc', lang),
      ),
      Service(
        icon: Icons.design_services,
        title: AppStrings.get('svc_mapping_title', lang),
        subtitle: AppStrings.get('svc_mapping_sub', lang),
        description: AppStrings.get('svc_mapping_desc', lang),
      ),
      Service(
        icon: Icons.code,
        title: AppStrings.get('svc_adsconsult_title', lang),
        subtitle: AppStrings.get('svc_adsconsult_sub', lang),
        description: AppStrings.get('svc_adsconsult_desc', lang),
      ),
      Service(
        icon: Icons.business_center,
        title: AppStrings.get('svc_campaign_title', lang),
        subtitle: AppStrings.get('svc_campaign_sub', lang),
        description: AppStrings.get('svc_campaign_desc', lang),
      ),
      Service(
        icon: Icons.design_services,
        title: AppStrings.get('svc_graphic_title', lang),
        subtitle: AppStrings.get('svc_graphic_sub', lang),
        description: AppStrings.get('svc_graphic_desc', lang),
      ),
      Service(
        icon: Icons.web,
        title: AppStrings.get('svc_web_title', lang),
        subtitle: AppStrings.get('svc_web_sub', lang),
        description: AppStrings.get('svc_web_desc', lang),
      ),
    ];

    return SingleChildScrollView(
      controller: widget.scrollController,
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // HERO + REFERENCES
          SizedBox(
            height: heroHeight,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                _videoController.value.isInitialized
                    ? SizedBox(
                      height: heroHeight,
                      width: double.infinity,
                      child: ClipRect(
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: SizedBox(
                            width: _videoController.value.size.width,
                            height: _videoController.value.size.height,
                            child: VideoPlayer(_videoController),
                          ),
                        ),
                      ),
                    )
                    : Container(color: CustomColor.primary),
                Container(color: Colors.black.withOpacity(0.4)),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: heroHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 16),
                      Column(
                        children: [
                          // First line
                          Stack(
                            children: [
                              Text(
                                AppStrings.get('hero_desc', lang),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: isMobile ? 20 : 28,
                                  fontWeight: FontWeight.w900,
                                  foreground:
                                      Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 3
                                        ..color = Colors.black.withOpacity(0.6),
                                ),
                              ),
                              Text(
                                AppStrings.get('hero_desc', lang),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: isMobile ? 20 : 28,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  shadows: const [
                                    Shadow(
                                      offset: Offset(0, 2),
                                      blurRadius: 4,
                                      color: Colors.black45,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          // Second line
                          Stack(
                            children: [
                              Text(
                                AppStrings.get('hero_desc_2', lang),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: isMobile ? 20 : 28,
                                  fontWeight: FontWeight.w900,
                                  foreground:
                                      Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 3
                                        ..color = Colors.black.withOpacity(0.6),
                                ),
                              ),
                              Text(
                                AppStrings.get('hero_desc_2', lang),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: isMobile ? 20 : 28,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  shadows: const [
                                    Shadow(
                                      offset: Offset(0, 2),
                                      blurRadius: 4,
                                      color: Colors.black45,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 48),
                      GestureDetector(
                        onTap: () => scrollToSection(servicesKey),
                        child: Icon(
                          Icons.arrow_downward_rounded,
                          size: isMobile ? 32 : 48,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  key: referencesKey,
                  left: isMobile ? 8 : 50,
                  right: isMobile ? 8 : 0,
                  bottom: isMobile ? 8 : 0,
                  child: Center(child: ReferencesCarousel(lang: lang)),
                ),
              ],
            ),
          ),

          // PRODUCTION SOLUTIONS
          _buildProductionSection(isMobile, screenSize, lang),

          // WHAT WE DO
          Container(
            key: servicesKey,
            color: CustomColor.secondary.withOpacity(0.02),
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: servicesVerticalPadding,
            ),
            child:
                isMobile
                    ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildWhatWeDoText(lang, isMobile),
                        const SizedBox(height: 24),
                        _buildServiceSlider(cardHeight, services, lang),
                      ],
                    )
                    : Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: _buildWhatWeDoText(lang, isMobile),
                        ),
                        const SizedBox(width: 40),
                        Expanded(
                          flex: 5,
                          child: _buildServiceSlider(
                            cardHeight,
                            services,
                            lang,
                          ),
                        ),
                      ],
                    ),
          ),

          // CALL TO ACTION
          Container(
            key: contactKey,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 80),
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: ctaVerticalPadding,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFFF0054),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppStrings.get('contact_cta_title', lang),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                MiddleClickLink(
                  url: '/contact',
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      AppStrings.get('contact_us', lang),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF444444),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductionSection(bool isMobile, Size screenSize, String lang) {
    // 1) InfoBlock aynı; ancak fontları _buildInfoBlock içinde dinamik ayarlayacağız.
    final infoBlock = Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(isMobile ? 12 : 24),
      child: SingleChildScrollView(
        child: _buildInfoBlock(lang, contactKey, screenSize),
      ),
    );

    // 2) Section yüksekliğini mobilde biraz daha büyütüyoruz, desktop'ta eskisi gibi
    final heightFactor = isMobile ? 1.2 : 1;
    final sectionHeight = screenSize.height * heightFactor;

    return SizedBox(
      key: info2Key,
      height: screenSize.height * (isMobile ? 1.2 : 1),
      width: double.infinity,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final w = constraints.maxWidth;
          final h = constraints.maxHeight;
          final leftRightPct = isMobile ? 0.08 : 0.35;
          final topBottomPct = isMobile ? 0.12 : 0.1;
          // Küçülttükçe infoBlock'un yüksekliğini %X'e indir:
          final blockHeightPct = isMobile ? 0.6 : 0.8;

          return Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/images/home_view_prod3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              // 2) InfoBlock’un konumu: desktop ve mobile ayrı
              if (!isMobile)
                Positioned(
                  left: w * leftRightPct,
                  right: w * leftRightPct,
                  top: h * topBottomPct,
                  bottom: h * topBottomPct,
                  child: SizedBox(
                    height: h * blockHeightPct,
                    child: Transform.translate(
                      offset: const Offset(-35, 19),
                      child: infoBlock,
                    ),
                  ),
                )
              else
                Positioned(
                  left: w * leftRightPct,
                  right: w * leftRightPct,
                  top: h * topBottomPct,
                  bottom: h * (1 - blockHeightPct - topBottomPct),
                  child: SizedBox(
                    height: h * blockHeightPct,
                    child: Transform.translate(
                      offset: const Offset(-20, 18),
                      child: infoBlock,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  // Şimdi _buildInfoBlock’u şöyle güncelle:
  Widget _buildInfoBlock(String lang, GlobalKey contactKey, Size screenSize) {
    final isMobile = screenSize.width < 800;
    final desktopScale =
        isMobile ? 1.0 : (screenSize.width / 1200).clamp(0.7, 1.0);

    final titleSize = (isMobile ? 18.0 : 28.0) * desktopScale;
    final bodySize = (isMobile ? 14.0 : 18.0) * desktopScale;
    final linkSize = (isMobile ? 16.0 : 20.0) * desktopScale;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: isMobile ? 56 : 56 * desktopScale),
        Text(
          AppStrings.get('prod_title', lang),
          style: TextStyle(
            fontSize: titleSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: isMobile ? 36 : 56 * desktopScale),
        Text(
          AppStrings.get('prod_desc', lang),
          style: TextStyle(
            fontSize: bodySize,
            height: 1.4,
            color: Colors.white,
          ),
        ),
        SizedBox(height: isMobile ? 56 : 56 * desktopScale),
        TextButton(
          onPressed: () => scrollToSection(contactKey),
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            alignment: Alignment.centerLeft,
          ),
          child: Text(
            AppStrings.get('prod_link', lang),
            style: TextStyle(
              fontSize: linkSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWhatWeDoText(String lang, bool isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.get('neler_title', lang),
          style: TextStyle(
            fontSize: isMobile ? 28 : 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          AppStrings.get('neler_full_desc', lang),
          style: TextStyle(fontSize: isMobile ? 14 : 16, height: 1.5),
        ),
        const SizedBox(height: 24),
        MiddleClickLink(
          url: '/services',
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 16 : 20,
              vertical: isMobile ? 12 : 14,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF444444),
              borderRadius: BorderRadius.circular(8),
            ),

            alignment: Alignment.center,
            child: Text(
              AppStrings.get('detail_info', lang),
              style: TextStyle(
                color: Colors.white,
                fontSize: isMobile ? 14 : 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildServiceSlider(
    double cardHeight,
    List<Service> services,
    String lang,
  ) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return Column(
      children: [
        SizedBox(
          height: cardHeight,
          child: PageView.builder(
            controller: _pageController,
            itemCount: services.length,
            itemBuilder: (ctx, i) {
              final s = services[i];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(isMobile ? 8 : 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          s.icon,
                          size: isMobile ? 32 : 40,
                          color: const Color(0xFF3D3D3D),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          s.title,
                          style: TextStyle(
                            fontSize: isMobile ? 18 : 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          s.subtitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: isMobile ? 14 : 16,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Flexible(
                          fit: FlexFit.loose,
                          child: Text(
                            s.description,
                            maxLines: isMobile ? 3 : 6,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 14,
                              height: 1.4,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        MiddleClickLink(
                          url: '/contact',
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              AppStrings.get('contact_us', lang),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF444444),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text('→'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(services.length, (i) {
            final isActive = i == _currentPage;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: isActive ? 12 : 8,
              height: isActive ? 12 : 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isActive ? CustomColor.accent : Colors.black26,
              ),
            );
          }),
        ),
      ],
    );
  }
}
