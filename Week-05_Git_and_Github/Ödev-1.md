## Amaç

Bu ödevin amacı, temel Git komutlarını kullanarak bir depo oluşturmayı, branch (dal) yönetimini ve işbirliğini deneyimlemenizi sağlamaktır.

## Görevler

1. **Ortak Sunucuya Bağlanma**
    
    - SSH kullanarak ortak sunucuya bağlanın.
    - `/home/<kullanıcı_adınız>` dizinine gidin.

2. **Depo Oluşturma**
    
    - Kendi çalışma alanınızda `git-temelleri-atolyesi` adında bir klasör oluşturun.
    - Bu klasörde bir Git deposu başlatın.

3. **README Dosyasını Hazırlama**
    
    - `git-temelleri-atolyesi` klasörü içerisine `README.md` adında bir dosya oluşturun.
    - Dosyanın içine aşağıdaki temel içeriği ekleyin (ihtiyaç duyarsanız düzenleyebilirsiniz):
```
# Git Temelleri
Bu proje, temel Git komutlarını öğrenmek ve uygulamak amacıyla hazırlanmıştır.
```

4. **İlk Commit İşlemi**
    
    - `README.md` dosyasını staging alanına ekleyin.
    - Uygun bir commit mesajı ile dosyayı commit edin.

5. **Branch (Dal) Oluşturma ve Kişisel Katkı**
    
    - `özellik/<adınız>-guncelleme` şeklinde yeni bir branch oluşturun.
    - Oluşturduğunuz branch’e geçiş yapın.
    - `README.md` dosyasına aşağıdaki gibi bir bölüm ekleyin:
    - Yaptığınız değişiklikleri commit edin.
```
# Katkım
- DevOps ve Git'e olan ilginiz, katkılarınız hakkında kısa bir açıklama ekleyin.
```

6. **Değişiklikleri Push Etme**
    
    - Tüm commit’lerin doğru şekilde tamamlandığından emin olduktan sonra, yerel deponuzdaki değişiklikleri uzak depoya (örneğin GitHub) push edin.

7. **Çalışmanızın Kanıtı**
    
    - Projenizde en az iki commit bulunmalıdır:
        - İlk commit: `README.md` dosyasının oluşturulması.
        - İkinci commit: Katkınızın eklenmesi.
    - Aşağıdaki komutların çıktısını kaydedin ve proje deposunda gösterin:
        - `git log --oneline`
        - `git branch`