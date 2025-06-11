import 'package:flutter/widgets.dart';

/// Web dışı platformlarda boş bir placeholder
class PlatformIframe extends StatelessWidget {
  const PlatformIframe({super.key, required this.viewType, this.iframeUrl});
  final String viewType;
  final String? iframeUrl;
  @override
  Widget build(BuildContext context) => Container();
}
