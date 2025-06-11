import 'package:flutter/material.dart';

class HoverMenu extends StatefulWidget {
  final Widget title;
  final List<Widget> items;
  final VoidCallback onTap;

  const HoverMenu({
    super.key,
    required this.title,
    required this.items,
    required this.onTap,
  });

  @override
  State<HoverMenu> createState() => _HoverMenuState();
}

class _HoverMenuState extends State<HoverMenu> {
  OverlayEntry? _overlayEntry;
  bool _hoveringOverlay = false;

  void showOverlay() {
    if (_overlayEntry != null) return;
    final renderBox = context.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);
    _overlayEntry = OverlayEntry(
      builder:
          (context) => Positioned(
            top: position.dy + renderBox.size.height,
            left: position.dx,
            child: MouseRegion(
              onEnter: (_) => _hoveringOverlay = true,
              onExit: (_) {
                _hoveringOverlay = false;
                hideOverlay();
              },
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.items,
                ),
              ),
            ),
          ),
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  void hideOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => showOverlay(),
      onExit: (_) async {
        await Future.delayed(const Duration(milliseconds: 200));
        if (!_hoveringOverlay) hideOverlay();
      },
      child: GestureDetector(onTap: widget.onTap, child: widget.title),
    );
  }
}
