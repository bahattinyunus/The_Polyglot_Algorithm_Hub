# 🧬 Project Genesis: The 141st Language

> "Bütün dilleri öğrendik. Sıra hepsini unutup, tek bir hakikati konuşmakta."

## Vizyon
**Genesis**, 140 programlama dilinin en güçlü yanlarının birleşiminden (Synthesis) doğacak olan, hipotetik "Süper Dil" deneyidir.

Bu klasör, bu dilin tasarım dokümanlarını, söz dizimi (syntax) taslaklarını ve çekirdek felsefesini barındırır.

## Hedefler
*   **Rust**'ın güvenliği (Ownership)
*   **Python**'ın okunabilirliği (Zen)
*   **Haskell**'in matematiksel saflığı (Pure Functions)
*   **Lisp**'in esnekliği (Macros)
*   **Go**'nun eşzamanlılığı (Concurrency)

## Durum
🧪 **AŞAMA 2: DEĞİŞKEN UYANIŞI (Variable Awakening)**

Artık değişken tanımlayabiliyor ve bellekte veri tutabiliyoruz. `omni.py` bir sanal makine (VM) çekirdeğine dönüşüyor.

### Çalıştırma
```bash
python genesis/omni.py genesis/demo.omni
```

### Örnek Kod (`demo.omni`)
```omni
fn main() -> void {
    print("Omni 2.0 Yukleniyor...");
    
    let year = 2050; // Tamsayı
    print(year);
    
    let message = "Polyglot Singularity"; // String
    print(message);
}
```

[👉 Kavramsal Tasarımı İncele (CONCEPT.md)](CONCEPT.md)
