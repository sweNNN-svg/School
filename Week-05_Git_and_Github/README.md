# Git: Versiyon Kontrol Sistemi

## 1. Git Nedir?

Git, 2005 yılında Linus Torvalds tarafından Linux çekirdeği için geliştirilen dağıtık bir versiyon kontrol sistemidir. Ana amaçları:

- Hızlı ve verimli çalışmak
    
- Dağıtık yapı (herkesin tam repo kopyasına sahip olması)
    
- Büyük projeleri yönetme yeteneği
    

## 2. Merkezi ve Dağıtık Versiyon Kontrol Sistemleri

### Merkezi VCS (CVS, Subversion)

- Tüm versiyon geçmişi merkezi bir sunucuda tutulur.
    
- Kullanıcılar dosyaları checkout yaparak alır, değişiklik yapar ve commit eder.
    
- Değişiklikler merkezi depoya bağlıdır.
    

### Dağıtık VCS (Git, Mercurial)

- Her kullanıcı, tam bir repo kopyasına sahiptir.
    
- Commit'ler önce yerel depoya yapılır.
    
- Değişiklikler gerektiğinde merkezi sunucuya push edilir.
    

## 3. Git Snapshots ve İşleyişi

Git, dosya değişikliklerini tek tek takip etmek yerine proje durumunun anlık görüntülerini (snapshots) alır.

### Git Alanları:

- **Working Directory:** Çalıştığınız ve düzenlediğiniz dosyalar.
    
- **Staging Area:** Commit'e hazır dosyalar.
    
- **Local Repository:** Commit edilen tüm değişikliklerin tutulduğu yerel depo.
    

### Git İş Akışı:

1. Dosyaları düzenle (Working Directory)
    
2. Değişiklikleri Staging Area'ya ekle (`git add`)
    
3. Commit yaparak değişiklikleri kaydet (`git commit`)
    
4. Değişiklikleri merkezi depoya gönder (`git push`)
    

## 4. Git Kurulumu ve Konfigürasyonu

### İlk Ayarlar

```
# Kullanıcı bilgilerini tanımla
git config --global user.name "Adınız"
git config --global user.email "email@example.com"

# Kullanılacak metin editörünü belirle
git config --global core.editor nano

# Yapılandırmaları kontrol et
git config --list
```

## 5. Git Temel Komutları

### Repo Oluşturma ve Klonlama

```
# Yeni bir Git deposu oluştur
git init

# Mevcut bir repoyu klonla
git clone <repo-url>
```

### Dosya Ekleme ve Commit

```
# Dosya ekleme (staging area'ya alır)
git add dosya.txt

# Commit yapma
git commit -m "Commit mesajı"
```

### Değişiklikleri Görüntüleme

```
# Çalışma alanının durumunu kontrol et
git status

# Yapılan değişiklikleri göster
git diff
```

### Değişiklikleri Geri Alma

```
# Staging area'dan çıkartma
git reset HEAD dosya.txt

# Dosyayı son commit'e geri döndürme
git checkout -- dosya.txt
```

## 6. Git Branching ve Merging

Branch'ler, paralel geliştirme yapılmasını sağlar.

```
# Yeni branch oluşturma
git branch yeni_branch

# Branch değiştirme
git checkout yeni_branch

# Branch birleştirme
git checkout master
git merge yeni_branch
```

## 7. Merge Çakışmaları ve Çözümü

Merge sırasında çakışmalar olabilir. Git, çakışmalı dosyalara `<<<` ve `>>>` ile işaretler ekler.

Çözmek için:

1. Çakışan dosyayı açın.
    
2. İstenilen değişiklikleri düzenleyin.
    
3. Çakışmaları giderdiğiniz dosyayı commit edin:

```
git add dosya.txt
git commit -m "Çakışma giderildi"
```


## 8. Uzaktan Repo ile Çalışma

GitHub veya başka bir uzak repo ile entegrasyon için temel komutlar:

```
# Uzak repodan güncellemeleri al
git pull origin master

# Değişiklikleri uzak repoya gönder
git push origin master
```

## 9. GitHub ile Çalışma

GitHub, Git tabanlı projelerin çevrimiçi paylaşılmasını sağlayan bir platformdur.

- Açık kaynak projeler için ücretsiz repo desteği sağlar.
    
- Özel projeler için ücretli planlar sunar.
    

GitHub üzerinde çalışmak için şu adımları izleyebilirsiniz:
```
# Uzak repo ekleme
git remote add origin <repo-url>

# Değişiklikleri GitHub'a gönderme
git push -u origin master
```