import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/home/home_view.dart';
import 'package:flutter_application_2/views/about/about_view.dart';
import 'package:flutter_application_2/views/references/references_view.dart';
import 'package:flutter_application_2/views/services/services_pages/video_photography_drone_prod.dart';
import 'package:flutter_application_2/views/services/services_view.dart';
import 'package:flutter_application_2/views/careers/careers_view.dart';
import 'package:flutter_application_2/views/company_info/company_info_view.dart';
import 'package:flutter_application_2/views/contact/contact_view.dart';
import 'package:flutter_application_2/views/work/work_view.dart';
import 'package:flutter_application_2/widgets/header.dart';
import 'package:flutter_application_2/widgets/footer.dart';
import 'package:flutter_application_2/l10n/strings.dart';

class TeamView extends StatelessWidget {
  final VoidCallback toggleTheme;
  final Function(Locale) changeLanguage;

  const TeamView({
    Key? key,
    required this.toggleTheme,
    required this.changeLanguage,
  }) : super(key: key);

  static const List<Map<String, String>> _teamMembers = [
    {
      'name': 'Efe Özmen',
      'role': 'Yönetim Kurulu Başkanı',
      'image': 'assets/team/efe.jpg',
    },
    {
      'name': 'Umur Can Özmen',
      'role': 'Yönetim Kurulu Başkan Yrd.',
      'image': 'assets/team/umur.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // HEADER
              Container(
                color: Colors.black87,
                child: Header(
                  changeLanguage: changeLanguage,
                  onLogoTap:
                      () => Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder:
                              (_) => HomeView(
                                toggleTheme: toggleTheme,
                                changeLocale: changeLanguage,
                              ),
                        ),
                        (route) => false,
                      ),
                  onAboutTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => AboutView(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onServicesTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => ServicesView(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                                currentLanguageCode: '',
                              ),
                        ),
                      ),
                  onCareersTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => CareerView(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),

                  onReferencesTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => ReferencesView(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                                currentLanguageCode: '',
                              ),
                        ),
                      ),
                  onWorksTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => WorksView(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onContactTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => ContactView(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                                currentLanguageCode: '',
                              ),
                        ),
                      ),
                  onVideoProdTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onGoogleMetaTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onMappingTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onTour360Tap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onAdConsultTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onSocialMediaTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onGraphicDesignTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onWebDevTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onLogoDesignTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                ),
              ),

              const SizedBox(height: 24),

              // CONTENT
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.get('team_section_title', lang),
                      style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: 0.75,
                          ),
                      itemCount: _teamMembers.length,
                      itemBuilder: (context, index) {
                        final member = _teamMembers[index];
                        return Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    member['image']!,
                                    fit: BoxFit.cover,
                                    height: 180,
                                    width: double.infinity,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  member['role']!,
                                  style: textTheme.bodyMedium,
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  member['name']!,
                                  style: textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 8),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward),
                                  label: Text(AppStrings.get('see_more', lang)),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // FOOTER
              Container(
                color: Colors.black87,
                child: Footer(
                  scrollController: ScrollController(),
                  onAboutTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => AboutView(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onCareersTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => CareerView(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onContactTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => ContactView(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                                currentLanguageCode: '',
                              ),
                        ),
                      ),
                  onVideoProdTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onGoogleMetaTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onMappingTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onTour360Tap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onAdConsultTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onSocialMediaTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onGraphicDesignTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onWebDevTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                  onLogoDesignTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (_) => VideoPhotographyDroneProdPage(
                                toggleTheme: toggleTheme,
                                changeLanguage: changeLanguage,
                              ),
                        ),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
