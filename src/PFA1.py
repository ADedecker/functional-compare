#Déclaration globale d'une constante
x = 2
y = x + 4
z = -4

#Déclaration globale d'une fonction
#Directement : 
def square(x):
  return x * x
#En utilisant une fonction anonyme :
cube = lambda x: x * x * x

#Fonction à plusieurs arguments, if-then-else
def myMin(a, b):
  return a if a < b else b
#Rq : en général on l'écrira plutôt avec une fonction anonyme, mais c'est juste une habitude :
myMin = lambda a, b: a if a < b else b
#Versions curryfiées :
def myMin(a):
  def f(b):
    return a if a < b else b
  return f

myMin = lambda a: lambda b: a if a < b else b

#Déclaration locales impossibles si on veut rester sur un style fonctionnel

#Fonctions récursives
#Méthode 1 : avec un `if`
def fac1(n):
  return 1 if n == 0 else n * fac1(n-1)
#écrit avec une fonction anonyme :
fac1 = lambda n: 1 if n == 0 else n * fac1(n-1)

#Méthode 2 : pas de "pattern matching" en python (pour l'instant ! c'est prévu pour bientôt)
