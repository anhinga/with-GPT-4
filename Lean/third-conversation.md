ME:

Hi! I'd like to generate Lean definition of Alexandrov open set. The LaTeX definition is Consider dcpo $(A, \sqsubseteq_{A})$ and $U \subseteq A$.
$U$ is {\em Aleksandrov open} if $\forall x, y \in A.
\ x \in U, x \sqsubseteq y \Rightarrow y \in U$.

GPT-4:

Hello! I'd be happy to help you create a Lean definition for Alexandrov open sets. Below is the definition in Lean:

```lean
import order.bounded_lattice

universes u

variables {A : Type u} [dcpo : partial_order A]
include dcpo

def alexandrov_open (U : set A) : Prop :=
  ∀ (x y : A), x ∈ U → x ≤ y → y ∈ U
```

Here, we first import the necessary module `order.bounded_lattice` which contains the definition of `partial_order`. We then declare a universe `u` and create a variable `A` of that universe. We also create a variable `dcpo` which is an instance of a `partial_order` on `A`. We include `dcpo` in the definition to make sure the partial order is available for the rest of the definition.

Finally, we define alexandrov_open as a function that takes a set `U` of type set `A` and returns a proposition. The proposition states that for all elements `x` and `y` in `A`, if `x` is in `U` and `x` is less than or equal to `y`, then `y` must also be in `U`.

NOTE:

The result is meh, to say the least, and yet it helps me to write the correct version:

```lean
def is_alexandrov_open {A : Type*} [complete_lattice A] (B : set A) : Prop :=
  ∀ x : A, ∀ y : A , x ∈ B → x ≤ y → y ∈ B
```

Actually, this is better:

```lean
def is_alexandrov_open {A : Type*} [complete_lattice A] (B : set A) : Prop :=
  ∀ (x y : A), x ∈ B → x ≤ y → y ∈ B
```

OK, so now I tentatively have

```lean
import order.complete_lattice
import order.directed

def way_below {α : Type*} [preorder α] [complete_lattice α] (x y : α) : Prop :=
  ∀ S : set α, directed_on (≤) S → y ≤ Sup S → ∃ s ∈ S, x ≤ s

structure continuous_lattice (α : Type*) extends complete_lattice α :=
(continuous : ∀ x : α, x = ⨆ (y : α) (h : way_below y x), y)

notation x `<<` y := way_below x y

def is_alexandrov_open {A : Type*} [complete_lattice A] (B : set A) : Prop :=
  ∀ (x y : A), x ∈ B → x ≤ y → y ∈ B

lemma border_lemma {A : Type*} [continuous_lattice A] (B : set A) 
  (hB : is_alexandrov_open B) :
  let Scott_interior := {y ∈ A | ∃ x ∈ B, x `<<` y} in
  let Scott_border := {y ∈ B | ¬(∃ x ∈ B, x `<<` y)} in
  interior B = Scott_interior ∧ B \ interior B = Scott_border :=
begin
  -- The proof will go here.
end
```

and the first unpleasant non-sense is that it does not seem to understand subtyping,
complains about `is_alexandrov_open B`, and if I do the following as a cludge

```lean
def is_alexandrov_open {A : Type*} [continuous_lattice A] (B : set A) : Prop :=
  ∀ (x y : A), x ∈ B → x ≤ y → y ∈ B
```

then it does not understand `≤` in this definition. So, perhaps, this
`structure` ... `extends` does not do what I want. (Then, of course,
my syntax in the definitions of a set is incorrect.)

Yes, it should be `class` ... `extends`, not `structure`:

```lean
class continuous_lattice (α : Type*) extends complete_lattice α :=
(continuous : ∀ x : α, x = ⨆ (y : α) (h : way_below y x), y)
```

It's absolutely weird the following particular changes are needed in the `let` lines of the Lemma for Lean to stop complaining
about them:

```lean
lemma border_lemma {A : Type*} [continuous_lattice A] (B : set A) 
  (hB : is_alexandrov_open B) :
  let Scott_interior := {y : A | ∃ x ∈ B, way_below x y} in
  let Scott_border := {y ∈ B | ¬(∃ x ∈ B, way_below x y)} in
  interior B = Scott_interior ∧ B \ interior B = Scott_border :=
begin
  -- The proof will go here.
end
```

But, of course, it still complains about `interior` (all the topology stuff is missing so far and
needs to be included).

The current snapshot is

```lean
import order.complete_lattice
import order.directed

def way_below {α : Type*} [preorder α] [complete_lattice α] (x y : α) : Prop :=
  ∀ S : set α, directed_on (≤) S → y ≤ Sup S → ∃ s ∈ S, x ≤ s

class continuous_lattice (α : Type*) extends complete_lattice α :=
(continuous : ∀ x : α, x = ⨆ (y : α) (h : way_below y x), y)

notation x `<<` y := way_below x y

def is_alexandrov_open {A : Type*} [complete_lattice A] (B : set A) : Prop :=
  ∀ (x y : A), x ∈ B → x ≤ y → y ∈ B

lemma border_lemma {A : Type*} [continuous_lattice A] (B : set A) 
  (hB : is_alexandrov_open B) :
  let Scott_interior := {y : A | ∃ x ∈ B, way_below x y} in
  let Scott_border := {y ∈ B | ¬(∃ x ∈ B, way_below x y)} in
  interior B = Scott_interior ∧ B \ interior B = Scott_border :=
begin
  -- The proof will go here.
end
```

Here is what needs to be added:
  * define Scott topology
  * prove that for any `x` in a suitable domain, `{y | way_below x y}` is open in that topology
  * that should allow to establish that `{y : A | ∃ x ∈ B, way_below x y}` is indeed a subset of the `interior B` in that topology
  * then separately establish that `¬(∃ x ∈ B, way_below x y)` implies that `y` is not in the `interior B`

