
## 1. Dizin Oluşturma

1. Terminali açın ve `/home/ubuntu/docker` dizinine gidin.
2. Adınız ve soyadınızın birleşiminden oluşan (örneğin: `ad_soyad`) bir klasör oluşturun ve bu klasöre geçin:

```bash
cd /home/ubuntu/docker
mkdir ad_soyad
cd ad_soyad````

## 2. Docker İmajı Oluşturma

Dockerfile’ı kullanarak imajınızı oluşturun. İmajınızın adını `ad-soyad` olarak etiketleyin (örneğin, kendi adınız ve soyadınızı kullanın).

```
docker build -t ad-soyad .
```

## 3. Docker Konteyneri Çalıştırma

Oluşturduğunuz imajı kullanarak bir konteyner başlatın ve çıktıyı gözlemleyin.
```
docker run ad-soyad
```

## 4. Dockerfile Güncelleme: İsim Yazdırma

Dockerfile’ı açın ve `CMD` komutunu güncelleyerek, konteyner çalıştığında kendi adınızın ve soyadınızın ekrana yazdırılmasını sağlayın. Örneğin, adınız "Ahmet Yılmaz" ise Dockerfile içeriğini aşağıdaki gibi güncelleyebilirsiniz:

```
# Güncellenmiş Dockerfile: Kendi isminizi yazdıran imaj
FROM ubuntu:latest

# Konteyner çalıştığında kendi isminizi ekrana yazdırma
CMD ["echo", "Ahmet Yılmaz"]
```

## 5. Güncellenmiş İmajı Oluşturma ve Çalıştırma

Güncellenmiş Dockerfile ile yeniden bir imaj oluşturun:
```
docker build -t ad-soyad .
```

Ardından, oluşturduğunuz imajı kullanarak bir konteyner başlatın:
```
docker run ad-soyad
```

Bu sefer konteyner çalıştığında, Dockerfile’da belirttiğiniz adınızın ve soyadınızın ekrana yazdırıldığını görmelisiniz.

## 7. Docker Konteynerleri ve İmajlarını Temizleme

Çalışmalarınız sırasında oluşturduğunuz tüm konteynerleri ve imajları silmek için aşağıdaki komutları kullanabilirsiniz.

### a) Tüm Konteynerleri Durdurma ve Silme

Önce çalışan konteynerleri durdurun, ardından hepsini kaldırın:
```
# Tüm çalışan konteynerleri durdurma
docker stop $(docker ps -q)

# Tüm konteynerleri silme
docker rm $(docker ps -aq)
```

b) Tüm Docker İmajlarını Silme
```
docker rmi $(docker images -q)
```

*Not: Eğer bazı imajlar halen kullanılan konteynerlerden kaynaklı olarak silinmiyorsa, önce ilgili konteynerleri durdurup kaldırdığınızdan emin olun.*