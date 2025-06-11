// lib/routes/app_routes.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/careers/careers_view.dart';
import 'package:flutter_application_2/views/company_info/company_info_view.dart';
import 'package:flutter_application_2/views/teams/team_view.dart';
import '../views/home/home_view.dart';
import '../views/about/about_view.dart';
import '../views/services/services_view.dart';
import '../views/contact/contact_view.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) {
      return HomeView(
        toggleTheme: () => {}, // tema değiştirici callback
        changeLocale: (locale) {}, // dil değiştirme callback
      );
    },

    '/about': (context) {
      return AboutView(toggleTheme: () => {}, changeLanguage: (locale) {});
    },

    '/services': (context) {
      final lang = Localizations.localeOf(context).languageCode;
      return ServicesView(
        toggleTheme: () => {},
        changeLanguage: (locale) {},
        currentLanguageCode: lang,
      );
    },

    '/contact': (context) {
      final lang = Localizations.localeOf(context).languageCode;
      return ContactView(
        toggleTheme: () => {},
        changeLanguage: (locale) {},
        currentLanguageCode: lang,
      );
    },
    '/team': (context) {
      return TeamView(toggleTheme: () => {}, changeLanguage: (locale) {});
    },
    '/career': (context) {
      return CareerView(toggleTheme: () => {}, changeLanguage: (locale) {});
    },
    '/company-info': (context) {
      final lang = Localizations.localeOf(context).languageCode;
      return CompanyInfoView(
        toggleTheme: () => {},
        changeLanguage: (locale) {},
        currentLanguageCode: lang,
      );
    },
  };
}
