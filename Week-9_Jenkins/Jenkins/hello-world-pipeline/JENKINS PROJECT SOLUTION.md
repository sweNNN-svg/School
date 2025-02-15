# Jenkins Hello World Pipeline

Bu proje, Jenkins öğrenme sürecimde oluşturduğum ilk pipeline projesidir.

### Bölüm 1: Jenkins Kurulumu

1. İlk olarak Java'yı kuralım (Jenkins için gerekli):
```
sudo apt update
sudo apt install openjdk-17-jdk -y
```

2. Java'nın kurulduğunu doğrulayalım:
```
java -version
```

3. Jenkins repository key ve source list'i ekleyelim:
```
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
```

4. Jenkins'i kuralım:
```
sudo apt update
sudo apt install jenkins -y
```

5. Jenkins'i başlatalım:
```
sudo systemctl start jenkins
sudo systemctl enable jenkins
```

6. Jenkins'in çalıştığını kontrol edelim:
```
sudo systemctl status jenkins
```

7. Initial admin password'ü alalım:
```
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

8. Tarayıcıdan Jenkins'e erişelim:
```
http://your-server-ip:8080
```

1. Kurulum adımları:

- Gösterilen yerdeki admin şifresini girin
- "Install suggested plugins" seçeneğini seçin
- Admin kullanıcı oluşturun
- Jenkins URL'ini onaylayın

### Bölüm 2: Hello World Pipeline Oluşturma

2. GitHub'da yeni bir repository oluşturun:

- GitHub hesabınıza giriş yapın
- Yeni repository oluşturun (örn: "jenkins-hello-world")
- Repository'i public yapın
- README.md dosyası ekleyin

3. Repository'e bir Jenkinsfile ekleyin:

- Repository'inizde "Add file" > "Create new file" seçin
- Dosya adı olarak "Jenkinsfile" yazın
- Aşağıdaki içeriği ekleyin:
```
pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out from GitHub...'
                git branch: 'main',
                    url: 'https://github.com/YOUR_USERNAME/jenkins-hello-world.git'
            }
        }
        
        stage('Hello') {
            steps {
                echo 'Hello World!'
            }
        }
        
        stage('Finish') {
            steps {
                echo 'Pipeline finished successfully!'
            }
        }
    }
}
```

1. Jenkins'te pipeline oluşturma:

- Jenkins Dashboard'a gidin
- "New Item" tıklayın
- İsim verin (örn: "hello-world-pipeline")
- "Pipeline" seçin ve "OK" tıklayın
- Pipeline bölümünde "Pipeline script from SCM" seçin
- SCM olarak "Git" seçin
- Repository URL'inizi girin (örn: [https://github.com/YOUR_USERNAME/jenkins-hello-world.git](https://github.com/YOUR_USERNAME/jenkins-hello-world.git))
- Branch olarak "*/main" yazın
- "Save" tıklayın

2. Pipeline'ı çalıştırma:

- Pipeline sayfasında "Build Now" tıklayın
- Build geçmişinde en son build'e tıklayın
- "Console Output" seçeneğini tıklayarak çıktıyı görüntüleyin

Çıktıda şunları görmelisiniz:
```
Checking out from GitHub...
[Pipeline] git
...
Hello World!
...
Pipeline finished successfully!
```