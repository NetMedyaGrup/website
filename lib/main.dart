import 'dart:ui_web' as ui;
import 'dart:html' as html;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/about/about_view.dart';
import 'package:flutter_application_2/views/careers/careers_view.dart';
import 'package:flutter_application_2/views/company_info/company_info_view.dart';
import 'package:flutter_application_2/views/contact/contact_view.dart';
import 'package:flutter_application_2/views/home/home_view.dart';
import 'package:flutter_application_2/views/references/references_view.dart';
import 'package:flutter_application_2/views/services/services_pages/advertising_management_consultancy.dart';
import 'package:flutter_application_2/views/services/services_pages/google_advertising_consultancy.dart';
import 'package:flutter_application_2/views/services/services_pages/graphic_design.dart';
import 'package:flutter_application_2/views/services/services_pages/logo_design_corporate_identity.dart';
import 'package:flutter_application_2/views/services/services_pages/social_media_management.dart';
import 'package:flutter_application_2/views/services/services_pages/video_photography_drone_prod.dart';
import 'package:flutter_application_2/views/services/services_pages/virtual_tour.dart';
import 'package:flutter_application_2/views/services/services_pages/visual_mapping_modeling.dart';
import 'package:flutter_application_2/views/services/services_pages/web_design_dev.dart';
import 'package:flutter_application_2/views/services/services_view.dart';
import 'package:flutter_application_2/views/teams/team_view.dart';
import 'package:flutter_application_2/views/work/work_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_application_2/core/theme/app_theme.dart';

/// Fareyle de sürüklemeyi aktif eden scroll behavior
class MyScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.stylus,
    PointerDeviceKind.unknown,
  };
}

void main() {
  if (kIsWeb) {
    // Google Map iframe
    ui.platformViewRegistry.registerViewFactory(
      'google-map-iframe',
      (int viewId) =>
          html.IFrameElement()
            ..src =
                'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d765.0644611766978!2d32.85662796964043!3d39.91324562687037!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d34fa8ef9d7397%3A0xb2024b95b2d8b4e9!2sKavakl%C4%B1dere%2C%20Esat%20Cd.%2012%2F1%20Bakanl%C4%B1klar%20D%3A2%2C%2006660%20%C3%87ankaya%2FAnkara!5e0!3m2!1sen!2str!4v1749678004541!5m2!1sen!2str'
            ..style.border = '0'
            ..style.width = '100%'
            ..style.height = '100%',
    );
    // Kuula 360° iframe
    ui.platformViewRegistry.registerViewFactory(
      'kuula-tour-iframe',
      (int viewId) =>
          html.IFrameElement()
            ..src = 'https://kuula.co/share/collection/71f3D?logo=-1'
            ..style.border = 'none'
            ..style.width = '100%'
            ..style.height = '100%',
    );
  }
  runApp(const CreodiveCloneApp());
}

class CreodiveCloneApp extends StatefulWidget {
  const CreodiveCloneApp({super.key});

  @override
  State<CreodiveCloneApp> createState() => _CreodiveCloneAppState();
}

class _CreodiveCloneAppState extends State<CreodiveCloneApp> {
  bool isDarkMode = false;
  Locale _locale = const Locale('tr');

  void toggleTheme() => setState(() => isDarkMode = !isDarkMode);
  void changeLocale(Locale locale) => setState(() => _locale = locale);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Net Medya Grup',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyScrollBehavior(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      locale: _locale,
      supportedLocales: const [Locale('tr'), Locale('en')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: '/',
      routes: {
        '/':
            (_) =>
                HomeView(toggleTheme: toggleTheme, changeLocale: changeLocale),
        '/about':
            (_) => AboutView(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
            ),
        '/services':
            (_) => ServicesView(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
              currentLanguageCode: _locale.languageCode,
            ),
        '/team':
            (_) => TeamView(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
            ),
        '/career':
            (_) => CareerView(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
            ),
        '/companyInfo':
            (_) => CompanyInfoView(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
              currentLanguageCode: _locale.languageCode,
            ),
        '/contact':
            (_) => ContactView(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
              currentLanguageCode: _locale.languageCode,
            ),
        '/references':
            (_) => ReferencesView(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
              currentLanguageCode: _locale.languageCode,
            ),
        '/works':
            (_) => WorksView(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
            ),

        '/videoProd':
            (_) => VideoPhotographyDroneProdPage(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
            ),
        '/googleMeta':
            (_) => GoogleAdvertisingConsultancyPage(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
            ),
        '/logoDesign':
            (_) => LogoDesignCorporateIdentityPage(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
            ),
        '/mapping':
            (_) => VisualMappingModelingPage(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
            ),
        '/tour360':
            (_) => VirtualTourPage(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
            ),
        '/adConsult':
            (_) => AdvertisingManagementConsultancyPage(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
            ),
        '/socialMedia':
            (_) => SocialMediaManagementPage(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
            ),
        '/graphicDesign':
            (_) => GraphicDesignPage(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
            ),
        '/webDev':
            (_) => WebDesignDevPage(
              toggleTheme: toggleTheme,
              changeLanguage: changeLocale,
            ),
      },
    );
  }
}
