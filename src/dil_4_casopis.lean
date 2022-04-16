import tactic
import data.nat.parity

def soucet_do_n : ℕ → ℕ
| 0       := 0
| (n + 1) := (n + 1) + (soucet_do_n n)

def soucet_do_n' : ℕ → ℕ :=
λ n, n * (n + 1) / 2

theorem soucty_odpovidaji : soucet_do_n = soucet_do_n' :=
begin
  ext1,
  induction x with n ih,
  {
    refl,
  },
  unfold soucet_do_n,
  rw ih,
  unfold soucet_do_n',
  convert_to n + 1 + n * (n + 1) / 2 = (n + 1) * (n + 2) / 2,

  have pul_a_pul : ∀ x y : ℕ, even x → even y → x / 2 + y / 2 = (x + y) / 2,
  {
    intros x y hx hy,
    cases hx with x' hx',
    cases hy with y' hy',
    rw hx',
    rw hy',
    ring_nf,
    convert_to x' + y' = (2 * x' + 2 * y') / 2,
    {
      apply congr_arg2;
      norm_num,
    },
    rw ← mul_add,
    norm_num,
  },
  calc n + 1 + n * (n + 1) / 2 
      = (n + 1) * 2 / 2 + n * (n + 1) / 2 : by norm_num
  ... = ((n + 1) * 2 + n * (n + 1)) / 2   : pul_a_pul _ _ ⟨n + 1, mul_two _⟩ (nat.even_mul_succ_self n)
  ... = ((2 + n) * (n + 1)) / 2           : by ring_nf
  ... = (n + 1) * (n + 2) / 2             : by ring_nf,
end
