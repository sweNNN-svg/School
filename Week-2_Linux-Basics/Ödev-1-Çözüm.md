### 1. Dizin Yapısını Oluşturma

- **Görev:** Ev dizininizde (~/) adınızı ve soyadınızı içeren bir dizin oluşturun.
    - Örnek: `~/yourname_surname` (burada "yourname_surname" yerine gerçek adınızı ve soyadınızı kullanın)
- **İpucu:** `mkdir ~/yourname_surname`

### 2. Alt Dizin ve Dosyaların Oluşturulması

- **Görev:**
    1. `yourname_surname` dizini içinde iki alt dizin oluşturun: `Reports` ve `Logs`.
    2. `Reports` dizini içerisinde boş dosyalar oluşturun: `report1.txt`, `report2.txt` ve `report3.txt`.
    3. `Logs` dizini içerisinde boş dosyalar oluşturun: `log1.txt` ve `log2.txt`.
- **İpuçları:**
    - Dizin oluşturma: `mkdir ~/yourname_surname/Reports ~/yourname_surname/Logs`
    - Dosya oluşturma: `touch ~/yourname_surname/Reports/report1.txt ~/yourname_surname/Reports/report2.txt ~/yourname_surname/Reports/report3.txt`
    - Benzer şekilde, Logs dizini için de `touch ~/yourname_surname/Logs/log1.txt ~/yourname_surname/Logs/log2.txt`

### 3. İzin ve Sahiplik Ayarlarını Değiştirme

- **Görev:**
    1. `Logs` dizininin sahipliğini root kullanıcısına değiştirin. (Bu işlem için sudo yetkisine ihtiyacınız olabilir.)
    2. `Reports` dizininde, dosyalar için:
        - Sahip ve grup kullanıcılarına okuma ve yazma izni,
        - Diğer kullanıcılara ise yalnızca okuma izni verin.
- **İpuçları:**
    - Sahiplik değiştirme: `sudo chown root ~/yourname_surname/Logs`
    - İzin ayarlama: `chmod 664 ~/yourname_surname/Reports`  

### 4. Dosya Yönetimi

- **Görev:**
    1. `Logs` dizinindeki `log1.txt` dosyasını `Reports` dizinine kopyalayın.
    2. `Reports` dizininde yer alan `report3.txt` dosyasını `summary.txt` olarak yeniden adlandırın.
    3. `Reports` dizinindeki `report1.txt` dosyasını `Logs` dizinine taşıyın.
    4. `yourname_surname` dizininde `readme.txt` adında boş bir dosya oluşturun.
- **İpuçları:**
    - Kopyalama: `cp ~/yourname_surname/Logs/log1.txt ~/yourname_surname/Reports/`
    - Yeniden adlandırma (taşıma): `mv ~/yourname_surname/Reports/report3.txt ~/yourname_surname/Reports/summary.txt`
    - Taşıma: `mv ~/yourname_surname/Reports/report1.txt ~/yourname_surname/Logs/`
    - Dosya oluşturma: `touch ~/yourname_surname/readme.txt`

### 5. Silme ve Temizlik

- **Görev:**
    1. `Logs` dizinindeki `log2.txt` dosyasını silin.
    2. Terminal ekranını temizleyin.
    3. Yaptığınız değişiklikleri doğrulamak için dizin içeriğini listeleyin.
- **İpuçları:**
    - Dosya silme: `rm ~/yourname_surname/Logs/log2.txt`
    - Terminali temizleme: `clear`
    - Listeleme: `ls -lR ~/yourname_surname`

### 6. Dizin ve Dosya Kontrolü

- **Görev:**
    1. `yourname_surname` dizini ve tüm alt dizinlerinin içeriklerini listeleyin.
        - Soru: Toplam kaç dosya ve dizin bulunmaktadır?
    2. Sistem günlüklerinden birinin (örneğin, `/var/log/syslog` veya `/var/log/messages`) son 10 satırını görüntülemek için `tail` komutunu kullanın.
- **İpuçları:**
    - İçerik listeleme: `find ~/yourname_surname | wc -l` _(Toplam dosya ve dizin sayısını sayar)_
    - Log dosyasının görüntülenmesi: `tail -n 10 /var/log/syslog`  
        _(Not: Kullanılan log dosyasının sisteminize uygun olduğundan emin olun.)_

### 7. BONUS: Komut Geçmişini Görüntüleme

- **Görev:** Terminalde `history` komutunu çalıştırın. Çıktıda ne gibi bilgiler görüyoruz?
- **İpucu:** `history`

