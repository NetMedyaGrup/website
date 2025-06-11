import 'package:flutter/material.dart';
import 'package:flutter_application_2/l10n/strings.dart';
import 'package:flutter_application_2/views/services/zoho_email_service.dart';

class ContactSection extends StatefulWidget {
  final String currentLanguageCode;
  const ContactSection({super.key, required this.currentLanguageCode});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedService;
  final _nameCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _projectCtrl = TextEditingController();

  bool _isSending = false;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _phoneCtrl.dispose();
    _emailCtrl.dispose();
    _projectCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lang = widget.currentLanguageCode;
    final inputDecoration = InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Colors.grey, // Tıklamadan önceki çerçeve rengi
          width: 1,
        ),
      ),
    );

    final services = [
      AppStrings.get('svc_graphic_title', lang),
      AppStrings.get('svc_video_title', lang),
      AppStrings.get('svc_web_title', lang),
      AppStrings.get('svc_ad_title', lang),
    ];

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Başlık
          Text(
            AppStrings.get('contact_title', lang),
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 24),

          // İsim
          TextFormField(
            controller: _nameCtrl,
            decoration: inputDecoration.copyWith(
              hintText: AppStrings.get('contact_name', lang),
              hintStyle: const TextStyle(color: Colors.grey),
            ),
            validator:
                (v) => v == null || v.isEmpty ? 'Lütfen isim girin' : null,
          ),
          const SizedBox(height: 16),

          // Telefon
          TextFormField(
            controller: _phoneCtrl,
            keyboardType: TextInputType.phone,
            decoration: inputDecoration.copyWith(
              hintText: AppStrings.get('contact_phone', lang),
              hintStyle: const TextStyle(color: Colors.grey),
            ),
            validator:
                (v) => v == null || v.isEmpty ? 'Lütfen telefon girin' : null,
          ),
          const SizedBox(height: 16),

          // E-posta
          TextFormField(
            controller: _emailCtrl,
            keyboardType: TextInputType.emailAddress,
            decoration: inputDecoration.copyWith(
              hintText: AppStrings.get('contact_email', lang),
              hintStyle: const TextStyle(color: Colors.grey),
            ),
            validator:
                (v) =>
                    v == null || !v.contains('@')
                        ? 'Geçerli e-posta girin'
                        : null,
          ),
          const SizedBox(height: 16),

          // Hizmet dropdown
          InputDecorator(
            decoration: inputDecoration.copyWith(
              hintText: AppStrings.get('offer_service', lang),
              hintStyle: const TextStyle(color: Colors.grey),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectedService,
                isExpanded: true,
                hint: Text(AppStrings.get('offer_service', lang)),
                onChanged: (val) => setState(() => _selectedService = val),
                items:
                    services
                        .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                        .toList(),
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Proje açıklaması
          TextFormField(
            controller: _projectCtrl,
            maxLines: 4,
            decoration: inputDecoration.copyWith(
              hintText: AppStrings.get('contact_message', lang),
              hintStyle: const TextStyle(color: Colors.grey),
            ),
            validator:
                (v) =>
                    v == null || v.isEmpty
                        ? 'Lütfen proje bilgisi girin'
                        : null,
          ),
          const SizedBox(height: 24),

          // Gönder butonu
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed:
                  _isSending
                      ? null
                      : () async {
                        if (!_formKey.currentState!.validate()) return;
                        setState(() => _isSending = true);

                        final content =
                            StringBuffer()
                              ..writeln('Ad: ${_nameCtrl.text}')
                              ..writeln('Telefon: ${_phoneCtrl.text}')
                              ..writeln('E-posta: ${_emailCtrl.text}')
                              ..writeln('Hizmet: ${_selectedService ?? '-'}')
                              ..writeln(
                                '\nProje Detayı:\n${_projectCtrl.text}',
                              );

                        final success = await sendContactEmail(
                          name: _nameCtrl.text,
                          email: _emailCtrl.text,
                          message: content.toString(),
                        );

                        setState(() => _isSending = false);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              success
                                  ? AppStrings.get('contact_success', lang)
                                  : 'Gönderim sırasında hata oluştu',
                            ),
                          ),
                        );
                        if (success) {
                          _formKey.currentState!.reset();
                          setState(() => _selectedService = null);
                        }
                      },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF0054),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                _isSending ? 'Gönderiliyor…' : AppStrings.get('send', lang),
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
