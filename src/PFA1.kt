// Déclaration globale d'une constante
val x = 2
val y = x + 4
val z = -4

//Déclaration globale d'une fonction
//Directement
fun square(x: Int) = x * x
//En utilisant une fonction anonyme
val cube = {x: Int -> x * x * x}

//Fonction à plusieurs arguments, if-then-else
fun myMin(a: Int, b: Int) = if (a < b) a else b

//Déclarations locales inextantes quand on veut coder uniquement en fonctionnel

//Fonctions récursives
//Méthode 1 : avec un `if`
fun fac1(n: Int): Int = if (n == 0) 1 else n * fac1(n-1)
//Méthode 2 : avec du "pattern matching"
fun fac2(n: Int): Int = when (n) {
  0 -> 1
  else -> n * fac2(n-1)
}
