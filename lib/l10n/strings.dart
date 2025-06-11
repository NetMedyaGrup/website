// lib/l10n/strings.dart

class AppStrings {
  // Text values by locale
  static const Map<String, Map<String, String>> _localizedValues = {
    'tr': {
      // Site başlığı
      'title': 'Net Medya Grup',

      // Hero bölümü
      'hero_desc': "Fikirden ekrana ",
      'hero_desc_2': "Markanızın tüm yolculuğu Net Medya'da.",
      'explore_services': 'Hizmetlerimizi Keşfet',
      'our_services': 'Hizmetlerimiz',

      // Referanslar
      'references': 'Referanslarımız',

      // İletişime geç
      'contact_us': 'İletişime Geçin',

      // Öne çıkan kartlar
      'design': 'Tasarım',
      'design_desc': 'UI/UX, logo ve kurumsal kimlik çözümleri',
      'production': 'Prodüksiyon',
      'production_desc': 'Video & fotoğraf çekimi, reklam filmleri',
      'web': 'Web Tasarımı',
      'web_desc': 'Modern ve hızlı internet siteleri',
      'ads': 'Reklam Yönetimi',
      'ads_desc': 'Meta, Google ve TikTok reklam danışmanlığı',

      'contact': 'İletişim',

      // İletişim formu (ContactSection)
      'contact_title': 'Bize Ulaşın',
      'contact_name': 'Adınız Soyadınız',
      'contact_email': 'E-posta Adresiniz',
      'contact_phone': 'Telefon Numaranız',
      'contact_message': 'Projeniz Hakkında Bilgi Verebilir Misiniz?',
      'offer_service': 'Almak İstediğiniz Hizmet',
      'send': 'Gönder',
      'contact_success': 'Mesaj gönderildi (örnek)!',

      // Açıklama metni altında çıkan soru
      'contact_question': 'Nasıl yardımcı olabiliriz?',
      'contact_info':
          'Tasarım, prodüksiyon ya da reklam yönetimiyle ilgili tüm ihtiyaçlarınız için bizimle iletişime geçebilirsiniz.',

      // Sabit karttaki etiketler
      'contact_email_label': 'E-posta',
      'contact_email_value': 'info@netmedya.tr',
      'contact_support_label': 'Müşteri Desteği',
      'contact_support_value': '0507 208 95 98',
      'contact_office_gsm_label': 'Ofis GSM',
      'contact_office_gsm_value': '0505 351 11 52',

      // Adresler
      'address_general_label': 'Genel Merkez',
      'address_general_value':
          'Kavaklıdere, Esat Cd. 12/2, 06680 Çankaya/Ankara',
      'address_management_label': 'Yönetim Ofisi',
      'address_management_value':
          'Güçlükaya, Evrim Sk. No:6, 06310 Keçiören/Ankara',

      // Footer
      'footer_copyright': '© 2025 Net Medya Grup. Tüm hakları saklıdır.',
      'footer_motto': 'İnovatif Fikirlerin Birleştiği Bir Vizyon',
      'footer_company': 'Net Medya Grup',
      'footer_location': 'Size Çok Yakınız',

      // Header menüleri
      'corporate': 'Kurumsal',
      'about': 'Hakkımızda',
      'team': 'Ekibimiz',
      'careers': 'Kariyer',
      'companyInfo': 'Şirket Bilgilerimiz',
      'works': 'Çalışmalarımız',
      'servicesMenu': 'Hizmetlerimiz',
      'videoProd': 'Video, Fotoğraf & Drone Prodüksiyonu',
      'googleMeta': 'Google & Meta Reklam Danışmanlığı',
      'mapping': 'Görsel Haritalama & 3D Modelleme',
      'tour360': '360° Sanal Tur',
      'adConsult': 'Reklam Yönetimi Danışmanlığı',
      'socialMedia': 'Sosyal Medya Yönetimi',
      'graphicDesign': 'Grafik Tasarım',
      'webDev': 'Web Tasarımı & Geliştirme',
      'logoDesign': 'Logo Tasarımı & Kurumsal Kimlik',

      // CTA
      'getQuote': 'Hemen Teklif Alın',
      'services': 'Hizmetlerimiz',

      // Prodüksiyon çözümleri
      'prod_title':
          'Net Medya Grup olarak, markanızı en net haliyle yansıtan prodüksiyon çözümleri sunuyoruz.',
      'prod_desc':
          'Görsel anlatım gücüne inanıyoruz. Bu yüzden her karede kaliteyi, her videoda etkiyi önceliklendiriyoruz. '
          'Profesyonel ekipmanlarımız ve yaratıcı bakış açımızla; tanıtım filmleri, reklam çekimleri, drone görüntüleri ve '
          '360 derece sanal turlar gibi hizmetlerde markanızı rakiplerinizden ayrıştırıyoruz.\n'
          'Doğru prodüksiyon ajansı seçimi, marka algınızı ve dijital görünürlüğünüzü doğrudan etkiler.\n'
          'Net Medya Grup, her projeye özel çözümler sunar; hızlı teslim, yüksek çözünürlük ve kurumsal vizyona uygunluk '
          'bizim standartlarımızdır.',
      'prod_link':
          'Dijital Dünyada Net ve Etkili Adımlar atmak için, güçlü bir prodüksiyonla başlayın.',

      'detail_info': 'Detaylı Bilgi Al',

      // Hizmet açıklamaları
      'svc_social_title': 'Sosyal Medya Yönetimi',
      'svc_social_sub': 'Dijitalde Net ve Etkili Olmak',
      'svc_social_desc':
          'Sosyal medya, markanızın dijital dünyadaki sesi ve yüzüdür. '
          'Size özel stratejilerle; hedef kitlenizle doğru bağ kurmanızı, '
          'etkileşimi artırmanızı ve görünürlüğünüzü sağlamlaştırmanızı sağlıyoruz. '
          'Her ay düzenli raporlamalarla rakamsal veriler sunuyor, içeriklerimizi '
          'prodüksiyon gücümüzle birleştirerek fark yaratıyoruz.',

      'svc_logo_title': 'Logo Tasarımı & Kurumsal Kimlik',
      'svc_logo_sub': 'Markanızın Karakterini Şekillendiriyoruz',
      'svc_logo_desc':
          'Logo, markanızın dijitalde bıraktığı ilk izlenimdir. Sadece estetik değil; '
          'anlamlı, özgün ve uzun ömürlü olması gerekir. Markanızın dinamiklerini, '
          'hedef kitlenizi ve değerlerinizi analiz ederek; akılda kalıcı ve işlevsel '
          'tasarımlar sunuyoruz. Kartvizit, antetli kağıt, sunum şablonları, e-posta '
          'imzası gibi tüm dokümanlarınızı entegre bir kimlikle oluşturuyoruz.',

      'svc_video_title': 'Video, Fotoğraf & Drone Prodüksiyon',
      'svc_video_sub': 'Net, Etkileyici ve Yüksek Kaliteli Görseller',
      'svc_video_desc':
          'Tanıtım filmleri, reklam videoları, kurumsal fotoğraf çekimleri ve drone '
          'görüntüleme hizmetlerimizle; her açıdan güçlü bir marka hikâyesi sunuyoruz. '
          'Kurgu, renk düzenleme ve ses tasarımına kadar tüm prodüksiyon sürecini kendi '
          'ekibimizle yürütüyor; yüksek kaliteyi standart haline getiriyoruz.',

      'svc_promo_title': 'Tanıtım Filmi',
      'svc_promo_sub': 'Markanızı Anlatan Profesyonel Video',
      'svc_promo_desc':
          'Tanıtım filmi, işletmenizin dijital vitrini gibidir. Size özel senaryo, kurgu ve '
          'müzik seçimi ile markanızın doğru hikâyesini anlatıyoruz. Çekimden post-prodüksiyona '
          'kadar tüm süreci üstlenerek, hedef kitlenizi etkileyen ve akılda kalıcı bir içerik '
          'oluşturuyoruz.',

      'svc_reels_title': 'Reels & Sosyal Medya Videoları',
      'svc_reels_sub': 'Etkileşimle Büyüyen Kısa Videolar',
      'svc_reels_desc':
          'Sosyal medya trendlerine uygun, dikey formatta ve güçlü kurguya sahip reels '
          'videolar üretiyoruz. Hem paylaşılabilirlik oranınızı artırmanızı hem de dijitalde '
          'fark edilmenizi sağlıyoruz. Kreatif fikirlerimizle etkileşimi maksimuma çıkarıyoruz.',

      'svc_product_title': 'Ürün Çekimi & E-Ticaret Görsel Çözümleri',
      'svc_product_sub': 'Satışa Yönlendiren Dijital Vitrin',
      'svc_product_desc':
          'E-ticaret platformlarında rekabet, görselle başlar. Profesyonel ürün çekimleriyle '
          'ürünlerinizi en doğru ışık ve açıyla sunuyoruz. Beyaz fondan konsept çekimlere kadar '
          'her ihtiyaca uygun çözümler sunarak, satışa dönüşen görseller üretiyoruz.',

      'svc_tour_title': '360° Sanal Tur',
      'svc_tour_sub': 'Mekanınızı Dijitalde Gezilebilir Hale Getirin',
      'svc_tour_desc':
          'Sanal tur teknolojisi, otel, restoran, klinik, okul, emlak ofisi gibi sektörlerde '
          'müşteri deneyimini artırır. Profesyonel çekim, düzenleme ve web entegrasyonu ile '
          'Google Haritalar’a ve web sitenize entegre edilebilen interaktif turlar hazırlıyoruz.',

      'svc_mapping_title': 'Görsel Haritalama & 3D Modelleme',
      'svc_mapping_sub': 'Gerçek Mekânları Dijitalde Hayata Geçiriyoruz',
      'svc_mapping_desc':
          'Drone çekimlerinden başlayarak; verileri işliyor, detaylı 3D modellere dönüştürüyor '
          've interaktif sunumlara entegre ediyoruz. Mimarlık, inşaat, otomotiv, e-ticaret gibi '
          'alanlarda projelerinizi dijitalde en gerçekçi haliyle sergilemenizi sağlıyoruz.',

      'svc_adsconsult_title': 'Google & Meta Reklam Danışmanlığı',
      'svc_adsconsult_sub': 'Dönüşüm Odaklı Dijital Büyüme',
      'svc_adsconsult_desc':
          'Google Ads ve Meta (Instagram & Facebook) reklam kampanyalarınızı veriye dayalı ve '
          'yaratıcı stratejilerle yönetiyoruz. Hedef kitle analizi, günlük optimizasyon ve aylık '
          'raporlamalar ile reklam bütçenizi en etkin şekilde kullanmanızı sağlıyoruz.',

      'svc_campaign_title': 'Reklam Yönetimi Danışmanlığı',
      'svc_campaign_sub': 'Stratejik ve Bütçe Odaklı Çözümler',
      'svc_campaign_desc':
          'Dijital ve geleneksel reklam kanallarınız için stratejik danışmanlık sunuyoruz. '
          'Marka analiziniz, rakip araştırması ve mecralara göre özel reklam haritaları ile '
          'yatırımınızın geri dönüşünü maksimize etmeyi hedefliyoruz.',

      'svc_graphic_title': 'Grafik Tasarım',
      'svc_graphic_sub': 'Marka Kimliğinizi Güçlendiren Stratejik Tasarımlar',
      'svc_graphic_desc':
          'Grafik tasarım, markanızın dijital ve fiziksel tüm mecralarda tutarlı, estetik ve profesyonel '
          'görünmesini sağlar. Sosyal medya gönderilerinden kurumsal sunumlara kadar geniş bir yelpaze.',

      'svc_web_title': 'Web Tasarım & Geliştirme',
      'svc_web_sub': '',
      'svc_web_desc':
          'Kurumsal web sitelerinden e-ticaret platformlarına, landing page çözümlerinden çok dilli '
          'projelerde kadar; modern arayüz ve güvenli altyapı sağlayarak dijitalde fark yaratırız.',

      // “Neler Yapıyoruz?” başlığı (zaten mevcutsa koruyun)
      'neler_title': 'Neler Yapıyoruz?',

      // EKLENECEK: Altında gösterilecek uzun açıklama metni
      'neler_full_desc':
          '''Markaların dijital dünyadaki gücünü artırmak için, her biri ihtiyaca özel tasarlanmış prodüksiyon ve dijital danışmanlık çözümleri sunuyoruz.
Video ve fotoğraf prodüksiyonu, 360° sanal tur çekimleri, drone görüntüleme, sosyal medya yönetimi ve reklam danışmanlığı gibi alanlarda, net ve sonuç odaklı hizmetler veriyoruz.
Görsel kaliteden ödün vermiyoruz “çünkü” ilk izlenimin, dijitalde her şey demek olduğunu biliyoruz!
Her kareyi özenle planlıyoruz “çünkü” güçlü bir anlatım markanızı akılda kalıcı kılar!
Sosyal medyada stratejik ilerliyoruz “çünkü” sadece görünür olmak değil, etkileşim yaratmak istiyoruz!
Drone’dan sanal tura kadar tüm prodüksiyon süreçlerini titizlikle yürütüyoruz “çünkü” fark edilmeniz için her açıyı değerlendiriyoruz!

Her projede; markanın sektörünü, hedef kitlesini ve vizyonunu merkeze alırız. Ürettiğimiz içerikler; keşfedilirlik sağlayan, etkileşimi artıran ve satışa dönüşen stratejilere dayanır.
Net Medya Grup olarak, dijitalde güçlü ve sürdürülebilir bir varlık oluşturmak isteyen tüm markaları, yaratıcı ve profesyonel çözümlerle tanışmaya davet ediyoruz.''',

      // “Reklam Yönetimi Danışmanlığı” sayfa başlığı
      'adconsult_page_title': 'Reklam Yönetimi Danışmanlığı',

      // Alt başlık
      'adconsult_page_sub':
          'Reklam Bütçenizi Stratejiyle Buluşturuyor, Markanıza Etkili Sonuçlar Kazandırıyoruz.',

      // Sayfa içeriğindeki uzun açıklama (paragraflar arasına \n\n koyuldu)
      'adconsult_full_desc':
          '''Hazır mısınız? Bu sadece bir danışmanlık süreci değil; sürdürülebilir başarıya odaklanan bütünsel bir reklam yönetimidir.

Reklam yönetimi artık sadece içerik üretmekten ibaret değil; doğru platform, doğru zamanlama ve doğru analizle yürütülmesi gereken çok yönlü bir süreçtir.

Net Medya Grup olarak, dijitalden geleneksele kadar tüm reklam kanallarınız için stratejik danışmanlık sunuyoruz.

Markanızın hedeflerini, sektörel dinamiklerini ve rakip analizlerini inceleyerek size özel bir reklam haritası oluşturuyoruz.

Google, Meta, YouTube, açık hava, basılı mecra ve sponsorlu içerik dahil olmak üzere tüm mecralarda doğru planlama ve ölçülebilir başarı için yanınızda oluyoruz.

Her kampanyada bütçenizi etkin kullanmak, maksimum geri dönüş almak ve sürdürülebilir görünürlük sağlamak için süreci uçtan uca yönetiyoruz.

Marka algınızı güçlendirmek, yatırımınızı doğru kullanmak ve dijitalde sağlam adımlarla ilerlemek istiyorsanız; doğru stratejiyle buradayız.''',

      // Buton metni
      'adconsult_cta': 'Hemen İletişime Geçin',

      // Google & Meta Reklam Danışmanlığı sayfa metinleri
      'google_meta_page_title': 'Google & Meta Reklam Danışmanlığı',
      'google_meta_page_sub':
          'Markanızı Doğru Kitleyle Buluşturuyor, Reklam Bütçenizi Etkili Sonuçlara Dönüştürüyoruz.',
      'google_meta_para1':
          'Hazır mısınız? Bu sadece bir reklam kampanyası değil; dönüşüm odaklı bir dijital büyüme sürecidir.',
      'google_meta_para2':
          'Dijital reklam platformları artık sadece görünür olmak için değil, satış, bilinirlik ve etkileşim için stratejik olarak kullanılmalı.',
      'google_meta_para3':
          'Net Medya Grup olarak, Google Ads ve Meta (Instagram & Facebook) reklam yönetimini veriye dayalı, hedef odaklı ve yaratıcı yaklaşımlarla yürütüyoruz.',
      'google_meta_para4':
          'Reklam kampanyalarınızı planlarken, doğru hedef kitle analizi yapar, içeriklerinizi stratejiye uygun hale getirir ve reklam sürecini baştan sona yönetiriz.',
      'google_meta_para5':
          'Her kampanyada dönüşüm oranlarını takip eder, günlük optimizasyonlar ve aylık raporlamalarla sonuçları netleştiririz.',
      'google_meta_para6':
          'Dijitalde daha fazla görünürlük, daha fazla etkileşim ve daha güçlü bir yatırım dönüşü arıyorsanız, doğru stratejiyle yanınızdayız.',
      'google_meta_cta': 'Hemen İletişime Geçin',

      // Grafik Tasarım sayfası
      'graphic_design_page_title': 'Grafik Tasarım',
      'graphic_design_page_sub':
          'Marka Kimliğinizi Güçlendiren, Mesajınızı Net Aktaran Tasarımlar Üretiyoruz.',
      'graphic_design_para1':
          'Hazır mısınız? Sadece bir görsel tasarım değil; algıyı yöneten, etkiyi büyüten stratejik bir iletişim aracıdır.',
      'graphic_design_para2':
          'Grafik tasarım, markanızın dijital ve fiziksel tüm mecralarda tutarlı, estetik ve profesyonel görünmesini sağlar. Ancak sadece güzel görünmek yetmez; doğru mesaj, doğru biçimle verilmelidir.',
      'graphic_design_para3':
          'Net Medya Grup olarak, kreatif tasarım anlayışımızı markanızın hedef kitlesi ve sektörüne uygun biçimde şekillendiriyor; işlevsel ve fark edilir tasarımlar üretiyoruz.',
      'graphic_design_para4':
          'Sosyal medya gönderilerinden kurumsal sunumlara, reklam afişlerinden katalog ve broşür tasarımlarına kadar geniş bir yelpazede hizmet sunuyoruz.',
      'graphic_design_para5':
          'Her tasarım sürecini marka renkleri, font tercihleri ve kurumsal duruşla uyum içinde kurguluyoruz.',
      'graphic_design_para6':
          'Markanızı anlatan, dikkat çeken ve profesyonellik algısını artıran grafik tasarımlar için güvenilir ve yaratıcı bir çözüm ortağı arıyorsanız; biz buradayız.',
      'graphic_design_cta': 'Hemen İletişime Geçin',

      // Logo Tasarımı ve Kurumsal Kimlik sayfası
      'logo_design_page_title': 'Logo Tasarımı ve Kurumsal Kimlik',
      'logo_design_page_sub':
          'Dijitalde Güçlü Bir İlk İzlenim İçin Net ve Profesyonel Adımlar Atıyoruz.',
      'logo_design_para1':
          'Hazır mısınız? Bu sadece bir tasarım değil, markanızın karakterini şekillendiren stratejik bir süreçtir.',
      'logo_design_para2':
          'Logo, markanızın dijitalde bıraktığı ilk izlenimdir. Ama sadece estetik değil; anlamlı, özgün ve sürdürülebilir olması gerekir.',
      'logo_design_para3':
          'Net Medya Grup olarak, tasarıma başlamadan önce markanızın sektörel dinamiklerini, hedef kitlesini ve değerlerini analiz ediyor; buna uygun, uzun ömürlü ve akılda kalıcı logolar tasarlıyoruz.',
      'logo_design_para4':
          'Kurumsal kimlik ise markanızın tüm platformlarda aynı dili konuşmasını sağlar. Logo tasarımıyla uyumlu şekilde; kartvizit, antetli kağıt, sunum şablonları, e-posta imzaları gibi tüm kurumsal dokümanlarınızı tasarlıyor ve profesyonel bir marka görünümü oluşturuyoruz.',
      'logo_design_para5':
          'Her aşamada özgünlüğü ve işlevselliği ön planda tutuyor; markanızın dijitalde güçlü, tutarlı ve güven veren bir kimlikle temsil edilmesini sağlıyoruz.',
      'logo_design_para6':
          'Logo tasarımından kurumsal kimliğe kadar tüm görsel altyapınızı tek elden, entegre ve stratejik şekilde inşa etmek istiyorsanız, sizin için buradayız.',
      'logo_design_cta': 'Hemen İletişime Geçin',

      //Sosyal Medya Yönetimi sayfası
      'social_media_page_title': 'Sosyal Medya Yönetimi',
      'social_media_page_sub':
          'Dijitalde Net ve Etkili Olmak İsteyen Markalar İçin Profesyonel, Kreatif ve Stratejik Çözümler Sunuyoruz.',
      'social_media_para1':
          'Hazır mısınız? Bu bir içerikten fazlası: uçtan uca bir dönüşüm yolculuğu.',
      'social_media_para2':
          'Sosyal medya, markanızın dijital dünyadaki sesi ve yüzüdür. Ama her platformda görünmek değil; doğru yerde, doğru içerikle görünmek önemlidir.',
      'social_media_para3':
          'Net Medya Grup olarak, sosyal medya yönetimini yalnızca paylaşım yapmakla sınırlı görmüyoruz. Her marka için özel olarak hazırladığımız stratejilerle; hedef kitlenizle doğru bağ kurmanızı, etkileşimi artırmanızı ve görünürlüğünüzü sağlamlaştırmanızı sağlıyoruz.',
      'social_media_para4':
          'Her ay düzenli raporlamalarla, yaptıklarımızı sayılarla somutlaştırıyor; içeriklerimizi prodüksiyon gücümüzle birleştirerek fark yaratıyoruz.',
      'social_media_para5':
          'Görsel gücü yüksek, algoritmalarla uyumlu ve marka kimliğinize özel sosyal medya içerikleri üretmek istiyorsanız, sizin için buradayız.',
      'social_media_cta': 'Hemen İletişime Geçin',

      // Video, Fotoğraf & Drone Prodüksiyonu sayfası
      'video_prod_page_title': 'Video, Fotoğraf & Drone Prodüksiyonu',
      'video_prod_para1':
          'Markanızı Yansıtan Net, Etkileyici ve Yüksek Kaliteli Görseller Üretiyoruz.',
      'video_prod_para2':
          'Hazır mısınız? Bu sadece bir çekim değil; markanız için kurulan güçlü bir görsel hikâye.',
      'video_prod_para3':
          'Görsel içerikler, dijital dünyada markanızın en net ve kalıcı ifadesidir. Ama sadece görüntü yakalamak yetmez; doğru açı, doğru kurgu ve doğru kurumsallık gerekir.',
      'video_prod_para4':
          'Net Medya Grup olarak; tanıtım filmleri, reklam videoları, kurumsal fotoğraf çekimleri ve drone görüntüleme hizmetlerimizle markanıza özel içerikler üretiyoruz.',
      'video_prod_para5':
          'Her projede, hedef kitlenizi ve kullanım alanınızı analiz ederek; ister sosyal medya, ister web sitesi, ister TV yayınları için profesyonel çözümler sunuyoruz.',
      'video_prod_para6':
          'Prodüksiyon sürecinin her adımını — kurgu, montaj, renk düzenleme ve ses tasarımına kadar — kendi ekibimizle titizlikle yürütüyor, yüksek kaliteyi standart haline getiriyoruz.',
      'video_prod_para7':
          'Görsel gücü yüksek, yaratıcı ve markanızı temsil eden içerikler istiyorsanız, siz çekime hazır olun; biz her kareyi markanıza özel planlıyoruz.',

      'promo_video_title': 'Tanıtım Filmi',
      'promo_video_para1':
          'Markanızı Anlatan, Hedef Kitlenizi Etkileyen ve Kalıcı İzlenim Bırakan Videolar Üretiyoruz.',
      'promo_video_para2':
          'Hazır mısınız? Bu sadece bir video değil; profesyonelce kurgulanmış bir marka anlatısıdır.',
      'promo_video_para3':
          'Tanıtım filmi, işletmenizin dijital vitrini gibidir. Ama herkesin tanıttığı şekilde değil, sizi siz yapan detaylarla hazırlanmalıdır.',
      'promo_video_para4':
          'Net Medya Grup olarak; senaryo, çekim, kurgu ve müzik seçiminden post-prodüksiyona kadar tüm süreçleri kendi bünyemizde yürüterek markanıza özel ve yüksek kaliteli tanıtım filmleri üretiyoruz.',
      'promo_video_para5':
          'Kurumsal vizyonunuzu doğru anlatmak, hedef kitlenizi etkilemek ve dijitalde fark yaratmak istiyorsanız, ilk adımı birlikte atalım.',

      'reels_title': 'Reels ve Sosyal Medya Videoları',
      'reels_para1':
          'Dikkat Çeken, Algoritmaya Uygun ve Markanızı Öne Çıkaran Kısa Videolar Üretiyoruz.',
      'reels_para2':
          'Hazır mısınız? Bu sadece kısa bir video değil; etkileşimle büyüyen bir stratejidir.',
      'reels_para3':
          'Reels içerikler, markaların sosyal medyada büyümesini sağlayan en hızlı yoldur. Ama bu hızın arkasında yaratıcılık, planlama ve doğru prodüksiyon vardır.',
      'reels_para4':
          'Net Medya Grup olarak, sosyal medya trendlerine uygun, dikey formatta, etkili kurgu ve güçlü görsellerle reels videolar üretiyor; hem paylaşılabilirlik oranınızı artırıyor hem de dijitalde fark edilmenizi sağlıyoruz.',
      'reels_para5':
          'Tıklanabilir, paylaşılabilir ve konuşulabilir içerikler için doğru yerdesiniz.',

      'product_photo_title': 'Ürün Çekimi & E-Ticaret Görsel Çözümleri',
      'product_photo_para1':
          'Ürünlerinizi Dijitalde En Etkili Haliyle Sunuyoruz.',
      'product_photo_para2':
          'Hazır mısınız? Bu sadece bir fotoğraf değil; satışla sonuçlanan bir dijital vitrin tasarımıdır.',
      'product_photo_para3':
          'E-ticaret platformlarında rekabet, görselle başlar. Ama sadece ürününüzü göstermek değil; doğru ışıkla, doğru açıyla ve profesyonel teknikle sunmak gerekir.',
      'product_photo_para4':
          'Net Medya Grup olarak, e-ticaret odaklı profesyonel ürün çekimleriyle markanızın dijital vitrini güçlendiriyoruz.',
      'product_photo_para5':
          'Her ürün için beyaz fonda sade görsellerden, kullanım alanına özel konsept çekimlere kadar geniş bir prodüksiyon altyapısı sunuyoruz.',
      'product_photo_para6':
          'Tüm görseller; sosyal medya, web ve pazar yeri standartlarına uygun olarak hazırlanır, renk düzenlemeleri ve kırpma işlemleriyle satışa hazır hale getirilir.',
      'product_photo_para7':
          'Görsel kalitesi yüksek, güven veren ve satın almaya yönlendiren ürün sunumları oluşturmak istiyorsanız, sizin için buradayız.',

      'video_prod_cta': 'Hemen İletişime Geçin',

      // 360° Sanal Tur sayfası
      'virtual_tour_page_title': '360° Sanal Tur',
      'virtual_tour_page_sub':
          'Mekanınızı Dijitalde Gezilebilir Hale Getiriyoruz. Gerçekten Oradaymış Gibi Hissedin.',
      'virtual_tour_para1':
          'Hazır mısınız? Bu sadece bir görsel değil; interaktif bir deneyimdir.',
      'virtual_tour_para2':
          'Sanal tur teknolojisi, otel, restoran, klinik, okul, emlak ofisi ve daha birçok sektörde müşteri deneyimini artıran bir araçtır.',
      'virtual_tour_para3':
          'Net Medya Grup olarak Insta360 kameralardan başlayarak, profesyonel çekim, düzenleme ve web entegrasyonuna kadar tüm süreci yönetiyoruz. Google Haritalar ve web sitenize entegre edilebilen bu turlar, kullanıcıyı içeri çeker ve güven kazandırır.',
      'virtual_tour_para4':
          'Mekânınızı öne çıkaran, sürükleyici bir dijital deneyim sunmak istiyorsanız, sanal tur ile fark yaratın.',
      'virtual_tour_cta': 'Hemen İletişime Geçin',

      // Görsel Haritalama ve 3D Modelleme sayfası
      'visual_mapping_page_title': 'Görsel Haritalama ve 3D Modelleme',
      'visual_mapping_page_sub':
          'Gerçek Mekânları ve Ürünleri Dijitalde Gerçeğe En Yakın Haliyle Sunuyoruz.',
      'visual_mapping_para1':
          'Hazır mısınız? Bu sadece bir modelleme hizmeti değil; etkili sunum, detaylı analiz ve yüksek görünürlük sağlayan dijital bir deneyimdir.',
      'visual_mapping_para2':
          'Görsel haritalama ve 3D modelleme, mimarlık, inşaat, otomotiv, endüstri ve e-ticaret gibi pek çok alanda artık yalnızca sunum değil, karar alma ve ikna süreçlerinde stratejik bir araçtır.',
      'visual_mapping_para3':
          'Net Medya Grup olarak; bina dışı çekimleri, araç ve ürün görselleştirmeleri gibi birçok alanda profesyonel modelleme hizmeti sunuyoruz.',
      'visual_mapping_para4':
          'Drone ile yapılan yüksek çözünürlüklü çekimlerden başlayarak, tüm görsel verileri işliyor, detaylı 3D modellere dönüştürüyor ve kullanılabilir formatlara entegre ediyoruz.',
      'visual_mapping_para5':
          'Projelerinizi dijitalde interaktif şekilde sergilemek, yatırımcıları etkilemek ya da kullanıcı deneyimini artırmak istiyorsanız; ihtiyacınıza özel, optimize edilmiş çözümler geliştiriyoruz.',
      'visual_mapping_para6':
          'Mimari yapı modellemelerinden araç tanıtımlarına, ürün odaklı sunumlardan keşfedilebilir mekan haritalarına kadar her alanda görsel gücünüzü artırıyoruz.',
      'visual_mapping_para7':
          'Gerçekliği dijitale taşıyan güçlü bir anlatım istiyorsanız, doğru yerdesiniz.',
      'visual_mapping_cta': 'Hemen İletişime Geçin',

      // Web Tasarımı ve Geliştirme sayfası
      'web_dev_page_title': 'Web Tasarım ve Geliştirme',
      'web_dev_page_sub':
          'Markanızı Dijitalde En İyi Şekilde Temsil Eden, Hızlı ve Kullanıcı Odaklı Web Siteleri Tasarlıyoruz.',
      'web_dev_para1':
          'Hazır mısınız? Bu sadece bir internet sitesi değil; görünürlük, güven ve dönüşüm sağlayan dijital bir vitrin tasarımıdır.',
      'web_dev_para2':
          'Web siteniz, dijital dünyadaki en önemli temsilcinizdir. Ancak yalnızca estetik değil; hızlı, mobil uyumlu, SEO dostu ve dönüşüm odaklı olması gerekir.',
      'web_dev_para3':
          'Net Medya Grup olarak, markanıza özel web arayüzleri geliştiriyor; kullanıcı deneyimini ve performansı merkeze alan tasarımlar üretiyoruz.',
      'web_dev_para4':
          'Kurumsal web sitelerinden e-ticaret platformlarına, landing page çözümlerinden çok dilli projelere kadar her ihtiyacınıza uygun geliştirme süreçleri sunuyoruz.',
      'web_dev_para5':
          'Her projede modern arayüz tasarımı, güvenli altyapı, güçlü içerik yönetimi ve entegre SEO çözümleri bir arada sunulur.',
      'web_dev_para6':
          'Web dünyasında hızlı, etkili ve profesyonel bir varlık oluşturmak istiyorsanız, markanız için net çözümlerle buradayız.',
      'web_dev_cta': 'Hemen İletişime Geçin',

      // CTA
      'contact_cta_title': 'Projeniz mi Var? Bizimle İletişime Geçebilirsiniz.',

      'aboutSectionHeading': 'Dijital Başarıda Net İmza',
      'aboutSectionParagraph1':
          'Markalarımızı dijital dünyada güçlü stratejilerle büyütmeye devam ediyoruz.',
      'aboutSectionAward2023':
          '2023 Mart ayında, Ankara Dijital Başarı Ödülleri’nde Yılın En Etkili Sosyal Medya Ajansı seçildik.',
      'aboutSectionAward2024':
          '2024 Nisan ayında ise, Çanakkale Kreatif Medya Ödülleri’nde Kreatif Video Prodüksiyon kategorisinde birincilikle onurlandırıldık.',
      'aboutSectionParagraph4':
          'Bu ödüller, strateji, üretim ve yaratıcılık konusundaki kararlılığımızın bir göstergesi.',
      'aboutSectionParagraph5':
          'Net Medya Grup olarak, dijitalde kalıcı ve etkili izler bırakmaya devam ediyoruz.',

      "team_section_title": "Yönetim Kurulu",
      "see_more": "→ Detayı Gör",

      "referencesHeading":
          "Her biri sektörünün öncüsü olan markalarımıza dijital yolculuğunda eşlik etmekten mutluluk duyuyoruz.",

      // Kariyer
      'career_heading': 'Kariyer fırsatları',
      'career_subheading': 'İşe Alım Süreçlerimiz',
      'career_step_0': 'İşe Alım Görevleri',
      'career_step_1': 'Görüşme',
      'career_step_2': 'Lider ile Sohbet',
      'career_step_3': 'Aramıza Hoşgeldin',
      'career_desc_0': 'Net Medya Ailesine katılmak mı istiyorsunuz?...',
      'career_desc_1': 'Takım liderlerimizle hızlı bir tanışma sohbeti.',
      'career_desc_2': 'Teknik ve kültürel sohbet ile süreci keşfedin.',
      'career_desc_3': 'Hoşgeldiniz! Aramıza katıldınız.',
      // İş ilanı başlıkları
      'job_fullstack': 'Full Stack Developer',
      'job_sosyal': 'Sosyal Medya Uzmanı',
      'job_art': 'Art Direktör',
      'job_googleads': 'Google Ads Uzmanı',
      'job_type_fulltime': 'Tam Zamanlı • Ofis (Ankara)',
      // Dil seçici
      'tr': 'TR',
      'en': 'EN',
    },
    'en': {
      // aynı İngilizce karşılıklar…
      'title': 'Net Media Group',

      'hero_desc': "Your brand's entire journey ",
      'hero_desc_2': "from idea to screen is on Net Medya.",

      'explore_services': 'Explore Our Services',
      'our_services': 'Our Services',
      'references': 'Our References',
      'contact_us': 'Contact Us',
      'design': 'Design',
      'design_desc': 'UI/UX, logo & brand identity solutions',
      'production': 'Production',
      'production_desc': 'Video & photography shoots, commercials',
      'web': 'Web Design',
      'web_desc': 'Modern and fast websites',
      'ads': 'Ad Management',
      'ads_desc': 'Meta, Google and TikTok ad consultancy',

      'contact': 'Contact',

      'contact_title': 'Get in Touch',
      'contact_name': 'Your Full Name',
      'contact_email': 'Your Email Address',
      'contact_phone': 'Your Phone Number',
      'contact_message': 'Tell Us About Your Project',
      'offer_service': 'Select Service',
      'send': 'Send',
      'contact_success': 'Your message has been sent!',

      'contact_question': 'How can we help you?',
      'contact_info':
          'Contact us for all your needs in design, production, or ad management.',

      'contact_email_label': 'Email',
      'contact_email_value': 'info@netmedya.tr',
      'contact_support_label': 'Customer Support',
      'contact_support_value': '0507 208 95 98',
      'contact_office_gsm_label': 'Office GSM',
      'contact_office_gsm_value': '0505 351 11 52',

      'address_general_label': 'Head Office',
      'address_general_value':
          'Kavaklıdere, Esat Cd. 12/2, 06680 Çankaya/Ankara',
      'address_management_label': 'Management Office',
      'address_management_value':
          'Güçlükaya, Evrim Sk. No:6, 06310 Keçiören/Ankara',

      'footer_copyright': '© 2025 Net Media Group. All rights reserved.',
      'footer_motto': 'A Vision Where Innovative Ideas Unite',
      'footer_company': 'Net Media Group',
      'footer_location': 'We Are Very Close to You',

      'corporate': 'Corporate',
      'about': 'About',
      'team': 'Team',
      'careers': 'Careers',
      'companyInfo': 'Company Info',
      'works': 'Our Works',
      'servicesMenu': 'Our Services',
      'videoProd': 'Video, Photo & Drone Production',
      'googleMeta': 'Google & Meta Ad Consultancy',
      'mapping': 'Visual Mapping & 3D Modeling',
      'tour360': '360° Virtual Tour',
      'adConsult': 'Ad Management Consultancy',
      'socialMedia': 'Social Media Management',
      'graphicDesign': 'Graphic Design',
      'webDev': 'Web Design & Development',
      'logoDesign': 'Logo Design & Brand Identity',

      'getQuote': 'Get a Quote',
      'services': 'Services',

      'prod_title':
          'At Net Media Group, we offer production solutions that reflect your brand in the clearest form.',
      'prod_desc':
          'We believe in the power of visual storytelling. That’s why we prioritize quality in every frame and impact in every video. '
          'With our professional equipment and creative approach, we differentiate your brand from competitors through services such as promotional '
          'films, commercials, drone footage, and 360° virtual tours.\n'
          'Choosing the right production agency directly affects your brand perception and digital visibility.\n'
          'Net Media Group delivers custom solutions for every project; fast delivery, high resolution, and alignment with your corporate vision are our standards.',
      'prod_link':
          'Start with a powerful production to take clear and effective steps in the digital world.',

      'detail_info': 'Learn More',

      'svc_social_title': 'Social Media Management',
      'svc_social_sub': 'Clear & Effective Digital Solutions',
      'svc_social_desc':
          'Social media is the voice and face of your brand in the digital world. '
          'With custom strategies tailored for each brand, we help you connect with your '
          'target audience, boost engagement, and strengthen your visibility. We back up '
          'our activities with monthly reports and combine them with our production power '
          'to create real impact.',

      'svc_logo_title': 'Logo Design & Corporate Identity',
      'svc_logo_sub': 'Shaping Your Brand’s Character',
      'svc_logo_desc':
          'A logo is the first impression your brand leaves online. It must be not only '
          'aesthetic but also meaningful, original, and enduring. We analyze your industry’s '
          'dynamics, target audience, and values to deliver memorable and functional designs. '
          'Then we create business cards, letterheads, presentation templates, email signatures, '
          'and all corporate documents under a unified visual identity.',

      'svc_video_title': 'Video, Photo & Drone Production',
      'svc_video_sub': 'Clear, Impactful & High-Quality Visuals',
      'svc_video_desc':
          'With promo films, commercials, corporate photography, and drone footage, we create '
          'a powerful visual story from every angle. We handle every step of the production '
          'process—editing, color grading, and sound design—with our in-house team, making high '
          'quality our standard.',

      'svc_promo_title': 'Promotional Film',
      'svc_promo_sub': 'Professional Video That Tells Your Story',
      'svc_promo_desc':
          'A promotional film is the digital showcase of your business. We craft a custom '
          'script, edit, and select music that truly tells your brand’s story. From shooting to '
          'post-production, we manage every detail to deliver content that resonates with your '
          'target audience and leaves a lasting impression.',

      'svc_reels_title': 'Reels & Social Media Videos',
      'svc_reels_sub': 'Short Videos That Drive Engagement',
      'svc_reels_desc':
          'We produce reels optimized for social media trends, vertical formats, and dynamic editing '
          'to maximize shareability and visibility. With creative ideas and strong visuals, we '
          'help you stand out and boost interaction.',

      'svc_product_title': 'Product Photography & E-Commerce Visuals',
      'svc_product_sub': 'Digital Showcase That Sells',
      'svc_product_desc':
          'In e-commerce, competition starts with visuals. We present your products with professional '
          'photography in the perfect light and angle. From white-background shots to concept setups, '
          'we produce sales-driven visuals tailored for every platform.',

      'svc_tour_title': '360° Virtual Tour',
      'svc_tour_sub': 'Make Your Space Digitally Walkable',
      'svc_tour_desc':
          '360° virtual tours enhance customer experience in hotels, restaurants, clinics, schools, '
          'real estate agencies, and more. We handle professional shooting, editing, and web integration '
          'to deliver interactive tours that embed seamlessly into Google Maps and your website.',

      'svc_mapping_title': 'Visual Mapping & 3D Modeling',
      'svc_mapping_sub': 'Bring Real Spaces to Digital Life',
      'svc_mapping_desc':
          'Starting from drone footage, we process the data, convert it into detailed 3D models, and integrate '
          'it into interactive presentations. Whether it’s architecture, construction, automotive, or '
          'e-commerce, we showcase your projects in the most realistic digital form.',

      'svc_adsconsult_title': 'Google & Meta Ad Consultancy',
      'svc_adsconsult_sub': 'Conversion-Focused Digital Growth',
      'svc_adsconsult_desc':
          'We manage your Google Ads and Meta (Instagram & Facebook) campaigns with data-driven, creative strategies. '
          'From audience targeting to daily optimizations and monthly reports, we ensure your ad budget is used efficiently.',

      'svc_campaign_title': 'Ad Management Consultancy',
      'svc_campaign_sub': 'Strategic & Budget-Focused Solutions',
      'svc_campaign_desc':
          'We provide strategic consulting for both digital and traditional ad channels. Through brand analysis, competitor research, '
          'and channel-specific planning, we aim to maximize your return on ad spend.',

      // Mevcut kartlardan bazıları zaten varsa lütfen muhafaza edin:
      'svc_graphic_title': 'Graphic Design',
      'svc_graphic_sub': 'Strategic Designs That Strengthen Your Brand',
      'svc_graphic_desc':
          'Graphic design ensures your brand looks consistent, aesthetic, and professional across all digital and physical channels. '
          'From social media posts to corporate presentations.',

      'svc_web_title': 'Web Design & Development',
      'svc_web_sub': '',
      'svc_web_desc':
          'From corporate websites to e-commerce platforms, landing pages to multilingual projects, '
          'we deliver modern interfaces and secure infrastructures that make a real digital impact.',

      // “What We Do?” başlığı (zaten mevcutsa koruyun)
      'neler_title': 'What We Do?',

      // EKLENECEK: İngilizce long-desc
      'neler_full_desc':
          '''To boost brands’ power in the digital world, we offer tailored production and digital consultancy solutions.
From video and photography production to 360° virtual tours, drone imaging, social media management, and ad consultancy, we deliver clear, results-driven services.
We never compromise on visual quality “because” first impressions in the digital space mean everything!
We meticulously plan each frame “because” a strong narrative makes your brand memorable.
We move strategically on social media “because” we aim not just to be seen, but to create engagement!
From drone to virtual tours, we carry out every production process with precision “because” we evaluate every angle to make you stand out!

On every project, we place the brand’s industry, target audience, and vision at the core. The content we create is based on strategies that enhance discoverability, boost engagement, and convert into sales.
As Net Media Group, we invite all brands aiming to establish a powerful and sustainable digital presence to meet our creative and professional solutions.''',

      // “Ad Management Consultancy” page title
      'adconsult_page_title': 'Ad Management Consultancy',

      // Subtitle
      'adconsult_page_sub':
          'We merge your ad budget with strategy to deliver impactful results for your brand.',

      // Full description (paragraflar \n\n ile ayrıldı)
      'adconsult_full_desc':
          '''Are you ready? This is not just a consultancy process; it’s a holistic ad management focused on sustainable success.

Ad management is no longer just about producing content; it’s a multifaceted process that requires the right platform, timing, and analysis.

At Net Media Group, we offer strategic consultancy for all your ad channels, from digital to traditional.

We analyze your brand’s goals, sector dynamics, and competitor benchmarks to create a custom ad roadmap for you.

From Google, Meta, YouTube to out-of-home, print media, and sponsored content—we are with you for proper planning and measurable success across all channels.

On every campaign, we manage the process end-to-end to use your budget efficiently, maximize ROI, and ensure sustainable visibility.

If you want to strengthen your brand perception, make the most of your investment, and move forward strongly in the digital realm, we are here with the right strategy.''',

      // Button text
      'adconsult_cta': 'Contact Us Now',

      // Google & Meta Ad Consultancy page texts
      'google_meta_page_title': 'Google & Meta Ad Consultancy',
      'google_meta_page_sub':
          'Connecting Your Brand to the Right Audience, Turning Your Ad Budget into Effective Results.',
      'google_meta_para1':
          'Ready to start? This is not just an advertising campaign; it’s a conversion-focused digital growth process.',
      'google_meta_para2':
          'Digital advertising platforms should be used not only for visibility but to drive sales, awareness, and engagement strategically.',
      'google_meta_para3':
          'At Net Media Group, we manage Google Ads and Meta (Instagram & Facebook) campaigns with data-driven, targeted, and creative approaches.',
      'google_meta_para4':
          'When planning your campaigns, we conduct precise audience analysis, tailor your content to the strategy, and manage the process end-to-end.',
      'google_meta_para5':
          'In every campaign, we track conversion rates and clarify results with daily optimizations and monthly reports.',
      'google_meta_para6':
          'If you seek more visibility, engagement, and a stronger ROI in the digital realm, we’re here with the right strategy.',
      'google_meta_cta': 'Get in Touch Now',

      // Graphic Design page
      'graphic_design_page_title': 'Graphic Design',
      'graphic_design_page_sub':
          'Strategic designs that strengthen your brand and deliver your message clearly.',
      'graphic_design_para1':
          'Ready? It’s not just a visual design; it’s a strategic communication tool that guides perception and amplifies impact.',
      'graphic_design_para2':
          'Graphic design ensures your brand looks consistent, aesthetic, and professional across all digital and physical channels. But looking good isn’t enough; the right message must be delivered in the right form.',
      'graphic_design_para3':
          'At Net Media Group, we shape our creative design approach to fit your audience and industry, delivering functional and memorable designs.',
      'graphic_design_para4':
          'From social media posts to corporate presentations, from ad posters to catalogs and brochures, we offer a wide range of services.',
      'graphic_design_para5':
          'We align every design process with your brand colors, font choices, and corporate stance.',
      'graphic_design_para6':
          'If you’re looking for a reliable and creative partner for attention-grabbing, professionalism-enhancing graphic designs, we’re here for you.',
      'graphic_design_cta': 'Contact Us Now',

      // Logo Design and Corporate Identity page
      'logo_design_page_title': 'Logo Design & Corporate Identity',
      'logo_design_page_sub':
          'Taking clear, professional steps for a strong first impression online.',
      'logo_design_para1':
          'Ready? It’s not just a design—it’s a strategic process that shapes your brand’s character.',
      'logo_design_para2':
          'A logo is your brand’s first digital impression. It must be not only aesthetic but meaningful, original, and sustainable.',
      'logo_design_para3':
          'At Net Media Group, we analyze your industry dynamics, audience, and values before designing logos that are long-lasting and memorable.',
      'logo_design_para4':
          'Corporate identity ensures a unified voice across all platforms. We design your business cards, letterheads, presentation templates, email signatures, and more.',
      'logo_design_para5':
          'We put originality and functionality first at every step, ensuring your brand is represented with a strong, coherent, and trustworthy identity.',
      'logo_design_para6':
          'If you want to build your entire visual infrastructure—from logo to full corporate identity—integrated and strategically, we’re here for you.',
      'logo_design_cta': 'Contact Us Now',

      // Social Media Management page
      'social_media_page_title': 'Social Media Management',
      'social_media_page_sub':
          'We offer professional, creative, and strategic solutions for brands that want to be clear and effective online.',
      'social_media_para1':
          'Ready? This is more than content: it’s an end-to-end transformation journey.',
      'social_media_para2':
          'Social media is your brand’s voice and face in the digital world. But it’s not about being present on every platform; it’s about appearing in the right place with the right content.',
      'social_media_para3':
          'At Net Media Group, we don’t limit social media management to posting. With custom strategies for each brand, we help you connect with your target audience, boost engagement, and solidify your visibility.',
      'social_media_para4':
          'With monthly reports, we quantify our work, and by combining content with our production power, we create real impact.',
      'social_media_para5':
          'If you want visually powerful, algorithm-friendly, and brand-specific social media content, we’re here for you.',
      'social_media_cta': 'Contact Us Now',

      // Video, Photo & Drone Production page
      'video_prod_page_title': 'Video, Photo & Drone Production',
      'video_prod_para1':
          'We produce clear, impactful, and high-quality visuals that reflect your brand.',
      'video_prod_para2':
          'Ready? This is more than a shoot; it’s a powerful visual story crafted for your brand.',
      'video_prod_para3':
          'Visual content is your brand’s clearest and most lasting expression in the digital world. But capturing images alone isn’t enough; you need the right angle, the right edit, and the right professionalism.',
      'video_prod_para4':
          'At Net Media Group, we create custom content for your brand with promotional films, commercials, corporate photography, and drone footage.',
      'video_prod_para5':
          'On every project, we analyze your target audience and use case to deliver professional solutions for social media, websites, or TV broadcasts.',
      'video_prod_para6':
          'We meticulously handle every step of the production process in-house—from editing and assembly to color grading and sound design—making high quality our standard.',
      'video_prod_para7':
          'If you want high-impact, creative, and brand-representative content, you get ready for the shoot; we plan each frame tailored to your brand.',

      'promo_video_title': 'Promotional Video',
      'promo_video_para1':
          'We produce videos that tell your story, resonate with your audience, and leave a lasting impression.',
      'promo_video_para2':
          'Ready? This is more than a video; it’s a professionally crafted brand narrative.',
      'promo_video_para3':
          'A promotional video is your business’s digital showcase. But it shouldn’t be done like everyone else’s; it should highlight the details that make you unique.',
      'promo_video_para4':
          'At Net Media Group, we handle the entire process in-house—from script and shooting to editing and music selection—to create unique, high-quality promotional videos.',
      'promo_video_para5':
          'If you want to accurately convey your corporate vision, engage your audience, and stand out digitally, let’s take the first step together.',

      'reels_title': 'Reels & Social Media Videos',
      'reels_para1':
          'We create short videos that capture attention, align with algorithms, and highlight your brand.',
      'reels_para2':
          'Ready? This is more than a short video; it’s a strategy that grows with engagement.',
      'reels_para3':
          'Reels are the fastest way for brands to grow on social media. But behind that speed is creativity, planning, and the right production.',
      'reels_para4':
          'At Net Media Group, we produce trend-driven, vertical-format reels with impactful editing and strong visuals—boosting your shareability and digital visibility.',
      'reels_para5':
          'You’re in the right place for clickable, shareable, and talk-worthy content.',

      'product_photo_title': 'Product Photography & E-Commerce Visuals',
      'product_photo_para1':
          'We showcase your products at their most effective online.',
      'product_photo_para2':
          'Ready? This is more than a photograph; it’s a digital showcase designed to drive sales.',
      'product_photo_para3':
          'Competition on e-commerce platforms starts with visuals. But it’s not just about showing your product—it’s about presenting it with the right lighting, angle, and professional technique.',
      'product_photo_para4':
          'At Net Media Group, we strengthen your brand’s digital showcase with e-commerce-focused professional product photography.',
      'product_photo_para5':
          'We offer a wide production infrastructure—from clean white-background shots to concept photography tailored to usage scenarios—for every product.',
      'product_photo_para6':
          'All visuals are prepared to social media, web, and marketplace standards, and finalized with color grading and cropping for sale readiness.',
      'product_photo_para7':
          'If you want high-quality, trust-building, and conversion-driving product presentations, we’re here for you.',

      'video_prod_cta': 'Contact Us Now',

      // 360° Virtual Tour page
      'virtual_tour_page_title': '360° Virtual Tour',
      'virtual_tour_page_sub':
          'Make Your Space Digitally Walkable. Feel Like You’re Really There.',
      'virtual_tour_para1':
          'Ready? This is more than a visual; it’s an interactive experience.',
      'virtual_tour_para2':
          'Virtual tour technology is a tool that enhances customer experience in hotels, restaurants, clinics, schools, real estate offices, and many other sectors.',
      'virtual_tour_para3':
          'At Net Media Group, we manage the entire process—from Insta360 camera shooting to professional editing and web integration. These tours, which can be embedded into Google Maps and your website, draw users in and build trust.',
      'virtual_tour_para4':
          'If you want to showcase your space and offer an immersive digital experience, stand out with a virtual tour.',
      'virtual_tour_cta': 'Contact Us Now',

      // Görsel Haritalama ve 3D Modelleme sayfası
      'visual_mapping_page_title': 'Visual Mapping & 3D Modeling',
      'visual_mapping_page_sub':
          'We present real spaces and products digitally as close to reality as possible.',
      'visual_mapping_para1':
          'Ready? This is more than a modeling service; it’s a digital experience that delivers effective presentations, detailed analysis, and high visibility.',
      'visual_mapping_para2':
          'Visual mapping and 3D modeling have become a strategic tool not only for presentations but also for decision-making and persuasion processes in architecture, construction, automotive, industry, and e-commerce.',
      'visual_mapping_para3':
          'At Net Media Group, we offer professional modeling services in areas such as exterior building shoots, vehicle and product visualizations.',
      'visual_mapping_para4':
          'Starting with high-resolution drone footage, we process all visual data, convert it into detailed 3D models, and integrate it into usable formats.',
      'visual_mapping_para5':
          'If you want to showcase your projects interactively online, impress investors, or enhance user experience, we develop customized, optimized solutions for your needs.',
      'visual_mapping_para6':
          'From architectural structure models to vehicle presentations, from product-focused displays to explorable space maps, we increase your visual impact in every field.',
      'visual_mapping_para7':
          'If you want a powerful narrative that brings reality into digital, you’re in the right place.',
      'visual_mapping_cta': 'Contact Us Now',

      // Web Design & Development page
      'web_dev_page_title': 'Web Design & Development',
      'web_dev_page_sub':
          'We design fast, user-focused websites that showcase your brand at its best online.',
      'web_dev_para1':
          'Ready? This is more than a website; it’s a digital showcase designed for visibility, trust, and conversion.',
      'web_dev_para2':
          'Your website is your most important representative in the digital world. But it needs to be not only aesthetic but fast, mobile-friendly, SEO-optimized, and conversion-focused.',
      'web_dev_para3':
          'At Net Media Group, we develop custom web interfaces centered on user experience and performance.',
      'web_dev_para4':
          'From corporate websites to e-commerce platforms, landing page solutions to multilingual projects, we offer development processes tailored to every need.',
      'web_dev_para5':
          'Every project combines modern interface design, secure infrastructure, powerful content management, and integrated SEO solutions.',
      'web_dev_para6':
          'If you want to establish a quick, effective, and professional presence online, we’re here with clear solutions for your brand.',
      'web_dev_cta': 'Contact Us Now',

      // CTA
      'contact_cta_title': 'Have a project? Get in touch with us.',

      'aboutSectionHeading': 'Net Mark of Digital Success',
      'aboutSectionParagraph1':
          'We continue to grow our brands with strong strategies in the digital world.',
      'aboutSectionAward2023':
          'In March 2023, we were selected as the Most Influential Social Media Agency at the Ankara Digital Success Awards.',
      'aboutSectionAward2024':
          'In April 2024, we were honored with first place in the Creative Video Production category at the Çanakkale Creative Media Awards.',
      'aboutSectionParagraph4':
          'These awards are a testament to our commitment to strategy, production, and creativity.',
      'aboutSectionParagraph5':
          'At Net Media Group, we continue to leave lasting and effective marks in the digital realm.',

      "team_section_title": "Board of Directors",
      "see_more": "→ See Details",

      "referencesHeading":
          "We are happy to accompany our brands, each of which is a pioneer in their sector, on their digital journey.",

      'career_heading': 'Career Opportunities',
      'career_subheading': 'Our Hiring Process',
      'career_step_0': 'Hiring Tasks',
      'career_step_1': 'Interview',
      'career_step_2': 'Chat with Lead',
      'career_step_3': 'Welcome Aboard',
      'career_desc_0': 'Want to join the Net Media family?...',
      'career_desc_1': 'Quick introductory chat with our team leads.',
      'career_desc_2':
          'Explore the process with technical and cultural discussions.',
      'career_desc_3': 'Welcome! You’re now part of our team.',
      'job_fullstack': 'Full Stack Developer',
      'job_sosyal': 'Social Media Specialist',
      'job_art': 'Art Director',
      'job_googleads': 'Google Ads Specialist',
      'job_type_fulltime': 'Full Time • Onsite (Ankara)',
      'tr': 'TR',
      'en': 'EN',
    },
  };

  static const Map<String, Map<String, List<String>>> _localizedLists = {
    'tr': {
      'footer_services': [
        'Web Tasarım',
        'Kurumsal Seo Ajansı',
        // …etc…
      ],
      'footer_corporate': ['Hakkımızda', 'Projelerimiz', 'Kariyer', 'İletişim'],
      "works_projects_titles": [
        "Katalog Fotoğraf Çekimi",
        "Ürün Fotoğraf Çekimi",
        "Ürün Video Çekimi",
        "Sinematik Video Çekimi",
        "Trend Video Çekimi",
        "Drone Fotoğraf Çekimi",
        "Drone Video Çekimi",
        "Sanal Tur",
      ],
      "works_projects_subtitles": [
        "Profesyonel katalog çalışmaları",
        "E-ticaret ve ürün çekimleri",
        "E-ticaret ve ürün video çekimleri",
        "Kısa film tadında videolar",
        "Trend sosyal medya videoları",
        "Yüksek çözünürlüklü drone kareleri",
        "Dinamik hava videoları",
        "360° sanal tur deneyimi",
      ],
      'works_projects_categories': [
        "Fotoğraf",
        "Fotoğraf",
        "Video",
        "Video",
        "Video",
        "Drone Fotoğraf",
        "Drone Video",
        "Sanal Tur",
      ],

      'works_filter_categories': [
        "Tümü",
        "Fotoğraf",
        "Video",
        "Drone",
        "Sanal Tur",
      ],
    },
    'en': {
      'footer_services': [
        'Web Design',
        'Corporate SEO Agency',
        // …etc…
      ],
      'footer_corporate': ['About Us', 'Our Projects', 'Careers', 'Contact'],
      'works_projects_titles': [
        'Catalog Photography',
        'Product Photography',
        'Product Video Production',
        'Cinematic Video Production',
        'Trend Video Production',
        'Drone Photography',
        'Drone Video Production',
        'Virtual Tour',
      ],
      'works_projects_subtitles': [
        'Professional catalog works',
        'E-commerce and product shoots',
        'E-commerce and product video shoots',
        'Short film-like videos',
        'Trend social media videos',
        'High-resolution drone shots',
        'Dynamic aerial videos',
        '360° virtual tour experience',
      ],
      'works_projects_categories': [
        'Photography',
        'Photography',
        'Video',
        'Video',
        'Video',
        'Drone Photography',
        'Drone Video',
        'Virtual Tour',
      ],
      'works_filter_categories': [
        'All',
        'Photography',
        'Video',
        'Drone',
        'Virtual Tour',
      ],
    },
  };

  // Get a single translated string
  static String get(String key, String locale) =>
      _localizedValues[locale]?[key] ?? key;

  /// Get a list of translated strings (e.g. for footer nav items)
  static List<String> getList(String key, String locale) =>
      _localizedLists[locale]?[key] ?? const [];
}
