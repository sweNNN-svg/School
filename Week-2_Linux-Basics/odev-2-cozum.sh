#!/bin/bash
# -------------------------------------------------------------------
# Script: isim_soyisim.sh
# Amaç: Basit Bash script örneği ile Linux networking komutlarını çalıştırmak.
# Açıklama: Bu script, DNS sorgulaması yapar, sunucudaki ağ portlarını kontrol eder
#           ve çalıştırıldığı tarih ve saati ekrana yazdırır.
# -------------------------------------------------------------------

# 1. Hoş geldiniz mesajı
echo "Linux Networking ve DevOps Bash Script Challenge"

# 2. DNS Sorgulaması: nslookup komutu ile google.com'un DNS kayıtlarını kontrol ediyoruz.
echo -e "\nDNS sorgulaması (google.com):"
nslookup google.com

# 3. Ağ portlarının kontrolü:
#    İlk olarak, 'netstat' komutunun varlığını kontrol ediyoruz.
#    Eğer 'netstat' bulunamazsa, alternatif olarak 'ss' komutunu kullanıyoruz.
echo -e "\nAğ portlarının kontrolü:"
if command -v netstat &> /dev/null; then
    netstat -tuln
elif command -v ss &> /dev/null; then
    ss -tuln
else
    echo "Hata: Ne 'netstat' ne de 'ss' komutu bulunuyor. Lütfen ilgili paketi yükleyin."
fi

# 4. Scriptin çalıştırıldığı tarih ve saat bilgisini ekrana yazdırıyoruz.
echo -e "\nScript çalıştırılma zamanı:"
date