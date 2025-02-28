**1. Linux Nedir?**
 
- Açık kaynaklı, ücretsiz bir işletim sistemi çekirdeğidir.
    
- Windows/macOS'ten farklı olarak, dağıtımlar (Ubuntu, Fedora, Debian vb.) halinde kullanılır.
    
- GNU araçlarıyla bütünleşik, evrensel ve topluluk/business destekli bir sistemdir.
    

**2. Neden Linux?**

- Ücretsiz ve açık kaynak.
    
- Kişisel bilgisayarlardan süper bilgisayarlara kadar esnek kullanım.
    
- Topluluk ve şirketler tarafından aktif geliştirilir.
    

**3. Temel Bileşenler**

- **Dağıtımlar**: Farklı amaçlara uygun (sunucu, masaüstü) sürümler (Örnek: Ubuntu, CentOS).
    
- **Masaüstü Ortamları**: GNOME (modern) vs. KDE (özelleştirilebilir) gibi seçenekler.
    

**4. Dosya Sistemi**

- Ağaç yapısında düzenlenir (kök dizin: `/`).
    
- Her dizinin bir üst dizini (`.parent`) vardır, en üstte kök dizin bulunur.
    
- Özel dizinler: `~` (ev dizini), `.` (bulunulan dizin), `..` (üst dizin).
    

**5. Kabuk (Shell) ve Komutlar**

- **Bash**: Komut yorumlayıcı (varsayılan).
    
- **Komut Yapısı**: `komut --seçenek argüman` (Örnek: `ls -l /home`).
    
- **Temel Komutlar**:
    
    - `pwd` (dizin yolu), `ls` (dosya listesi), `cd` (dizin değiştir).
        
    - `cp/mkdir/rm` (dosya/dizin kopyala/oluştur/sil).
        
    - `find` (dosya arama), `chmod/chown` (izinler/sahiplik yönetimi).
        

**6. Dosya/Dizin İşlemleri**

- **Arama**: `find ~ -name "*.txt"` (txt dosyalarını bul).
    
- **İzinler**: `rwx` (okuma/yazma/çalıştırma). `chmod 754 dosya` (izinleri ayarla).
    
- **Sıkıştırma**:
    
    - `tar -czvf arşiv.tar.gz klasör/` (oluştur).
        
    - `tar -xzvf arşiv.tar.gz` (aç).
        

**7. Metin Düzenleyiciler**

- **nano**: Basit terminal editörü.
    
- **vim/emacs**: Gelişmiş özellikler (öğrenme eğrisi yüksek).
    
- **gedit**: Grafik arayüzlü (Windows Notepad benzeri).
    

**8. Uzak Makine Yönetimi**

- **SSH**: `ssh kullanıcı@sunucu` ile uzak bağlantı.
    
- **Dosya Transferi**:
    
    - `scp dosya.txt kullanıcı@sunucu:/hedef` (dosya kopyala).
        
    - `scp -r` ile dizin aktarımı.
        

**9. Sistem Kaynakları İzleme**

- **Bellek**: `free -h` (RAM kullanımı).
    
- **CPU**: `lscpu` veya `/proc/cpuinfo`.
    
- **Disk**: `df -h` (disk alanı).
    
- **Süreçler**: `top` veya `htop` (gerçek zamanlı izleme).
    

**10. Yardımcı Araçlar**

- **man**: Komut kılavuzları (`man ls`).
    
- **history**: Önceki komutları gösterir (`!123` ile tekrar çalıştır).
    
- **Wildcards**: `*` (tüm dosyalar), `?` (tek karakter eşleştirme).
    

**Önemli Notlar**

- Linux, özelleştirilebilirliği ve güvenliğiyle DevOps süreçlerinde sık tercih edilir.
    
- Terminal kullanımı ve komut satırı araçları, otomasyon ve CI/CD için kritiktir.
    
- Dosya izinleri ve kullanıcı yönetimi, sunucu güvenliğinde temel rol oynar.