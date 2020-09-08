(* Déclaration globale d'une constante *)
let x = 2
let y = x+4
let z = -4

(* Déclaration globale d'une fonction *)
(* Directement : *)
let square x = x*x
(* En utilisant une fonction anonyme *)
let cube = fun x -> x*x*x

(* Fonction à plusieurs arguments, if-then-else *)
let myMin a b = if a < b then a else b

(* Déclarations locales *)
let add_min a b c = let x = myMin b c in a + x

(* Fonctions récursives *)
(* Méthode 1 : avec un `if` *)
let rec fac1 n = if n = 0 then 1 else n * fac1 (n-1)
(* Méthode 2 : avec du "pattern matching" *)
let rec fac2 n =
  match n with
  | 0 -> 1
  | n -> n * fac2 (n-1)