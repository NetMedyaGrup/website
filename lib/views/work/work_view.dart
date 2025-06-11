import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_application_2/widgets/header.dart';
import 'package:flutter_application_2/widgets/footer.dart';
import 'package:flutter_application_2/l10n/strings.dart';
import 'package:flutter_application_2/widgets/kuula_embed_view.dart';
import 'package:url_launcher/url_launcher.dart';

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

  static const _images = [
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
    final uri = Uri.parse(url);
    if (kIsWeb) {
      await launchUrl(uri, webOnlyWindowName: '_blank');
    } else if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Link açılamadı: $url')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final titles = AppStrings.getList('works_projects_titles', lang);
    final categories = AppStrings.getList('works_filter_categories', lang);
    final projects =
        List.generate(titles.length, (i) {
          final subs = AppStrings.getList('works_projects_subtitles', lang);
          final cats = AppStrings.getList('works_projects_categories', lang);
          return Project(
            imagePath: _images[i],
            title: titles[i],
            subtitle: subs[i],
            category: cats[i],
          );
        }).where((p) {
          final sel = categories[_selectedCategory];
          if (sel == 'Tümü' || sel == 'All') return true;
          if (sel == 'Drone') return p.category.contains('Drone');
          return p.category == sel;
        }).toList();

    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;
    final horizontal = isMobile ? 16.0 : 120.0;
    final childAspect = isMobile ? 0.5 : (screenWidth < 900 ? 0.85 : 0.65);

    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: BouncingScrollPhysics(),
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
                    ).pushNamedAndRemoveUntil('/', (_) => false),
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

            SizedBox(height: 32),
            // Başlık
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontal),
              child: Text(
                AppStrings.get('works', lang),
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontSize: isMobile ? 24 : 34,
                ),
              ),
            ),
            SizedBox(height: 16),

            // Filtre
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontal),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: List.generate(categories.length, (i) {
                  return ChoiceChip(
                    label: Text(categories[i]),
                    selected: i == _selectedCategory,
                    onSelected: (_) => setState(() => _selectedCategory = i),
                  );
                }),
              ),
            ),
            SizedBox(height: 24),

            // Grid
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontal),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: projects.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent:
                      isMobile
                          ? (screenWidth - horizontal * 2) / 2
                          : (screenWidth < 900 ? 240 : 280),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: childAspect,
                ),
                itemBuilder: (_, idx) {
                  final p = projects[idx];
                  return InkWell(
                    onTap: () {
                      // 1: Ürün Fotoğraf
                      if (p.title == titles[1]) {
                        _openLink(
                          'https://www.instagram.com/share/p/BAHoMhhZLG',
                        );
                        return;
                      }
                      // 2: Ürün Video
                      if (p.title == titles[2]) {
                        _openLink(
                          'https://www.instagram.com/share/reel/__OZrAd-Q',
                        );
                        return;
                      }
                      // 3: Sinematik
                      if (p.title == titles[3]) {
                        _openLink(
                          'https://www.instagram.com/share/reel/BAPMia-Tcb',
                        );
                        return;
                      }
                      // 4: Trend
                      if (p.title == titles[4]) {
                        _openLink(
                          'https://www.instagram.com/share/reel/_eACrgClN',
                        );
                        return;
                      }
                      // 5: Drone Fotoğraf
                      if (p.title == titles[5]) {
                        _openLink(
                          'https://www.instagram.com/share/p/DRONE_PHOTO_LINK',
                        );
                        return;
                      }
                      // 6: Drone Video
                      if (p.title == titles[6]) {
                        _openLink(
                          'https://www.instagram.com/share/reel/DRONE_VIDEO_LINK',
                        );
                        return;
                      }
                      // 7: Sanal Tur (Kuula)
                      if (p.category == 'Sanal Tur') {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const KuulaEmbedView(),
                          ),
                        );
                        return;
                      }
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.asset(p.imagePath, fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          p.title,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(height: 4),
                        Text(
                          p.subtitle,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 60),

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
  final String imagePath, title, subtitle, category;
  const Project({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.category,
  });
}
