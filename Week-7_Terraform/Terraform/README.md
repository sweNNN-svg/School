Yazdığım Terraform kodunun amacı, **AWS üzerinde otomatik ölçeklenebilir (autoscaling) ve yük dengeleyicili (ALB) bir web sunucusu altyapısı** oluşturmaktır. İÖzet:

### **1. Altyapının Genel Amacı:**

- **Yük Dengeleme (Load Balancing):** Uygulama trafiğini bir Application Load Balancer (ALB) üzerinden yönlendirerek yüksek erişilebilirlik ve ölçeklenebilirlik sağlamak.
- **Otomatik Ölçeklendirme (Auto Scaling):** İki adet EC2 instance'ı çalıştırarak uygulamanın trafik artışına veya azalışına göre dinamik olarak ölçeklenmesini sağlamak.

---

### **2. Altyapının Bileşenleri:**

#### **a. Application Load Balancer (ALB):**

- `aws_lb`: HTTP üzerinden gelen istekleri `aws_lb_listener` aracılığıyla karşılıyor.
- `aws_lb_listener`: Gelen istekleri belirlenen kurallara göre (`aws_lb_listener_rule`) `aws_lb_target_group` içindeki hedef gruba yönlendiriyor.
- `aws_lb_target_group`: EC2 instance'larının sağlık durumunu kontrol ederek sadece sağlıklı olanlara trafik yönlendiriyor.

---

#### **b. Auto Scaling Group (ASG):**

- `aws_launch_template`: EC2 instance'larının konfigürasyonunu tanımlıyor (örneğin AMI ID'si, instance tipi, güvenlik grupları).
- `aws_autoscaling_group`: İki instance ile minimum ve maksimum kapasiteyi belirleyerek otomatik ölçeklendirme yapıyor.

---

#### **c. Güvenlik Grupları:**

- `aws_security_group.alb`: ALB'ye gelen HTTP trafiğini (port 80) izin veriyor.
- `aws_security_group.instance`: EC2 instance'larının `server_port` değişkenine bağlı olarak gelen HTTP trafiğini kabul ediyor.

---

#### **d. Dinamik ve Tekrar Kullanılabilir Yapı:**

- **Değişkenler:** `server_port` değişkeni kullanılarak HTTP portu dinamik hale getirilmiş, böylece farklı ortamlarda kolayca kullanılabilir.
- **Veri Kaynakları (`data`):** Varsayılan VPC ve alt ağları (`subnets`) dinamik olarak çekiyor, böylece statik değerlerden kaçınılmış.

---

### **3. Çalışma Prensibi:**

1. **Kullanıcı HTTP isteği yapar →** ALB isteği karşılar.
2. **ALB Listener Rule →** Tüm istekleri `aws_lb_target_group` içinde tanımlanan hedef gruba yönlendirir.
3. **Target Group →** Sağlıklı olan EC2 instance'larına istekleri iletir.
4. **Auto Scaling Group →** İki instance çalıştırarak yük dağılımını ve yüksek erişilebilirliği sağlar.
5. **EC2 Instance →** Basit bir web sunucusu (`busybox httpd`) ile "Hello, World" yanıtını döner.

---

### **4. Sonuç Olarak:**

Bu Terraform kodu, **yüksek erişilebilirlik, otomatik ölçeklenebilirlik ve güvenli bağlantı** sağlayan, AWS üzerinde çalışan bir web uygulaması altyapısı oluşturur. Bu yapı, uygulamanın trafik yüküne göre ölçeklenebilmesini ve kullanıcı isteklerinin dengeli bir şekilde yönlendirilmesini sağlar.