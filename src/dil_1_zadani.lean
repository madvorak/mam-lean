import data.fp.basic
import dil_1_casopis


def povrch_kvadru (a b c : ℕ) : ℕ :=
0 -- TODO

#eval povrch_kvadru 2 3 4    /- `52` -/
#eval povrch_kvadru 6 6 6    /- `216` -/
#eval povrch_kvadru 14 0 7    /- `196` -/
#eval povrch_kvadru 999 1000 1001   /- `5999998` -/


def je_ctvrta_mocnina (a : ℕ) : bool :=
ff -- TODO

#eval je_ctvrta_mocnina 0    /- `tt` -/
#eval je_ctvrta_mocnina 1    /- `tt` -/
#eval je_ctvrta_mocnina 2    /- `ff` -/
#eval je_ctvrta_mocnina 3    /- `ff` -/
#eval je_ctvrta_mocnina 4    /- `ff` -/
#eval je_ctvrta_mocnina 15    /- `ff` -/
#eval je_ctvrta_mocnina 16    /- `tt` -/
#eval je_ctvrta_mocnina 17    /- `ff` -/
#eval je_ctvrta_mocnina 100    /- `ff` -/
#eval je_ctvrta_mocnina 256    /- `tt` -/
#eval je_ctvrta_mocnina 625    /- `tt` -/
#eval je_ctvrta_mocnina 1000    /- `ff` -/
#eval je_ctvrta_mocnina 10000    /- `tt` -/


meta def reseni_kvadraticke_rovnice (a b c : native.float) : list native.float :=
[] -- TODO

/- `x^2 = 2` -/
#eval reseni_kvadraticke_rovnice 1 0 (-2)
/- `[-1.41421, 1.41421]` -/

/- `x^2 = 9` -/
#eval reseni_kvadraticke_rovnice 1 0 (-9)
/- `[-3, 3]` -/

/- `x^2 = 1/2` -/
#eval reseni_kvadraticke_rovnice 2 0 (-1)
/- `[-0.707107, 0.707107]` -/

/- `x^2 = 1/25` -/
#eval reseni_kvadraticke_rovnice 25 0 (-1)
/- `[-0.2, 0.2]` -/

/- `x^2 + 2x + 1 = 0` -/
#eval reseni_kvadraticke_rovnice 1 2 1
/- `[-1]` -/

/- `x^2 + x + 1 = 0` -/
#eval reseni_kvadraticke_rovnice 1 1 1
/- `[]` -/

/- `x^2 + -6x + 9 = 0` -/
#eval reseni_kvadraticke_rovnice 1 (-6) 9
/- `[3]` -/

/- `x^2 + -6x + 10 = 0` -/
#eval reseni_kvadraticke_rovnice 1 (-6) 10
/- `[]` -/

/- `x^2 - 14x + 49 = 0` -/
#eval reseni_kvadraticke_rovnice 1 (-14) 49
/- `[7]` -/

/- `x^2 - 14x + 50 = 0` -/
#eval reseni_kvadraticke_rovnice 1 (-14) 50
/- `[]` -/

/- `x^2 - 14x + 48 = 0` -/
#eval reseni_kvadraticke_rovnice 1 (-14) 48
/- `[6, 8]` -/

/- `x^2 - 29x - 28 = 0` -/
#eval reseni_kvadraticke_rovnice 1 (-29) 28
/- `[1, 28]` -/

/- `x^2 + 18x + 77 = 0` -/
#eval reseni_kvadraticke_rovnice 1 18 77
/- `[-11, -7]` -/

/- `77x^2 + 18x + 1 = 0` -/
#eval reseni_kvadraticke_rovnice 77 18 1
/- `[-0.142857, -0.0909091]` -/

/- `16x^2 + 40x + 25 = 0` -/
#eval reseni_kvadraticke_rovnice 16 40 25
/- `[-1.25]` -/

/- `25x^2 + 40x + 16 = 0` -/
#eval reseni_kvadraticke_rovnice 25 40 16
/- `[-0.8]` -/


meta def ciferny_soucet : ℕ → ℕ :=
0 -- TODO

meta def ciferace : ℕ → ℕ :=
0 -- TODO

#eval ciferny_soucet 3    /- `3` -/
#eval ciferace       3    /- `3` -/
#eval ciferny_soucet 52    /- `7` -/
#eval ciferace       52    /- `7` -/
#eval ciferny_soucet 919    /- `19` -/
#eval ciferace       919    /- `1` -/
#eval ciferny_soucet 999    /- `27` -/
#eval ciferace       999    /- `9` -/
#eval ciferny_soucet 123456    /- `21` -/
#eval ciferace       123456    /- `3` -/
#eval ciferny_soucet 100000000000000000000000000000000000000000000000000000001    /- `2` -/
#eval ciferace       100000000000000000000000000000000000000000000000000000001    /- `2` -/
#eval ciferny_soucet 9999999999999999999999999999999999999999999999999999999999999    /- `549` -/
#eval ciferace       9999999999999999999999999999999999999999999999999999999999999    /- `9` -/


def je_prvocislo (a : ℕ) : bool :=
ff -- TODO

def je_dokonale_cislo (a : ℕ) : bool :=
ff -- TODO

def vypis_splnujici_do (podminka : ℕ → bool) (n : ℕ) :=
list.filter (λ x, podminka x) (list.range (n + 1))

def seznam_prvocisel_do (n : ℕ) :=
vypis_splnujici_do je_prvocislo n

def seznam_dokonalych_cisel_do (n : ℕ) :=
vypis_splnujici_do je_dokonale_cislo n

#eval seznam_prvocisel_do 40

#eval seznam_dokonalych_cisel_do 500

#eval seznam_dokonalych_cisel_do 10000
