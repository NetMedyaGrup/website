// lib/views/career/career_view.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/header.dart';
import 'package:flutter_application_2/widgets/footer.dart';
import 'package:flutter_application_2/l10n/strings.dart';
import 'package:flutter_application_2/widgets/middle_click_link.dart';

/// "Çalışmalarımız" sayfası
class CareerView extends StatefulWidget {
  final VoidCallback toggleTheme;
  final Function(Locale) changeLanguage;

  const CareerView({
    super.key,
    required this.toggleTheme,
    required this.changeLanguage,
  });

  @override
  State<CareerView> createState() => _CareerViewState();
}

class _CareerViewState extends State<CareerView> {
  int _selectedStep = 0;

  static const _stepKeys = [
    'career_step_0',
    'career_step_1',
    'career_step_2',
    'career_step_3',
  ];

  static const _descKeys = [
    'career_desc_0',
    'career_desc_1',
    'career_desc_2',
    'career_desc_3',
  ];

  static const _jobs = [
    {'title': 'job_fullstack', 'type': 'job_type_fulltime'},
    {'title': 'job_sosyal', 'type': 'job_type_fulltime'},
    {'title': 'job_art', 'type': 'job_type_fulltime'},
    {'title': 'job_googleads', 'type': 'job_type_fulltime'},
  ];

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final txt = Theme.of(context).textTheme;
    final accent = Theme.of(context).colorScheme.secondary;
    final scrollController = ScrollController();

    final isMobile = MediaQuery.of(context).size.width < 600;
    final horizontalPadding = isMobile ? 16.0 : 86.0;

    return Scaffold(
      body: SingleChildScrollView(
        controller: scrollController,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // --- HEADER ---
            Container(
              color: Colors.black87,
              child: Header(
                changeLanguage: widget.changeLanguage,
                onLogoTap:
                    () => Navigator.of(
                      context,
                    ).pushNamedAndRemoveUntil('/', (route) => false),
                onServicesTap: () => Navigator.pushNamed(context, '/services'),
                onAboutTap: () => Navigator.pushNamed(context, '/about'),
                onCareersTap: () {}, // aktif
                onReferencesTap:
                    () => Navigator.pushNamed(context, '/references'),
                onWorksTap: () => Navigator.pushNamed(context, '/works'),
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
            ),

            const SizedBox(height: 100),

            // --- Başlık & Alt Başlık ---
            Text(
              AppStrings.get('career_heading', lang),
              style: txt.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Text(
              AppStrings.get('career_subheading', lang),
              style: txt.bodyMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 56),

            // --- Adım İkonları ---
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(_stepKeys.length, (i) {
                final active = i == _selectedStep;
                return GestureDetector(
                  onTap: () => setState(() => _selectedStep = i),
                  child: Column(
                    children: [
                      Icon(
                        [
                          Icons.list,
                          Icons.chat_bubble_outline,
                          Icons.star_border,
                          Icons.article_outlined,
                        ][i],
                        size: 28,
                        color: active ? accent : Colors.black54,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        AppStrings.get(_stepKeys[i], lang),
                        style: txt.bodySmall?.copyWith(
                          color: active ? accent : Colors.black54,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Container(
                        height: 2,
                        width: 40,
                        color: active ? accent : Colors.transparent,
                      ),
                    ],
                  ),
                );
              }),
            ),

            const SizedBox(height: 64),

            // --- Açıklama ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                AppStrings.get(_descKeys[_selectedStep], lang),
                style: txt.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 64),

            // --- İş İlanları Tablosu ---
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Table(
                columnWidths: const {
                  0: FlexColumnWidth(4),
                  1: FlexColumnWidth(4),
                  2: IntrinsicColumnWidth(),
                },
                border: TableBorder(
                  horizontalInside: BorderSide(color: Colors.grey.shade300),
                ),
                children:
                    _jobs.map((job) {
                      return TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              AppStrings.get(job['title']!, lang),
                              style: txt.titleMedium,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              AppStrings.get(job['type']!, lang),
                              style: txt.bodyMedium,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Align(
                              alignment: Alignment.center,
                              child: MiddleClickLink(
                                url: '/contact',
                                child: Container(
                                  constraints: const BoxConstraints(
                                    minWidth: 80,
                                    minHeight: 32,
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    AppStrings.get('getQuote', lang),
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
              ),
            ),

            const SizedBox(height: 32),

            // --- FOOTER ---
            Container(
              color: Colors.black87,
              child: Footer(
                scrollController: scrollController,

                // Kurumsal
                onAboutTap: () => Navigator.pushNamed(context, '/about'),
                onCareersTap: () => Navigator.pushNamed(context, '/career'),
                onContactTap: () => Navigator.pushNamed(context, '/contact'),

                // Hizmetlerimiz
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
            ),
          ],
        ),
      ),
    );
  }
}
