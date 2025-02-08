### Docker Nedir?

Docker, uygulamaların bağımsız ve taşınabilir konteynerler içinde çalışmasını sağlayan açık kaynaklı bir platformdur. Konteynerler, uygulamaların farklı ortamlarda tutarlı bir şekilde çalışmasını garanti eder.

### Docker Neden Önemlidir?

- **Hızlı ve Hafif:** Konteynerler, sanal makinelerden çok daha hızlı çalışır ve daha az kaynak tüketir.
- **Taşınabilirlik:** Aynı uygulama farklı ortamlarda (yerel, test, üretim) sorunsuz çalışır.
- **Ölçeklenebilirlik:** Mikroservis mimarisi ile kolay entegrasyon sağlar.

## 🏗 Docker Mimarisi

Docker 5 ana bileşenden oluşur:

- **Docker Client:** Kullanıcıların Docker ile etkileşime geçmesini sağlar.
- **Docker Daemon:** Konteynerleri ve Docker nesnelerini yönetir.
- **Docker Host:** Konteynerlerin çalıştığı fiziksel veya sanal makinedir.
- **Docker Registry:** Docker imajlarının depolandığı havuzdur (Docker Hub vb.).
- **Docker Objects:** Docker'ın çalışmasını sağlayan nesneler (İmaj, Konteyner, Ağ, Hacim).

## ⚖️ Sanal Makine vs. Docker

| Özellik          | Sanal Makine (VM)                | Docker                                        |
| ---------------- | -------------------------------- | --------------------------------------------- |
| İşletim Sistemi  | Her VM kendi OS'ini çalıştırır   | Tüm konteynerler host OS çekirdeğini paylaşır |
| Başlatma Süresi  | Dakikalar                        | Saniyeler                                     |
| Depolama         | Büyük disk imajları              | Hafif katmanlı imajlar                        |
| Kaynak Kullanımı | Daha fazla bellek ve CPU tüketir | Daha az kaynak kullanır                       |

## 📦 Docker Temel Kavramlar

- **Docker Image:** Konteyner oluşturmak için kullanılan şablondur.
- **Docker Container:** Bir imajdan çalışan yalıtılmış ortamdır.
- **Docker Engine:** Konteynerleri oluşturur, çalıştırır ve yönetir.
- **Docker Registry:** İmajların depolandığı yerdir (Docker Hub, private registry).
- **Docker Volume:** Kalıcı veri saklamak için kullanılır.

## 📜 Docker Komutları

### 📥 İmaj Yönetimi

```bash
docker pull <image-name>  # Docker Hub'dan imaj indirir
docker images             # Mevcut imajları listeler
docker rmi <image-id>     # İmajı siler
```

### 🚀 Konteyner Yönetimi

```bash
docker run -d -p 8080:80 --name mycontainer nginx  # Yeni bir konteyner başlatır
docker ps                                         # Çalışan konteynerleri listeler
docker ps -a                                      # Tüm konteynerleri gösterir
docker stop <container-id>                        # Konteyneri durdurur
docker rm <container-id>                          # Konteyneri siler
docker exec -it <container-id> bash               # Konteyner içinde terminal açar
```

### 🔗 Ağ Yönetimi

```bash
docker network ls             # Mevcut ağları listeler
docker network create mynet   # Yeni bir özel ağ oluşturur
docker run --network mynet nginx  # Konteyneri özel bir ağa bağlar
```

### 🗂 Veri Yönetimi

```bash
docker volume create myvol       # Yeni bir hacim oluşturur
docker volume ls                 # Mevcut hacimleri listeler
docker run -v myvol:/data nginx  # Konteyner ile hacim bağlar
```

## 🏗 Dockerfile ve Docker Compose

### 📝 Dockerfile Örnekleri

```dockerfile
# Base imajı tanımla
FROM node:16-alpine

# Çalışma dizinini oluştur
WORKDIR /app

# Gerekli dosyaları kopyala
COPY package.json /app/
RUN npm install
COPY . /app/

# Portları belirle
EXPOSE 8080

# Başlangıç komutu
CMD ["node", "server.js"]
```

### ⚙️ Docker Compose ile Çoklu Konteyner Yönetimi

```yaml
version: '3.8'
services:
  web:
    image: nginx
    ports:
      - "8080:80"
  db:
    image: mysql:5.7
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_DATABASE: mydb
    volumes:
      - db-data:/var/lib/mysql
volumes:
  db-data:
```

```bash
docker-compose up -d  # Servisleri başlatır
docker-compose down   # Servisleri durdurur
docker-compose ps    # Çalışan servisleri gösterir
```

## 🏁 Sonuç

Docker, modern uygulama geliştirme süreçlerinde kritik bir rol oynar. Hafif, taşınabilir ve ölçeklenebilir olması sayesinde, mikroservisler ve DevOps süreçlerinde büyük avantaj sağlar. Bu doküman, Docker’ın temel kavramlarını ve ileri düzey konularını sistematik bir şekilde sunarak, yeni başlayanlardan profesyonellere kadar herkesin faydalanabileceği bir rehber sunmaktadır.

