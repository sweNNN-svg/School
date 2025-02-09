**Görevler:**

1. **Dizin Oluşturma:**
    
    - Terminal veya komut satırını açın ve `/home/ubuntu/docker` dizinine gidin.
    - Bu dizin içerisinde, adınız ve soyadınızın birleşiminden oluşan (örn. `ad_soyad`) bir klasör oluşturun.
2. **Dockerfile Oluşturma:**
    
    - Yeni oluşturduğunuz klasöre geçin.
    - Bu klasörde, bir `Dockerfile` oluşturun.
    - Dockerfile içerisinde, basit bir Docker imajı oluşturmak için gerekli temel komutları (örn. temel imaj seçimi, çalışma dizini ayarı, vs.) ekleyin.
3. **Docker İmajı Oluşturma:**
    
    - Hazırladığınız Dockerfile kullanılarak, Docker imajınızı oluşturun.
    - İmajınızı oluştururken, adını `ad-soyad` formatında belirleyin (örn. `docker build -t ad-soyad .`).
4. **Konteyner Çalıştırma:**
    
    - Oluşturduğunuz Docker imajını kullanarak bir konteyner başlatın.
    - Konteynerin çalışması sırasında oluşan çıktıyı gözlemleyin.
5. **Dockerfile Güncelleme:**
    
    - Dockerfile üzerinde düzenleme yaparak, konteyner çalıştığında ekrana kendi adınızın yazdırılmasını sağlayan bir çıktı ekleyin.
    - Düzenlemeyi yaparken Dockerfile komutlarına dikkat edin.
6. **Güncellenmiş İmajı Çalıştırma:**
    
    - Güncellenmiş Dockerfile ile tekrar bir imaj oluşturun.
    - Oluşturduğunuz yeni imajı kullanarak bir konteyner çalıştırın ve çıktıyı gözlemleyin.
7. **Temizlik:**
    
    - Çalışmalarınız sırasında oluşturduğunuz tüm Docker konteynerlerini ve imajlarını silin.
    - Kullanılmayan kaynakların sisteminizden kaldırıldığından emin olun.