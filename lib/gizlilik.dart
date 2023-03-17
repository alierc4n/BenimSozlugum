import 'package:flutter/material.dart';

class GizlilikPolitikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gizlilik Politikası'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Text('Bu gizlilik politikası, "Benim Sözlüğüm" adlı mobil uygulamanın (bundan böyle "uygulama" olarak anılacaktır) kullanımı sırasında toplanan ve işlenen kişisel bilgiler hakkında bilgi vermektedir.\n\n'
              'Uygulamayı kullanırken, sizinle ilgili aşağıdaki bilgiler toplanabilir:\n\n'
              '- Adınız ve soyadınız\n'
              '- E-posta adresiniz\n'
              '- Profil resminiz\n'
              '- Kullanıcı adınız ve şifreniz\n'
              '- Sözlükte eklediğiniz kelimeler ve açıklamaları\n\n'
              'Ayrıca, uygulama kullanımı sırasında otomatik olarak toplanan bilgiler de bulunabilir. Bu bilgiler, cihazınızın IP adresi, işletim sistemi, cihazınızın modeli ve uygulamanın kullanımı ile ilgili diğer istatistiksel veriler olabilir.\n\n'
              'Toplanan bilgiler yalnızca uygulamanın geliştirilmesi, kullanıcı deneyimini iyileştirmek ve kullanıcıların taleplerini karşılamak için kullanılacaktır. Bu bilgiler, üçüncü şahıslarla paylaşılmayacaktır.\n\n'
              'Uygulama, kullanıcının tercihlerini hatırlamak ve uygulamanın performansını artırmak için çerezleri kullanabilir. Çerezler, cihazınızda saklanır ve uygulamayı kullanmaya devam ettiğinizde otomatik olarak tanınır.\n\n'
              'Uygulamada toplanan bilgilerin güvenliği bizim için önemlidir. Bu nedenle, uygulamayı kullanan kullanıcılar için uygun güvenlik önlemleri alınmıştır. Bununla birlikte, hiçbir veri aktarım yöntemi veya internet tabanlı depolama sistemi tamamen güvenli değildir. Bu nedenle, uygulama tarafından toplanan verilerin güvenliği konusunda hiçbir garanti veremeyiz.\n\n'
              'Bu gizlilik politikası, uygulamamızda değişiklik yapılması durumunda güncellenecektir. Bu nedenle, zaman zaman bu sayfayı ziyaret ederek güncellemeleri takip etmenizi öneririz.\n\n'
              'Bu gizlilik politikası ile ilgili herhangi bir sorunuz veya endişeniz varsa, lütfen bizimle iletişime geçmekten çekinmeyin. İletişim bilgilerimizi uygulama içinde bulabilirsiniz.',
          ),
        ),
      ),
    );
  }
}