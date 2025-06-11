import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  final VoidCallback? onTap;
  final double height;
  final double? width; // yeni

  const SiteLogo({super.key, this.onTap, this.height = 48, this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        'assets/images/logo.png',
        height: height,
        width: width, // opsiyonel genişlik
        fit: BoxFit.contain,
      ),
    );
  }
}
