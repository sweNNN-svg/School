# ````
```
İlk Dockerfile: Basit imaj oluşturma
FROM ubuntu:latest

# İmaj oluşturma sırasında çalışacak örnek bir komut
RUN echo "Docker imajı oluşturuluyor..."

# Konteyner çalıştığında çalışacak komut
CMD ["echo", "Container çalışıyor!"]
```

