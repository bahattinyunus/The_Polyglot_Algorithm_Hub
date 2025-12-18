module QuickSort where

open import Data.List using (List; []; _∷_; filter; _++_)
open import Data.Nat using (ℕ; _<_; _≥?_; _<?_)
open import Data.Boolean using (Bool; true; false)
open import Relation.Nullary using (Dec; yes; no)

_<_ : ℕ → ℕ → Bool
m < n with m <? n
... | yes _ = true
... | no  _ = false

_≥_ : ℕ → ℕ → Bool
m ≥ n with m ≥? n
... | yes _ = true
... | no  _ = false

quicksort : List ℕ → List ℕ
quicksort [] = []
quicksort (x ∷ xs) =
  let smaller = filter (λ y → y < x) xs
      larger  = filter (λ y → y ≥ x) xs
  in quicksort smaller ++ (x ∷ []) ++ quicksort larger

-- Example usage conceptual
