
Bu dosya, Git Temelleri projesinde gerçekleştirdiğim adımları ve kullanılan komutları içermektedir. Lütfen kendi projenizde yaptığınız işlemleri yansıtacak şekilde güncelleyiniz.

---

## 1. Ortak Sunucuya Bağlanma

**Kullanılan Komutlar:**

```bash
ssh <kullanıcı_adınız>@<sunucu_adresi>
cd /home/<kullanıcı_adınız>
```

## 2. Depo Oluşturma

**Kullanılan Komutlar:**
```
mkdir git-temelleri
cd git-temelleri
git init
```

## 3. README Dosyasını Hazırlama

**README.md Dosyasının İçeriği:**
```
# Git Temelleri
Bu proje, temel Git komutlarını öğrenmek ve uygulamak amacıyla hazırlanmıştır.
```

Kullanılan Komutlar:

```
touch README.md
# Daha sonra README.md dosyasını açıp yukarıdaki içeriği ekleyiniz.
```

## 4. İlk Commit İşlemi

**Kullanılan Komutlar:**
```
git add README.md
git commit -m "İlk commit: README.md dosyasının oluşturulması"
```

## 5. Branch Oluşturma ve Kişisel Katkı Ekleme

**Branch Oluşturma ve Geçiş:**
```
git checkout -b özellik/<adınız>-guncelleme
```

README.md Dosyasına Eklenen Katkı:
```
## Katkım
- DevOps ve Git'e olan ilgimi bu projede ifade ediyorum.
```

Kullanılan Komutlar:
```
git add README.md
git commit -m "Katkım: README.md dosyasına kişisel katkı eklendi"
```

## 6. Değişiklikleri Uzak Depoya Gönderme (Push)

**Kullanılan Komutlar:**

```
git remote add origin <uzak_depo_URL'si>
git push -u origin master   # veya 'main', ana dalınızın ismine göre
git push -u origin özellik/<adınız>-guncelleme
```

## 7. Çalışmanın Kanıtı

Aşağıdaki komutların çıktıları, projenizdeki commit geçmişini ve branch’leri göstermektedir.

**Git Log (Kısa Format):**

```
git log --oneline
```

Örnek Çıktı:
```
f3a1b2c (HEAD -> özellik/<adınız>-guncelleme) Katkım: README.md dosyasına kişisel katkı eklendi
a1b2c3d (master) İlk commit: README.md dosyasının oluşturulması
```

Branch Listesi:
```
git branch
```

Örnek Çıktı:
```
* özellik/<adınız>-guncelleme
  master
```

