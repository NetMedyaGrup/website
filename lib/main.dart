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

import 'dart:html' as html;
import 'dart:ui' as ui;

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
