import data.pi


def seznam123_a : list ℕ := [1, 2, 3]
def seznam123_b : list ℕ := 1 :: [2, 3]
def seznam123_c : list ℕ := 1 :: (2 :: [3])
def seznam123_d : list ℕ := 1 :: 2 :: [3]
def seznam123_e : list ℕ := 1 :: 2 :: 3 :: []

#eval seznam123_a
#eval seznam123_b
#eval seznam123_c
#eval seznam123_d
#eval seznam123_e

def rovnaji_se : bool :=
seznam123_a = seznam123_b ∧ seznam123_b = seznam123_c ∧ seznam123_c = seznam123_d ∧ seznam123_d = seznam123_e
#eval rovnaji_se


def soucet : list ℤ → ℤ
|        []         := 0
| (hlava :: zbytek) := hlava + soucet zbytek

#eval soucet [5, -4, -3, 1]


def seznam12345_a : list ℕ := [1, 2, 3, 4, 5]
def seznam12345_b : list ℕ := seznam123_a ++ [4, 5]
def seznam12345_c : list ℕ := 1 :: [2, 3, 4] ++ [5]
def seznam12345_d : list ℕ := [1, 2] ++ 3 :: [4, 5]

#eval seznam12345_a
#eval seznam12345_b
#eval seznam12345_c
#eval seznam12345_d
#eval seznam12345_d ++ seznam12345_c ++ seznam12345_b ++ seznam12345_a

def rovnaji_se_zase : bool :=
seznam12345_a = seznam12345_b ∧ seznam12345_b = seznam12345_c ∧ seznam12345_c = seznam12345_d
#eval rovnaji_se_zase

def nerovnaji_se : bool := seznam123_a = seznam12345_a
#eval nerovnaji_se


def obrat : list ℕ → list ℕ
|        []         := []
| (hlava :: zbytek) := obrat zbytek ++ [hlava]

#eval obrat seznam123_a
#eval obrat seznam12345_a
#eval obrat (obrat seznam12345_a)
#eval seznam123_a ++ obrat seznam123_a

def rovna_se_obrat_0_prvku : bool := [] = obrat []
#eval rovna_se_obrat_0_prvku

def rovna_se_obrat_1_prvku : bool := [1] = obrat [1]
#eval rovna_se_obrat_1_prvku

def rovna_se_obrat_2_prvku : bool := [1, 2] = obrat [1, 2]
#eval rovna_se_obrat_2_prvku

def rovna_se_obrat_3_prvku : bool := seznam123_a = obrat seznam123_a
#eval rovna_se_obrat_3_prvku

def rovna_se_obrat_5_prvku : bool := seznam12345_a = obrat seznam12345_a
#eval rovna_se_obrat_5_prvku

def rovna_se_obrat_5_prvku_palindrom : bool := [7, 2, 5, 2, 7] = obrat [7, 2, 5, 2, 7]
#eval rovna_se_obrat_5_prvku_palindrom

def rovna_se_obrat_obrat_5_prvku : bool := seznam12345_a = obrat (obrat seznam12345_a)
#eval rovna_se_obrat_obrat_5_prvku


def obrat_gen {α : Type} : list α → list α
|        []         := []
| (hlava :: zbytek) := obrat_gen zbytek ++ [hlava]

#eval obrat_gen seznam123_a
#eval obrat_gen ['a', 'b', 'c', 'd']
#eval obrat_gen [[], [1, 2], [3, 4, 5], [6]]


def soucet_gen {α : Type} [has_add α] [has_zero α] : list α → α
|        []         := 0
| (hlava :: zbytek) := hlava + soucet_gen zbytek

def szn_prirozenych : list ℕ := [5, 2, 3]
#eval soucet_gen szn_prirozenych

meta def szn_desetinnych : list native.float := [5.5, -4.4, 10, 1/100]
#eval soucet_gen szn_desetinnych

meta def szn_funkci : list (native.float → native.float) := [(λ x, 2 * x), (λ x, x * x / 10)]
#eval soucet_gen szn_funkci 5
#eval soucet_gen (obrat_gen szn_funkci) 30


def je_konstantni {α : Type} [decidable_eq α] : list α → bool
|  []                        := tt
|  [cokoliv]                 := tt
| (prvni :: druhy :: zbytek) := (prvni = druhy) && je_konstantni (druhy :: zbytek)

#eval je_konstantni [5, 5, 5, 5]
#eval je_konstantni [5, 5, 3, 5]
#eval je_konstantni [1, 5, 5, 5]
#eval je_konstantni [5, 5, 5, 4]
#eval je_konstantni ['a', 'A']
#eval je_konstantni ['a', 'a']


def duplikuj_licha : list ℕ → list ℕ
|        []         := []
| (hlava :: zbytek) := if hlava % 2 = 1
                       then hlava :: hlava :: duplikuj_licha zbytek
                       else          hlava :: duplikuj_licha zbytek

#eval duplikuj_licha [3, 1, 6, 2, 5, 8, 8, 1]
