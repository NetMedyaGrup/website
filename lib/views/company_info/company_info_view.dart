// lib/views/company_info/company_info_view.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/header.dart';
import 'package:flutter_application_2/widgets/footer.dart';

class CompanyInfoView extends StatelessWidget {
  final VoidCallback toggleTheme;
  final ValueChanged<Locale> changeLanguage;
  final String currentLanguageCode;

  const CompanyInfoView({
    super.key,
    required this.toggleTheme,
    required this.changeLanguage,
    required this.currentLanguageCode,
  });

  @override
  Widget build(BuildContext context) {
    final lang = currentLanguageCode;
    final scrollController = ScrollController();
    final txt = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        controller: scrollController,
        child: SafeArea(
          child: Column(
            children: [
              // --- HEADER ---
              Container(
                color: Colors.black87,
                child: Header(
                  onLogoTap: () => Navigator.pushNamed(context, '/'),
                  onAboutTap: () => Navigator.pushNamed(context, '/about'),
                  onServicesTap:
                      () => Navigator.pushNamed(context, '/services'),
                  onCareersTap: () => Navigator.pushNamed(context, '/career'),
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
                  changeLanguage: changeLanguage,
                ),
              ),

              // --- İÇERİK ---
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 32,
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Başlık
                    Text(
                      lang == 'tr'
                          ? 'Şirket Bilgilerimiz'
                          : 'Company Information',
                      style: txt.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // İki sütunlu düzen
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final tableWidth = constraints.maxWidth * 0.6;
                        final bankWidth = constraints.maxWidth * 0.3;
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Soldaki tablo
                            SizedBox(
                              width: tableWidth,
                              child: Table(
                                columnWidths: const {
                                  0: IntrinsicColumnWidth(),
                                  1: FlexColumnWidth(),
                                },
                                border: TableBorder.all(
                                  color: Colors.grey.shade300,
                                ),
                                children: [
                                  _buildRow(
                                    'Ticaret Unvanı',
                                    'CREODİVE DİJİTAL MEDYA AJANSI VE BİLİŞİM TEKNOLOJİLERİ LİMİTED ŞİRKETİ',
                                  ),
                                  _buildRow(
                                    'Adres',
                                    'ADNAN KAHVECİ MAH. BEYAZIT CAD. NO:5 KARABULUT SİTESİ A2 BLOK OFİS:27\nBEYLİKDÜZÜ – İSTANBUL',
                                  ),
                                  _buildRow('Vergi Dairesi', 'BÜYÜKÇEKMECE'),
                                  _buildRow('Vergi Numarası', '215 068 1570'),
                                  _buildRow(
                                    'İletişim Bilgileri',
                                    '0544 240 71 99',
                                  ),
                                  _buildRow(
                                    'Web Adresi',
                                    'www.creodive.com.tr',
                                  ),
                                  _buildRow(
                                    'Taahhüt Edilen Sermaye',
                                    '5.000.000,00 TL',
                                  ),
                                  _buildRow(
                                    'Ödenen Sermaye Miktarı',
                                    '1.000.000,00 TL',
                                  ),
                                  _buildRow(
                                    'Sektör',
                                    'Web Tasarım, Web Sitesi Programlama, Reklam Hizmeti, Grafik Tasarım',
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(width: 24),

                            // Sağdaki banka bilgileri
                            SizedBox(
                              width: bankWidth,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Banka Bilgileri',
                                    style: txt.headlineSmall,
                                  ),
                                  const SizedBox(height: 16),
                                  // Logo placeholder
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 24,
                                    child: Text('G'),
                                  ),
                                  const SizedBox(height: 16),
                                  Text('Alıcı Unvan', style: txt.titleMedium),
                                  Text(
                                    'CREODİVE DİJİTAL MEDYA AJANSI VE BİLİŞİM TEKNOLOJİLERİ LTD. ŞTİ.',
                                    style: txt.bodyMedium,
                                  ),
                                  const SizedBox(height: 12),
                                  Text('IBAN', style: txt.titleMedium),
                                  Text(
                                    'TR07 0006 2001 6400 0006 2981 71',
                                    style: txt.bodyMedium,
                                  ),
                                  const SizedBox(height: 12),
                                  Text('Şube Kodu', style: txt.titleMedium),
                                  Text('1640', style: txt.bodyMedium),
                                  const SizedBox(height: 12),
                                  Text('Şube', style: txt.titleMedium),
                                  Text(
                                    'Beylikdüzü / Gürpınar',
                                    style: txt.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),

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
      ),
    );
  }

  TableRow _buildRow(String label, String value) {
    return TableRow(
      decoration: BoxDecoration(color: Colors.white),
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(padding: const EdgeInsets.all(12.0), child: Text(value)),
      ],
    );
  }
}
