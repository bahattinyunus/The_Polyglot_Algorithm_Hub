# 🧪 OMNI: The Convergence Language (Kavramsal Tasarım)

**Omni**, tüm paradigmaların kesişim kümesidir.

## 1. Merhaba Evren (Hello Universe)

```omni
// Python gibi temiz, Rust gibi tipli.
fn main() -> void {
    print("Evrene Selam!");
}
```

## 2. Bellek Yönetimi: "Bilinçli Sahiplik"

Çöp toplayıcı (GC) yok. Manuel malloc yok. Yapay Zeka destekli statik analiz var.

```omni
let veri = Data::new("Önemli Bilgi");
// 'veri' scope dışına çıktığında otomatik temizlenir, ancak derleyici yaşam ömrünü (lifetime) tahmin eder.
```

## 3. Eşzamanlılık (Concurrency): "Akışlar (Flows)"

Go'nun goroutine'leri ve Erlang'ın aktör modelinin birleşimi.

```omni
flow islem_yap() {
    // Bu blok asenkron çalışır
    await veritabani.baglan();
}
```

## 4. Tip Sistemi: "Akışkan Tipler (Fluid Types)"

Hem statik, hem dinamik.

```omni
let x: int = 5;      // Statik
let y = "Metin";     // Type Inference
let z: any = 10;     // Dinamik (Gerektiğinde)
```

## 5. Felsefe

*   Karmaşa opsiyonel, sadelik zorunludur.
*   Her şey bir ifadedir (Expression).
*   Dil, geliştiriciyle birlikte büyür.

---
**Not:** Bu bir düşünce deneyidir. Katkıda bulunmak için fikirlerinizi Pull Request olarak gönderin.
