Infrastructure as Code nedir?
Kod olarak altyapının (IaC) arkasındaki fikir, altyapınızı tanımlamak, dağıtmak, güncellemek ve yok etmek için kod yazmanız ve çalıştırmanızdır. Bu, operasyonların tüm yönlerini, hatta donanımı temsil eden yönlerini (örneğin fiziksel sunucuların kurulması) bile yazılım olarak ele aldığınız önemli bir zihniyet değişimini temsil eder.

---

# Infrastructure as Code (IaC) Yararları

## Temel Avantajlar

- **Otomasyon ve Self-Service:**
  - Altyapı kod olarak tanımlandığında, tüm dağıtım süreci otomatik hale gelir.
  - Geliştiriciler, sistem yöneticilerine bağımlı kalmadan kendi dağıtımlarını başlatabilir.

- **Hız ve Güvenlik:**
  - Otomatik işlemler, insan hatasını azaltır ve dağıtım süreçlerini çok daha hızlı gerçekleştirir.
  - Süreçler, tekrarlanabilir ve tutarlı olduğu için daha güvenlidir.

- **Dokümantasyon:**
  - Altyapı kod dosyalarında saklandığı için herkes erişebilir ve sürecin nasıl işlediği anlaşılır.
  - Bilgi, sadece tek bir kişinin hafızasında saklanmaz; böylece sistem yöneticisinin yokluğunda bile altyapı yönetilebilir.

- **Versiyon Kontrolü:**
  - IaC kodları, versiyon kontrol sistemlerinde saklanır; bu sayede yapılan her değişiklik kaydedilir.
  - Hataların kaynağını tespit etmek ve gerektiğinde önceki çalışır durumlara dönmek kolaylaşır.

- **Doğrulama:**
  - Her değişiklik, kod incelemesi, otomatik testler ve statik analiz araçlarıyla kontrol edilebilir.
  - Bu yaklaşımla, hataların oluşma olasılığı önemli ölçüde azaltılır.

- **Yeniden Kullanılabilirlik:**
  - Altyapı modülleri oluşturularak, farklı ürünler ve ortamlarda tekrar kullanılabilir.
  - Her dağıtımda sıfırdan başlamaktansa, daha önce test edilmiş modüller tercih edilir.

- **İş Mutluluğu:**
  - Tekrarlayan ve sıkıcı manuel işlemler otomasyona devredildiğinde, geliştiriciler ve sistem yöneticileri daha yaratıcı işlere odaklanır.
  - Bu durum, çalışma ortamında stresin azalmasına ve memnuniyetin artmasına katkıda bulunur.

## Sonuç

IaC, altyapının yönetimini daha şeffaf, hızlı ve güvenli hale getirirken, hata ayıklamayı kolaylaştırır ve iş süreçlerini daha keyifli kılar.

---

# Terraform Nasıl Çalışır?

## Genel İşleyiş
- **Açık Kaynak ve Tek Binary**: Terraform, Go dilinde yazılmış bir HashiCorp aracıdır. Derlendiğinde tek bir binary (`terraform`) olarak çalışır ve ek altyapı gerektirmez.
- **API Tabanlı Yönetim**: Bulut sağlayıcılarının (AWS, Azure, Google Cloud vb.) API'lerini kullanarak altyapıyı otomatize eder. Kullanıcının kimlik bilgileri (API anahtarları) ile doğrudan etkileşime girer.

## Konfigürasyon Dosyaları
Altyapıyı tanımlamak için metin tabanlı konfigürasyon dosyaları kullanılır. Örnek bir AWS ve Google Cloud entegrasyonu:

```
resource "aws_instance" "example" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
}

resource "google_dns_record_set" "a" {
  name         = "demo.google-example.com"
  managed_zone = "example-zone"
  type         = "A"
  ttl          = 300
  rrdatas      = [aws_instance.example.public_ip]
}
```

- **Entegre Çoklu Bulut**: Tek bir syntax ile farklı bulut sağlayıcılarındaki kaynaklar birbirine bağlanabilir (örneğin, AWS'de sunucu + Google Cloud'da DNS kaydı).
    
- **Komutlar**: `terraform apply` gibi komutlarla konfigürasyonlar çalıştırılır. Terraform, kodu API çağrılarına dönüştürerek altyapıyı dağıtır.
    

## Takım İş Akışı ve Versiyon Kontrol

- Değişiklikler önce konfigürasyon dosyalarında yapılır, test edilir ve versiyon kontrol sistemine (Git) eklenir.
    
- `terraform apply` ile değişiklikler güvenli şekilde dağıtılır. Manuel müdahale yerine kod tabanlı yönetim sağlanır.
    

## Bulutlar Arası Taşınabilirlik Sınırları

- **Farklı Özellikler**: Her bulut sağlayıcı (AWS, Azure vb.) kendine özgü servisler sunar. Örneğin, bir AWS Load Balancer ile Azure Load Balancer teknik olarak farklıdır.
    
- **Terraform'un Yaklaşımı**: Her sağlayıcıya özel kod yazılır, ancak ortak dil ve araçlar kullanılarak süreç standartlaştırılır. Tam taşınabilirlik mümkün değildir, ancak çoklu bulut yönetimi kolaylaştırılır.
    

---

**Özet**: Terraform, kod tabanlı altyapı (IaC) ile çoklu bulut ortamlarını tek bir araçla yönetmenizi sağlar. Konfigürasyon dosyaları ve API entegrasyonu sayesinde otomasyon, versiyon kontrol ve takım iş birliği kolaylaşır.