import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/header.dart';
import 'package:flutter_application_2/widgets/footer.dart';
import 'package:flutter_application_2/l10n/strings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;
import 'dart:ui' as ui;

class WorksView extends StatefulWidget {
  final VoidCallback toggleTheme;
  final Function(Locale) changeLanguage;

  const WorksView({
    super.key,
    required this.toggleTheme,
    required this.changeLanguage,
  });

  @override
  State<WorksView> createState() => _WorksViewState();
}

class _WorksViewState extends State<WorksView> {
  final ScrollController _scrollController = ScrollController();
  int _selectedCategory = 0;

  static const List<String> _projectImagePaths = [
    'assets/images/works/katalogfotoğraf.png',
    'assets/images/works/ürünfotoğraf.png',
    'assets/images/works/ürünvideo.png',
    'assets/images/works/sinematikvideo.png',
    'assets/images/works/trendvideo.png',
    'assets/images/works/dronefotoğraf.png',
    'assets/images/works/dronevideo.png',
    'assets/images/works/virtual_tour.png',
  ];

  Future<void> _openLink(String url) async {
    if (kIsWeb) {
      html.window.open(url, '_blank');
    } else {
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Link açılamadı: $url')));
      }
    }
  }

  List<Project> get _projects {
    final lang = Localizations.localeOf(context).languageCode;
    final titles = AppStrings.getList('works_projects_titles', lang);
    final subtitles = AppStrings.getList('works_projects_subtitles', lang);
    final categories = AppStrings.getList('works_projects_categories', lang);

    return List.generate(
      titles.length,
      (i) => Project(
        imagePath: _projectImagePaths[i],
        title: titles[i],
        subtitle: subtitles[i],
        category: categories[i],
      ),
    );
  }

  List<Project> get _filteredProjects {
    final lang = Localizations.localeOf(context).languageCode;
    final filters = AppStrings.getList('works_filter_categories', lang);
    final sel = filters[_selectedCategory];

    if (sel == 'Tümü' || sel == 'All') return _projects;
    if (sel == 'Drone') {
      return _projects.where((p) => p.category.contains('Drone')).toList();
    }
    return _projects.where((p) => p.category == sel).toList();
  }

  @override
  void initState() {
    super.initState();
    if (kIsWeb) {
      // ignore: undefined_prefixed_name
      ui.platformViewRegistry.registerViewFactory('kuula-iframe', (int viewId) {
        final kuulaUrl =
            'https://kuula.co/share/collection/71f3D?logo=-1&info=0&fs=1&vr=1&zoom=1&gyro=0&thumbs=1';
        final html.IFrameElement element =
            html.IFrameElement()
              ..src = kuulaUrl
              ..style.border = 'none'
              ..allow = 'xr-spatial-tracking; gyroscope; accelerometer'
              ..allowFullscreen = true
              ..width = '100%'
              ..height = '640';
        return element;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final categories = AppStrings.getList('works_filter_categories', lang);
    final titles = AppStrings.getList('works_projects_titles', lang);

    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;
    final isTablet = screenWidth >= 600 && screenWidth < 900;
    final isDesktop = screenWidth >= 900;

    // Sağ-sol padding
    final horizontalPadding = isMobile ? 16.0 : 120.0;
    // Metin boyutları
    final titleSize =
        isMobile
            ? 18.0
            : isTablet
            ? 20.0
            : 18.0;
    final subtitleSize =
        isMobile
            ? 14.0
            : isTablet
            ? 16.0
            : 14.0;

    // Grid hücre genişliği: mobilde ekranın (padding dahil) yarısı, diğerlerinde sabit
    final usableWidth = screenWidth - horizontalPadding * 2;
    final maxExtent =
        isMobile
            ? usableWidth / 2
            : isTablet
            ? 240.0
            : 280.0;

    // Hücre yüksekliği/width oranı: mobilde yaklaşık 0.62 (yeterince uzun), diğerlerinde önceki ayar
    final childAspectRatio =
        isMobile
            ? 0.5 // mobilde hücreyi daha uzun yapıyoruz
            : isTablet
            ? 0.85
            : 0.65;

    final crossAxisCount =
        isMobile
            ? 2
            : isTablet
            ? 3
            : 4;

    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header
            Container(
              color: Colors.black87,
              child: Header(
                changeLanguage: widget.changeLanguage,
                onLogoTap:
                    () => Navigator.of(
                      context,
                    ).pushNamedAndRemoveUntil('/', (r) => false),
                onServicesTap: () => Navigator.pushNamed(context, '/services'),
                onAboutTap: () => Navigator.pushNamed(context, '/about'),
                onCareersTap: () => Navigator.pushNamed(context, '/career'),
                onReferencesTap:
                    () => Navigator.pushNamed(context, '/references'),
                onWorksTap: () {},
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

            const SizedBox(height: 32),

            // Başlık
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                AppStrings.get('works', lang),
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontSize: isMobile ? 24 : 34,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Filtre çipleri
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: List.generate(categories.length, (i) {
                  final selected = i == _selectedCategory;
                  return ChoiceChip(
                    label: Text(
                      categories[i],
                      style: TextStyle(
                        fontSize: isMobile ? 14 : 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    selected: selected,
                    onSelected: (_) => setState(() => _selectedCategory = i),
                  );
                }),
              ),
            ),

            const SizedBox(height: 24),

            // Proje kartları
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _filteredProjects.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: maxExtent,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: childAspectRatio,
                ),
                itemBuilder: (context, index) {
                  final project = _filteredProjects[index];
                  return InkWell(
                    onTap: () {
                      if (project.title == titles[1]) {
                        _openLink(
                          'https://www.instagram.com/share/p/BAHoMhhZLG',
                        );
                      } else if (project.title == titles[2]) {
                        _openLink(
                          'https://www.instagram.com/share/reel/__OZrAd-Q',
                        );
                      } else if (project.title == titles[3]) {
                        _openLink(
                          'https://www.instagram.com/share/reel/BAPMia-Tcb',
                        );
                      } else if (project.title == titles[4]) {
                        _openLink(
                          'https://www.instagram.com/share/reel/_eACrgClN',
                        );
                        return;
                      }
                      if (project.category == 'Sanal Tur') {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const KuulaDetailView(),
                          ),
                        );
                      }
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.asset(
                              project.imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          project.title,
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium?.copyWith(
                            fontSize: titleSize,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          project.subtitle,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                            fontSize: subtitleSize,
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 60),

            // Footer
            Container(
              color: Colors.black87,
              child: Footer(
                scrollController: ScrollController(),
                onAboutTap: () => Navigator.pushNamed(context, '/about'),
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
            ),
          ],
        ),
      ),
    );
  }
}

class Project {
  final String imagePath;
  final String title;
  final String subtitle;
  final String category;

  const Project({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.category,
  });
}

class KuulaDetailView extends StatelessWidget {
  const KuulaDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final iframeHeight =
        screenWidth < 600
            ? MediaQuery.of(context).size.height * 0.6
            : MediaQuery.of(context).size.height * 0.9;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kuula 360 Detay'),
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: iframeHeight,
              child:
                  kIsWeb
                      ? HtmlElementView(viewType: 'kuula-iframe')
                      : const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Kuula 360 içeriği yalnızca web üzerinde görüntülenebilir.',
                          textAlign: TextAlign.center,
                        ),
                      ),
            ),
            Footer(
              scrollController: ScrollController(),
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
    );
  }
}
