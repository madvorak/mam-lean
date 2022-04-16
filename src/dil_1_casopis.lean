import data.nat.sqrt


def obvod_obdelnika (a b : ℕ) : ℕ :=
2 * (a + b)

#eval obvod_obdelnika 3 2
#eval obvod_obdelnika 10 10


def parita (n : ℕ) : string :=
if n % 2 = 0
then "sude"
else "liche"

#eval parita 4
#eval parita 5
#eval parita 0
#eval parita (99999999999 * 2 * 77777777777777777 + 1)
#eval parita (2 - 3)


def je_ctverec (a : ℕ) : bool :=
(nat.sqrt a) ^ 2 = a

#eval je_ctverec 15
#eval je_ctverec 16
#eval je_ctverec 17
#eval je_ctverec 0
#eval je_ctverec 1
#eval je_ctverec 2
#eval je_ctverec 3
#eval je_ctverec 4


def faktorial : ℕ → ℕ
| 0     := 1
| (n+1) := (n+1) * (faktorial n)

#eval faktorial 6
#eval faktorial 200
#eval faktorial 3000 / faktorial 2999


def fibonacci : ℕ → ℕ
| 0     := 0
| 1     := 1
| (n+2) := fibonacci n + fibonacci (n+1)

#eval fibonacci 5
#eval fibonacci 10
#eval fibonacci 33

