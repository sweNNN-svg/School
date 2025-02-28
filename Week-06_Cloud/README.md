## AWS
 
---
## Temel Hizmetler

### 1. VPC (Virtual Private Cloud)
- **Tanım:** AWS bulutunda izole bir sanal ağ oluşturmanızı sağlar.
- **Özellikler:**s
  - **Subnet:** Ağınızı alt parçalara bölmenize olanak tanır.
  - **Routing & Güvenlik:** Yönlendirme tabloları, güvenlik grupları ve ağ erişim kontrol listeleri (ACL) ile trafiği kontrol edin.
  - **Bağlantı:** VPN ve Direct Connect ile veri merkezi entegrasyonu.

### 2. EC2 (Elastic Compute Cloud)
- **Tanım:** Bulut üzerinde ölçeklenebilir sanal sunucular (instance) sağlar.
- **Özellikler:**
  - **Ölçeklenebilirlik:** İhtiyaca göre instance ekleme veya kaldırma.
  - **AMI (Amazon Machine Image):** Hazır sunucu yapılandırmaları.
  - **Güvenlik:** Güvenlik grupları ve anahtar çiftleri ile erişim kontrolü.

### 3. S3 (Simple Storage Service)
- **Tanım:** Nesne tabanlı veri depolama hizmeti.
- **Özellikler:**
  - **Depolama Alanı:** Yüksek erişilebilirlik ve dayanıklılık.
  - **Bucket:** Verilerinizi organize ettiğiniz temel yapı.
  - **Veri Yönetimi:** Versiyonlama, yaşam döngüsü kuralları ve erişim politikaları.

### 4. IAM (Identity and Access Management)
- **Tanım:** AWS kaynaklarına erişimi güvenli bir şekilde yönetmenizi sağlar.
- **Özellikler:**
  - **Kullanıcı ve Grup Yönetimi:** Her kullanıcıya özel erişim yetkileri.
  - **Roller ve Politikalar:** Kaynak erişiminde ince ayar yapabilme.
  - **Güvenlik:** Çok faktörlü kimlik doğrulama (MFA) desteği.

---

## İleri Seviyeye Giriş Hizmetleri

### 5. RDS (Relational Database Service)
- **Tanım:** Yönetilen ilişkisel veritabanı hizmeti.
- **Özellikler:**
  - **Veritabanı Motorları:** MySQL, PostgreSQL, Oracle, SQL Server vb.
  - **Yönetim:** Otomatik yedekleme, güncelleme ve ölçeklenebilirlik.
  - **Performans:** Okuma/yazma yükünü dengeleyerek yüksek performans sunar.

### 6. Route53
- **Tanım:** AWS’nin DNS yönetim servisi.
- **Özellikler:**
  - **Domain Yönetimi:** Alan adı kaydı ve yönlendirme.
  - **Sağlık Kontrolü:** Trafiği sağlıklı sunuculara yönlendirme.
  - **Esneklik:** Yük dengeleme ve coğrafi yönlendirme seçenekleri.

### 7. CloudWatch
- **Tanım:** AWS kaynaklarının izlenmesi ve gözlemlenmesi için kullanılır.
- **Özellikler:**
  - **Metriğin Toplanması:** Performans verileri ve olaylar.
  - **Alarm:** Belirli metriklerde anormallik tespitinde uyarılar.
  - **Log Yönetimi:** Uygulama ve sistem loglarını toplama ve analiz etme.

### 8. ECS (Elastic Container Service)
- **Tanım:** Container tabanlı uygulamaların yönetimi için yerel bir çözüm.
- **Özellikler:**
  - **Orkestrasyon:** Container’ların dağıtımı, ölçeklenmesi ve yönetimi.
  - **Entegrasyon:** AWS servisleri ile sıkı entegrasyon (ör. IAM, CloudWatch).
  - **Esneklik:** Farklı çalışma ortamları ve görev tanımları oluşturma.

