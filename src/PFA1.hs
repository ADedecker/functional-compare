-- Déclaration globale d'une constante
x = 2
y = x + 4
z = -4

-- Déclaration globale d'une fonction
-- Directement :
square x = x*x
-- En utilisant une fonction anonyme :
cube = \x -> x*x*x

-- Fonction à plusieurs arguments, if-then-else
my_min x y = if x < y then x else y

-- Déclarations locales
add_min a b c = let x = my_min b c in a + x

-- Fonctions récursives
-- Méthode 1, avec un `if`
fac1 n = if n == 0 then 1 else n * fac1 (n-1)
-- Méthode 2, avec du "pattern matching"
fac2 0 = 1
fac2 n = n * fac2 (n-1)