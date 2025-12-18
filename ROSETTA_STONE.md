# 🗿 Rosetta Taşı: Paradigma Analizi

Tıpkı Antik Mısır hiyerogliflerini çözmeyi sağlayan Rosetta Taşı gibi, bu belge de aynı algoritmanın (Quick Sort) farklı programlama paradigmalarında nasıl bambaşka şekiller aldığını gösterir.

Aynı Mantık. Farklı Dünyalar.

---

## 1. Emir Kipli (Imperative) - C
*Bilgisayara her adımı tek tek emredersiniz.*

```c
// Bellek yönetimi, pointerlar, manuel swap...
void quicksort(int *arr, int low, int high) {
    if (low < high) {
        int pivot = arr[high]; // Pivot seç
        int i = (low - 1);
        for (int j = low; j < high; j++) {
            if (arr[j] < pivot) { // Karşılaştır
                i++;
                swap(&arr[i], &arr[j]); // Yer değiştir (Manuel)
            }
        }
        swap(&arr[i + 1], &arr[high]);
        quicksort(arr, low, i);
        quicksort(arr, i + 2, high);
    }
}
```
**Ruh:** *"Kontrol bende. Hata yaparsam benim suçum."*

---

## 2. Nesne Yönelimli (OOP) - Java
*Veri ve davranışları nesneler içinde kapsülleyerek soyutlarsınız.*

```java
public class QuickSort {
    // Sınıf yapısı, metodlar, tip güvenliği...
    public void sort(int[] arr, int low, int high) {
        if (low < high) {
            int pi = partition(arr, low, high); // Bölümleme mantığı ayrıştırılmış
            sort(arr, low, pi - 1);
            sort(arr, pi + 1, high);
        }
    }
    // Partition metodu ayrıca tanımlanır (Encapsulation)
}
```
**Ruh:** *"Her şey düzenli, hiyerarşik ve kurumsal."*

---

## 3. Fonksiyonel (Functional) - Haskell
*Durum (state) yoktur. Sadece dönüşüm vardır. Matematiksel saflık.*

```haskell
-- Tip bildirimi yok, döngü yok, değişken yok. Sadece özyineleme (recursion).
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
    let smallerSorted = quicksort [a | a <- xs, a <= x] -- List Comprehension
        biggerSorted  = quicksort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted
```
**Ruh:** *"Bu kod değil, bu matematiksel bir şiir."*

---

## 4. Mantıksal (Logic) - Prolog
*Nasıl yapılacağını değil, kuralları tanımlarsınız.*

```prolog
% Kural: Boş liste sıralıdır.
quicksort([], []).
% Kural: Pivot ile listeyi böl ve tekrarla.
quicksort([H|T], Sorted) :-
    partition(T, H, Small, Big),
    quicksort(Small, SortedSmall),
    quicksort(Big, SortedBig),
    append(SortedSmall, [H|SortedBig], Sorted).
```
**Ruh:** *"Gerçekler ortada. Çözümü sen bul ey makine."*

---

## 5. Esoterik (Esoteric) - Brainfuck
*Mantık sınırlarını zorlamak ve acı çekmek için.*

```brainfuck
>>,[>>,]<<[[-<+<]>[>[>>]<[.[-]<[[>>+<<-]<]>>]>]<<] 
(Temsili kısaltılmış kod - Gerçek QuickSort yüzlerce karakter sürer)
```
**Ruh:** *"Neden? Çünkü yapabiliyoruz."*

---

## Sonuç
Aynı `Hızlı Sıralama` algoritması;
*   **C**'de bir makine komutu,
*   **Haskell**'de bir denklem,
*   **Java**'da bir nesne davranışı,
*   **Prolog**'da bir mantık önermesidir.

Dili değiştirdiğinizde, **düşünceyi değiştirirsiniz**.
