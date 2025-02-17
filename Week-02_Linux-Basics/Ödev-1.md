## Ödev Soruları

1. **Dizin Yapısını Oluşturma**
    
    - Ev dizininizde (~/) adınızı ve soyadınızı içeren bir dizin oluşturun.  
        _Örnek: `~/yourname_surname` (kendi adınız ve soyadınızla oluşturun)_
2. **Alt Dizin ve Dosyaların Oluşturulması**
    
    - Oluşturduğunuz `yourname_surname` dizini içerisinde iki alt dizin oluşturun: `Reports` ve `Logs`.
    - `Reports` dizini içerisine boş dosyalar oluşturun: `report1.txt`, `report2.txt` ve `report3.txt`.
    - `Logs` dizini içerisine boş dosyalar oluşturun: `log1.txt` ve `log2.txt`.
3. **İzin ve Sahiplik Ayarlarının Değiştirilmesi**
    
    - `Logs` dizininin sahipliğini root kullanıcısına değiştirin.
    - `Reports` dizini (ve/veya içerisindeki dosyalar) için:
        - Sahip ve grup kullanıcılarına okuma ve yazma izni verin.
        - Diğer kullanıcılara yalnızca okuma izni tanımlayın.
4. **Dosya Yönetimi İşlemleri**
    
    - `Logs` dizinindeki `log1.txt` dosyasını `Reports` dizinine kopyalayın.
    - `Reports` dizinindeki `report3.txt` dosyasını `summary.txt` olarak yeniden adlandırın.
    - `Reports` dizinindeki `report1.txt` dosyasını `Logs` dizinine taşıyın.
    - `yourname_surname` dizini içerisinde `readme.txt` adında boş bir dosya oluşturun.
5. **Silme ve Temizlik İşlemleri**
    
    - `Logs` dizinindeki `log2.txt` dosyasını silin.
    - Terminal ekranını temizleyin.
    - Yapılan işlemleri kontrol etmek amacıyla `yourname_surname` dizini ve alt dizinlerinin içeriklerini listeleyin.
6. **Dizin ve Dosya Kontrolü**
    
    - `yourname_surname` dizini ve tüm alt dizinlerin içeriklerini listeleyin.
        - Soru: Toplam kaç dosya ve dizin bulunmaktadır?
    - Sistem log dosyalarından birinin (örneğin, `/var/log/syslog` veya `/var/log/messages`) son 10 satırını görüntülemek için `tail` komutunu kullanın.
7. **BONUS: Komut Geçmişinin İncelenmesi**
    
    - Terminalde `history` komutunu çalıştırın. Çıktıda ne gibi bilgiler görüyoruz?