import 'package:flutter/material.dart';
import 'package:flutter_application_2/l10n/strings.dart';

class ReferencesCarousel extends StatefulWidget {
  final String lang;
  const ReferencesCarousel({Key? key, required this.lang}) : super(key: key);

  @override
  _ReferencesCarouselState createState() => _ReferencesCarouselState();
}

class _ReferencesCarouselState extends State<ReferencesCarousel> {
  final List<String> _logos = [
    'assets/images/refs/AlohaBurgerito.png',
    'assets/images/refs/arquetlgoob.png',
    'assets/images/refs/defaultofficeimage.png',
    'assets/images/refs/logo_brass-transformed.png',
    'assets/images/refs/n5.png',
    'assets/images/refs/pepsi-logo_brandlogos.net_3bfir.png',
    'assets/images/refs/simlogo-Kopya.png',
    'assets/images/refs/cimcim.png',
    'assets/images/refs/shebit.png',
  ];

  late final PageController _controller;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.2);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _goTo(int page) {
    setState(() => _currentPage = page);
    _controller.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Başlık
        Text(
          AppStrings.get('references', widget.lang),
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),

        // Slider + ok tuşları
        SizedBox(
          height: 80,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Fiziks tamamen kaldırıldı
              PageView.builder(
                controller: _controller,
                itemCount: _logos.length,
                onPageChanged: (idx) => setState(() => _currentPage = idx),
                itemBuilder: (_, idx) {
                  return Center(
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () => _goTo(idx),
                      child: Image.asset(
                        _logos[idx],
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                },
              ),

              // Sol ok
              Positioned(
                left: 0,
                child: IconButton(
                  icon: const Icon(Icons.chevron_left, size: 32),
                  color: Colors.white70,
                  onPressed: () {
                    if (_currentPage > 0) _goTo(_currentPage - 1);
                  },
                ),
              ),

              // Sağ ok
              Positioned(
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.chevron_right, size: 32),
                  color: Colors.white70,
                  onPressed: () {
                    if (_currentPage < _logos.length - 1)
                      _goTo(_currentPage + 1);
                  },
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),
        // Dot indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(_logos.length, (idx) {
            final isActive = idx == _currentPage;
            return GestureDetector(
              onTap: () => _goTo(idx),
              child: Container(
                width: isActive ? 12 : 8,
                height: isActive ? 12 : 8,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(isActive ? 1.0 : 0.5),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
