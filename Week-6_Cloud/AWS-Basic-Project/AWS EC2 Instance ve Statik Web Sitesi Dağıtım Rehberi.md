Bu rehberde, AWS hesabı oluşturma, EC2 instance başlatma, SSH ile bağlanma, sistem güncelleme, Nginx kurulumu ve basit bir HTML sayfası dağıtımı adım adım anlatılmaktadır.

---

## 1. AWS Hesabı Oluşturma ve Konsol Girişi

- [AWS Hesabı Oluşturma](https://aws.amazon.com/tr/) sayfasına giderek bir hesap oluşturun.
- AWS Management Console’a giriş yapın.

## 2. EC2 Instance Oluşturma

### 2.1. Instance Başlatma

1. AWS Management Console’da **EC2** servisini seçin.
2. **Launch Instance** butonuna tıklayın.

### 2.2. AMI ve Instance Türü Seçimi

- **AMI:** Ubuntu Server (LTS sürümü tercih edilebilir)
- **Instance Türü:** `t2.micro` (AWS Free Tier kapsamında)

### 2.3. Ağ ve Güvenlik Ayarları

- **VPC ve Alt Ağ:** Varsayılan VPC ve alt ağı kullanın.
- **Güvenlik Grubu:** Aşağıdaki kuralları ekleyin:
    - **Port 22 (SSH):** Kaynak: Sizin IP adresiniz (veya belirlediğiniz IP aralığı)
    - **Port 80 (HTTP):** Kaynak: Tüm IP’ler (`0.0.0.0/0`)

### 2.4. Anahtar Çifti (Key Pair) Ayarı

- **Yeni bir key pair oluşturun** ya da mevcut bir key pair’i seçin.
- Key pair dosyasını (`.pem`) güvenli bir yerde saklayın.

### 2.5. Instance’ı Başlatma

- Tüm ayarlar tamamlandıktan sonra **Launch Instance** butonuna tıklayın.
- Instance oluşturulduktan sonra, public IP adresinin atandığından emin olun.

---

## 3. EC2 Instance’a SSH ile Bağlanma

### 3.1. Key Dosyasının İzinlerini Ayarlama

Terminal veya komut satırında aşağıdaki komutu çalıştırın:
```
chmod 400 /path/to/your-key.pem
```

### 3.2. SSH Bağlantısı

Aşağıdaki komutu kullanarak EC2 instance’a bağlanın (örnekte kullanıcı `ubuntu`’dur):
```
ssh -i /path/to/your-key.pem ubuntu@<EC2_PUBLIC_IP>
```

`<EC2_PUBLIC_IP>` kısmına instance’ın public IP adresini yazın.

---

## 4. Sistem Güncelleme ve Nginx Kurulumu

### 4.1. Sistem Paketlerini Güncelleme

SSH ile bağlandıktan sonra, aşağıdaki komut ile sistemi güncelleyin:
```
sudo apt update && sudo apt upgrade -y
```

### 4.2. Nginx Web Sunucusunu Kurma

Aşağıdaki komutu kullanarak Nginx’i kurun:
```
sudo apt install nginx -y
```

---

## 5. Statik Web Sitesi Dağıtımı

### 5.1. HTML Dosyası Oluşturma

Nginx’in varsayılan dizini `/var/www/html` olduğundan, basit bir HTML dosyası oluşturun:
```
sudo nano /var/www/html/index.html
```

Aşağıdaki içerik örneğini dosyaya yapıştırın:
```
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Statik Web Sitesi</title>
</head>
<body>
    <h1>Merhaba, AWS EC2 Üzerinde Barındırılan Web Siteme Hoş Geldiniz!</h1>
</body>
</html>
```

Dosyayı kaydedip kapatın (Nano editöründe: `CTRL+O`, `Enter`, ardından `CTRL+X`).

### 5.2. Nginx’i Yeniden Başlatma

Değişikliklerin uygulanması için Nginx’i yeniden başlatın:
```
`sudo systemctl restart nginx`
```

---

## 6. Web Sitesine Erişim

- Tarayıcınızı açın ve EC2 instance’ınızın **public IP adresini** girin.
- Web sitenizin açıldığını görmelisiniz.