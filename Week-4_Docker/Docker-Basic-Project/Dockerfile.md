```
# Temel imaj olarak alpine:latest kullanılır.
FROM alpine:latest

# Build sırasında isim belirlenebilir, varsayılan "Captain".
ARG NAME=Captain

# Konteyner çalıştırıldığında "Hello, [isim]!" mesajını yazdırır.
CMD ["sh", "-c", "echo Hello, ${NAME}!"]
```

