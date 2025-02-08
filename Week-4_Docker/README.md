## - Giriş: Docker Nedir?
**Docker**, uygulamaları geliştirme, dağıtma ve çalıştırma süreçlerini standartlaştırmak için kullanılan açık kaynaklı bir platformdur.  
- **Temel Fayda**: Uygulamaları "konteyner" adı verilen hafif, taşınabilir ve bağımsız birimlere paketler.  
- **Neden Önemli?**  
  - "Benim makinemde çalışıyordu!" sorununu ortadan kaldırır.  
  - Farklı ortamlarda (geliştirme, test, prod) tutarlılık sağlar.  
  - DevOps süreçlerinde otomasyon ve hız kazandırır.

---

## - Docker'ın Temel Kavramları
### **1. Container (Konteyner)**
- Uygulamanın çalıştığı izole ortam.  
- **Özellikleri**:  
  - Hafiftir (saniyeler içinde başlar).  
  - Aynı OS çekirdeğini paylaşır.  
  - Bağımsız çalışır; diğer konteynerlardan etkilenmez.

### **2. Image (Görüntü)**
- Konteynerin çalışması için gereken tüm bağımlılıkları ve talimatları içeren şablon.  
- **Örnek**: `nginx`, `python:3.9`, `mysql:5.7`.

### **3. Dockerfile**
- Image'ları oluşturmak için kullanılan metin tabanlı bir talimat dosyası.  
- **Temel Komutlar**:


### **4. Docker Compose**

- Çoklu konteyner uygulamalarını yönetmek için kullanılan araç.
- **Örnek Kullanım**:
`version: '3.8'`
`services:`
  `web:`
    `image: nginx`
    `ports:`
      `- "8080:80"`
  `db:`
    `image: mysql:5.7`

