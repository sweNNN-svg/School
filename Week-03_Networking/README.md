## **1. Giriş: Linux'ta Ağ Yönetimi**
 
- **Ağ Nedir?**  
    Cihazların birbirleriyle iletişim kurmasını sağlayan yapı (ör: internet, LAN).
    
- **Neden Linux'ta Ağ Yönetimi?**
    - Sunucuların, bulut sistemlerin ve yönlendiricilerin çoğu Linux tabanlıdır.
    - DevOps'ta dağıtık mimariler (mikroservisler, container'lar) için temel beceridir.

## **2. Temel Kavramlar**

### **IP Adresleme**

- **IPv4 vs IPv6**:
    - IPv4: 192.168.1.1 (4 byte, sınırlı sayıda adres).
    - IPv6: 2001:0db8:85a3::8a2e:0370:7334 (daha geniş adres havuzu).
        
- **Özel IP vs Genel IP**:
    - Özel IP: Yerel ağda kullanılır (ör: 192.168.x.x).
    - Genel IP: İnternete direkt erişim sağlar.

### **DNS (Alan Adı Sistemi)**

- **Ne İşe Yarar?**  
    `google.com` → 172.217.169.14 gibi domainleri IP'ye çevirir.
    
- **Araçlar**:
	- `nslookup google.com    # Temel DNS sorgusu`
	- `dig google.com         # Detaylı DNS bilgisi`

### **Yönlendirme (Routing)**

- **Varsayılan Ağ Geçidi (Default Gateway)**: Yerel ağdan çıkış noktası.
    
- **Yönlendirme Tablosu**:
	- `ip route    # Mevcut yönlendirme kurallarını gösterir`

## **3. Ağ Yapılandırma Dosyaları**

- **Önemli Dosyalar**:
    - **Debian/Ubuntu**: `/etc/network/interfaces`
    - **Red Hat/CentOS**: `/etc/sysconfig/network-scripts/`
    - **Ubuntu 22+**: `/etc/netplan/00-installer-config.yaml`
    - **Hostname Çözümleme**: `/etc/hosts`
    - **DNS Sunucuları**: `/etc/resolv.conf`
        
### **Örnek Komutlar**

- `cat /etc/hosts        # Yerel hostname-IP eşleşmeleri`
- `cat /etc/resolv.conf  # Aktif DNS sunucularını gösterir`

## **4. Temel Ağ Komutları**

### **IP Konfigürasyonu**

- `ip addr       # Tüm ağ arayüzlerini ve IP'leri listeler`
- `ifconfig      # Eski versiyon (kullanımı azaldı)`

### **Bağlantı Testi**

- `ping 8.8.8.8          # İnternet erişimini test eder`
- `traceroute google.com # Paketlerin izlediği yolu gösterir`

### **Ağ Arayüz Yönetimi**

- `ip link set eth0 up    # Arayüzü aktifleştir`
- `ip link set eth0 down  # Arayüzü kapat`
- `nmcli                   # NetworkManager CLI aracı`

### **Trafik İzleme**

- `netstat -tuln  # Aktif bağlantıları ve portları listeler`
- `ss -tuln       # Netstat'ın modern alternatifi`
- `tcpdump -i eth0 port 80  # HTTP trafiğini dinle`

## **5. Sorun Giderme Adımları**

### **Yaygın Sorunlar**

- İnternet bağlantısı yok.
    
- DNS çözümlemesi çalışmıyor.
    
- Yavaş ağ performansı.
    
### **Çözüm Yolları**

1. **Arayüz Durumu**:
	1. `ip link   # Arayüzlerin UP/DOWN durumunu kontrol et`
2. **IP Konfigürasyonu**:
	1. `ip addr   # IP atanmış mı?`
3. **DNS Testi**:
	1. `dig google.com  # DNS sunucusu yanıt veriyor mu?`
4. **Yönlendirme Tablosu**:
	1. `ip route   # Varsayılan ağ geçidi doğru mu?`

## **6. Hands-On Alıştırmalar**

### **DNS Sorun Giderme**

1. DNS sorgusu yap:
	1. `dig google.com`
2. DNS sunucusunu değiştir:
	1. `sudo echo "nameserver 8.8.8.8" >> /etc/resolv.conf  # Google DNS ekle`
3. Test et:
	1. `ping google.com`

### **Trafik Analizi (tcpdump)**

- `sudo tcpdump -i eth0 port 80     # HTTP trafiğini dinle`
- `sudo tcpdump -w capture.pcap     # Trafiği dosyaya kaydet`

## **7. İleri Düzey Araçlar**

### **Nmap (Ağ Tarayıcı)**

- **Host Keşfi**:
	- `nmap -sn 192.168.1.0/24   # Ağdaki tüm cihazları bul`
- **Port Tarama**:
	- `nmap -p 1-100 192.168.1.1   # 1-100 portlarını tara`

### **UFW (Güvenlik Duvarı)**

- **Temel Komutlar****:
	- `sudo ufw allow 22        # SSH erişimine izin ver`
	- `sudo ufw deny 80         # HTTP erişimini engelle`
	- `sudo ufw status verbose  # Aktif kuralları göster`

### **Telnet**

- **Port Testi**:
	- `telnet google.com 80   # 80. porta bağlanmayı dene`
- **Kurulum**:
	- `sudo apt install telnet   # Ubuntu/Debian`
	- `sudo yum install telnet # CentOS/RHEL`