import 'dart:convert';
import 'package:http/http.dart' as http;

/// Proxy’nizin URL’i
const _proxyUrl = 'https://zoho-proxy-jwoo.onrender.com/sendMail';

/// Proxy’ye form verilerini POST edip sonucu döner
Future<bool> sendContactEmail({
  required String name,
  required String email,
  required String message,
}) async {
  final resp = await http.post(
    Uri.parse(_proxyUrl),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({'name': name, 'email': email, 'message': message}),
  );

  if (resp.statusCode == 200) {
    final data = jsonDecode(resp.body);
    return data['success'] == true;
  } else {
    // Hata durumu: opsiyonel log
    print('Proxy error ${resp.statusCode}: ${resp.body}');
    return false;
  }
}
