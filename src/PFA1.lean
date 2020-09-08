-- **Déclaration globale d'une constante**
def x := 2
def y := x + 4

-- Attention, par défaut Lean voit *toujours* un entier naturel. 
-- Pour définir autre chose, il faut spécifier un type
def z : ℤ := -4

-- **Déclaration globale d'une fonction**
-- Directement :
def square (n : ℤ) := n*n

-- En utilisant une fonction anonyme :
def cube := λ n : ℤ, n*n*n 

-- **Fonction à plusieurs arguments, if-then-else**
def my_min (a b : ℤ) := if a < b then a else b

-- **Déclarations locales**
def add_min (a b c : ℤ) := let x := my_min b c in a + x

-- **Fonctions récursives**
-- Méthode 1, avec un `if`. Ici, on dit à Lean de ne pas vérifier la terminaison
meta def fac1 : ℕ → ℕ := λ n, if n = 0 then 1 else n * fac1 (n-1)

-- Méthode 2, avec du "pattern matching". Ici, Lean génère une preuve de terminaison !
def fac2 : ℕ → ℕ
| 0 := 1
| (n+1) := (n+1) * fac2 n