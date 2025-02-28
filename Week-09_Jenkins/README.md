# Jenkins Rehberi - Başlangıç 🚀
  
## 1. Jenkins'e Giriş
### Jenkins Nedir?
- **Açık kaynak** bir CI/CD aracı
- Build, test ve deployment süreçlerini **otomatikleştirir**
- Java tabanlı çalışır (bu yüzden Java kurulumu gerekir).
  
### Neden Jenkins Öğrenmeliyim?
- DevOps dünyasında en yaygın kullanılan CI/CD araçlarından
- Zengin plugin ekosistemi (1500+ plugin)
- Büyük topluluk desteği ve yaygın dokümantasyon
- Çoğu iş ilanında Jenkins deneyimi isteniyor

## 2. Temel Kavramlar
### CI/CD'yi Basitçe Anlamak
- **CI (Continuous Integration)**
  - Kodun düzenli olarak ana depoya entegre edilmesi
  - Her entegrasyonda otomatik testlerin çalışması
  - Hataların erken yakalanması
  
- **CD (Continuous Delivery/Deployment)**
  - Test edilen kodun otomatik olarak staging/production ortamına gönderilmesi
  - Manuel onay adımları eklenebilir (Continuous Delivery)
  - Tamamen otomatik deployment yapılabilir (Continuous Deployment)

## 3. Jenkins'in Temel Yapısı
### Master-Agent Mimarisi
```
Master (Jenkins Server)
├── İş yönetimi
├── Web arayüzü
├── Plugin yönetimi
└── İş planlaması

Agents (Worker Nodes)
├── Asıl işleri yapan makineler
├── Build işlemleri
└── Test süreçleri
```

## 4. İlk Jenkins Kurulumu
### Docker ile Hızlı Başlangıç (Önerilen Yöntem)
```bash
# Jenkins container'ı başlat
docker run -d \
  -p 8080:8080 \
  -v jenkins_home:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --name jenkins \
  jenkins/jenkins:lts-jdk11
```

### İlk Kurulum Sonrası
1. Admin şifresini görüntüle:
```bash
docker logs jenkins | grep -A 3 "Please use the following password"
```
2. Tarayıcıdan `http://localhost:8080` adresine git
3. Önerilen pluginleri yükle (Install suggested plugins)

## 5. İlk Pipeline'ı Oluşturma
### Basit Bir Java Projesi için Pipeline
```groovy
pipeline {
    agent any
    
    stages {
        stage('Kod Çek') {
            steps {
                // GitHub'dan kod çek
                git 'https://github.com/Larry-png/proje.git'
            }
        }
        
        stage('Build') {
            steps {
                // Maven ile build al
                sh 'mvn clean package'
            }
        }
        
        stage('Test') {
            steps {
                // Unit testleri çalıştır
                sh 'mvn test'
            }
        }
        
        stage('Deploy') {
            steps {
                // Örnek deployment adımı
                sh 'echo "Deployment başarılı!"'
            }
        }
    }
    
    // Her durumda çalışacak adımlar
    post {
        always {
            // Test raporlarını topla
            junit '**/target/surefire-reports/*.xml'
        }
    }
}
```

## 6. Önemli Jenkins Özellikleri
### Jenkinsfile
- Pipeline'ı kod olarak tanımlama (Infrastructure as Code)
- Versiyon kontrolü ile takip edilebilir
- Tekrar kullanılabilir pipeline'lar

### Trigger Mekanizmaları
- GitHub webhook ile otomatik tetikleme
- Zamanlanmış işler (cron)
- Diğer job'lardan tetikleme

## 7. Sık Kullanılan Pluginler
4. **Git** - Kod çekmek için
5. **Docker** - Container işlemleri için
6. **Pipeline** - Pipeline'ları yönetmek için
7. **Blue Ocean** - Modern arayüz
8. **JUnit** - Test raporları için

## 🎓 Öğrenme  İçin İpuçları
9. Önce basit pipeline'lar ile başlayın
10. Her yeni projede bir öncekine yeni özellikler ekleyin
11. Hata mesajlarını dikkatlice okuyun, Google'da aratın
12. Jenkins dokümantasyonunu korkmadan kullanın
13. Test ortamında bol bol deneme yapın

## ⚠️ Sık Yapılan Hatalar
14. Yetki/izin sorunlarını göz ardı etmek
15. Pipeline syntax'ını doğru kullanmamak
16. Environment variable'ları yanlış kullanmak
17. Credentials'ları güvensiz şekilde saklamak
