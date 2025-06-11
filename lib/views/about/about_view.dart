import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_application_2/widgets/header.dart';
import 'package:flutter_application_2/widgets/footer.dart';
import 'package:flutter_application_2/l10n/strings.dart';

class AboutView extends StatefulWidget {
  final VoidCallback toggleTheme;
  final Function(Locale) changeLanguage;

  const AboutView({
    Key? key,
    required this.toggleTheme,
    required this.changeLanguage,
  }) : super(key: key);

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  late final VideoPlayerController _videoCtrl;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _videoCtrl = VideoPlayerController.asset(
        'assets/videos/3205624-hd_1920_1080_25fps.mp4',
      )
      ..initialize().then((_) {
        setState(() {});
        _videoCtrl
          ..setLooping(true)
          ..play();
      });
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _videoCtrl.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final screenHeight = MediaQuery.of(context).size.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final topPadding = statusBarHeight + kToolbarHeight;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight + topPadding,
                  child: ClipRect(
                    clipBehavior: Clip.hardEdge,
                    child: Stack(
                      children: [
                        if (_videoCtrl.value.isInitialized)
                          SizedBox.expand(
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: SizedBox(
                                width: _videoCtrl.value.size.width,
                                height: _videoCtrl.value.size.height,
                                child: VideoPlayer(_videoCtrl),
                              ),
                            ),
                          )
                        else
                          Container(color: Colors.black),
                        Positioned.fill(
                          child: Container(
                            // use withValues to replace deprecated withOpacity
                            color: Colors.blue.withOpacity(0.6),
                          ),
                        ),
                        Positioned.fill(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    AppStrings.get('aboutSectionHeading', lang),
                                    textAlign: TextAlign.center,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.headlineLarge?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    AppStrings.get(
                                      'aboutSectionParagraph1',
                                      lang,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodyLarge?.copyWith(
                                      color: Colors.white70,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1920),
                    child: Container(
                      height: 800,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/about_view_back.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment.center,
                      // padding’i isteğe göre ayarla veya kaldır
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Container(
                        // işte buraya:
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                            73,
                            7,
                            133,
                            236,
                          ).withOpacity(0.5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              AppStrings.get('aboutSectionAward2023', lang),
                              style: Theme.of(
                                context,
                              ).textTheme.headlineSmall?.copyWith(
                                color: Colors.white,
                                height: 1.5,
                                fontSize: 28,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              AppStrings.get('aboutSectionAward2024', lang),
                              style: Theme.of(
                                context,
                              ).textTheme.headlineSmall?.copyWith(
                                color: Colors.white,
                                height: 1.5,
                                fontSize: 28,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              AppStrings.get('aboutSectionParagraph4', lang),
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.copyWith(
                                color: Colors.white,
                                height: 1.6,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              AppStrings.get('aboutSectionParagraph5', lang),
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.copyWith(
                                color: Colors.white,
                                height: 1.6,
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Footer(
                  scrollController: _scrollController,
                  onAboutTap:
                      () => _scrollController.animateTo(
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
          SafeArea(
            child: Header(
              changeLanguage: widget.changeLanguage,
              onLogoTap:
                  () => Navigator.of(
                    context,
                  ).pushNamedAndRemoveUntil('/', (route) => false),
              onAboutTap:
                  () => _scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  ),
              onServicesTap: () => Navigator.pushNamed(context, '/services'),
              onCareersTap: () => Navigator.pushNamed(context, '/career'),
              onReferencesTap:
                  () => Navigator.pushNamed(context, '/references'),
              onWorksTap: () => Navigator.pushNamed(context, '/works'),
              onContactTap: () => Navigator.pushNamed(context, '/contact'),
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
          ),
        ],
      ),
    );
  }
}
