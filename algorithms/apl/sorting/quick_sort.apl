⍝ QuickSort in APL
QSort ← {
    1≥≢⍵: ⍵
    P ← ⍵[?≢⍵]
    (∇ (⍵ < P)/⍵) , ((⍵ = P)/⍵) , (∇ (⍵ > P)/⍵)
}

⍝ Example Usage
⍝ QSort 10 7 8 9 1 5
