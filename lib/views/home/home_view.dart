// lib/views/home/home_view.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/about/about_view.dart';
import 'package:flutter_application_2/views/careers/careers_view.dart';
import 'package:flutter_application_2/views/company_info/company_info_view.dart';
import 'package:flutter_application_2/views/contact/contact_view.dart';
import 'package:flutter_application_2/views/home/desktop_home_content.dart';
import 'package:flutter_application_2/views/references/references_view.dart';
import 'package:flutter_application_2/views/services/services_view.dart';
import 'package:flutter_application_2/views/teams/team_view.dart';
import 'package:flutter_application_2/views/work/work_view.dart';
import 'package:flutter_application_2/widgets/header.dart';
import 'package:flutter_application_2/widgets/footer.dart';

class HomeView extends StatefulWidget {
  final VoidCallback toggleTheme;
  final Function(Locale) changeLocale;

  const HomeView({
    Key? key,
    required this.toggleTheme,
    required this.changeLocale,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _desktopKey = GlobalKey<DesktopHomeContentState>();
  final _scrollController = ScrollController();

  bool _showScrollUpButton = false;
  double _headerOpacity = 1.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final offset = _scrollController.offset;
    setState(() {
      _showScrollUpButton = offset > 400;
      _headerOpacity = offset < 200 ? 1 - (offset / 200) : 0;
    });
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AnimatedOpacity(
          opacity: _headerOpacity,
          duration: const Duration(milliseconds: 300),
          child: Header(
            changeLanguage: widget.changeLocale,
            onLogoTap: () {
              if (ModalRoute.of(context)?.settings.name != '/') {
                Navigator.of(
                  context,
                ).pushNamedAndRemoveUntil('/', (r) => false);
              } else {
                _scrollToTop();
              }
            },
            onAboutTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder:
                      (_) => AboutView(
                        toggleTheme: widget.toggleTheme,
                        changeLanguage: widget.changeLocale,
                      ),
                ),
              );
            },
            onCareersTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder:
                      (_) => CareerView(
                        toggleTheme: widget.toggleTheme,
                        changeLanguage: widget.changeLocale,
                      ),
                ),
              );
            },
            onReferencesTap: () {
              final lang = Localizations.localeOf(context).languageCode;
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder:
                      (_) => ReferencesView(
                        toggleTheme: widget.toggleTheme,
                        changeLanguage: widget.changeLocale,
                        currentLanguageCode: lang,
                      ),
                ),
              );
            },
            onWorksTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder:
                      (context) => WorksView(
                        toggleTheme: widget.toggleTheme,
                        changeLanguage: widget.changeLocale,
                      ),
                ),
              );
            },
            onServicesTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder:
                      (context) => ServicesView(
                        toggleTheme: widget.toggleTheme,
                        changeLanguage: widget.changeLocale,
                        currentLanguageCode:
                            Localizations.localeOf(context).languageCode,
                      ),
                ),
              );
            },
            onContactTap: () {
              final lang = Localizations.localeOf(context).languageCode;
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder:
                      (_) => ContactView(
                        toggleTheme: widget.toggleTheme,
                        changeLanguage: widget.changeLocale,
                        currentLanguageCode: lang,
                      ),
                ),
              );
            },
            onVideoProdTap: () {
              Navigator.pushNamed(context, '/videoProd');
            },
            onGoogleMetaTap: () {
              Navigator.pushNamed(context, '/googleMeta');
            },
            onMappingTap: () {
              Navigator.pushNamed(context, '/mapping');
            },
            onTour360Tap: () {
              Navigator.pushNamed(context, '/tour360');
            },
            onAdConsultTap: () {
              Navigator.pushNamed(context, '/adConsult');
            },
            onSocialMediaTap: () {
              Navigator.pushNamed(context, '/socialMedia');
            },
            onGraphicDesignTap: () {
              Navigator.pushNamed(context, '/graphicDesign');
            },
            onWebDevTap: () {
              Navigator.pushNamed(context, '/webDev');
            },
            onLogoDesignTap: () {
              Navigator.pushNamed(context, '/logoDesign');
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            DesktopHomeContent(
              key: _desktopKey,
              scrollController: _scrollController,
            ),
            Footer(
              scrollController: _scrollController,
              onAboutTap: () => Navigator.pushNamed(context, '/about'),
              onCareersTap: () => Navigator.pushNamed(context, '/career'),
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
          ],
        ),
      ),
      floatingActionButton:
          _showScrollUpButton
              ? FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: _scrollToTop,
                tooltip: 'Yukarı çık',
                child: const Icon(Icons.arrow_upward, color: Colors.white),
              )
              : null,
    );
  }
}
