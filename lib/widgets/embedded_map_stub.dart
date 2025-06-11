import 'package:flutter/material.dart';

/// Mobil/masaüstü için: hiçbir şey göstermiyor ya da bir placeholder
class EmbeddedMap extends StatelessWidget {
  const EmbeddedMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Eğer hiç göstermemek istiyorsanız SizedBox.shrink() da kullanabilirsiniz.
    return const Center(
      child: Text('Harita yalnızca web üzerinde görüntülenir.'),
    );
  }
}
