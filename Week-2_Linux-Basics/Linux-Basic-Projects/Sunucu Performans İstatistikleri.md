Temel sunucu performans istatistiklerini analiz eden bir betik yazın.

### **Projenin Amacı**

Bu projenin amacı, sunucu performans istatistiklerini analiz eden bir betik yazmaktır.

### **Gereksinimler**

Herhangi bir Linux sunucusunda çalıştırılabilecek ve aşağıdaki istatistikleri sağlayacak **server-stats.sh** adında bir betik yazmanız gerekmektedir:

- Toplam CPU kullanımı
- Toplam bellek kullanımı (Boş ve Kullanılan, yüzde dahil)
- Toplam disk kullanımı (Boş ve Kullanılan, yüzde dahil)
- CPU kullanımına göre en fazla kaynak tüketen ilk 5 işlem
- Bellek kullanımına göre en fazla kaynak tüketen ilk 5 işlem

**Ekstra Hedef:**  
İsteğe bağlı olarak aşağıdaki gibi ek istatistikler ekleyebilirsiniz:

- İşletim sistemi versiyonu
- Sistem çalışma süresi (uptime)
- Yük ortalaması (load average)
- Oturum açmış kullanıcılar
- Başarısız giriş denemeleri

from roadmap.sh