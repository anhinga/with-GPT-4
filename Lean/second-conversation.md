ME:

Hi! How do I define a continuous dcpo in Lean theorem prover?

GPT-4:

Lean is a powerful theorem prover and programming language based on dependent type theory. In order to define a continuous directed complete partial order (dcpo) in Lean, you'll need to define the required structures and properties.

A continuous dcpo is a poset that is directed complete, meaning every directed subset has a supremum, and it's continuous, meaning that for every element, its supremum of directed subsets that are way-below it (written x << y) is equal to itself.

Here's a step-by-step guide to defining a continuous dcpo in Lean:

1. Import required libraries:
    
```lean
import order.complete_lattice
import order.directed
```

1. Define the way-below relation:

```lean
def way_below {α : Type*} [preorder α] (x y : α) : Prop := ∀ d : set α, directed_on (≤) d → y ∈ d → ∃ x' ∈ d, x' ≤ y ∧ x << x'
```

1. Define the continuous dcpo structure:

```lean
structure continuous_dcpo (α : Type*) extends partial_order α, complete_lattice α :=
(continuous : ∀ x : α, x = ⨆ (y : α) (h : way_below y x), y)
```

1. Create instances for order bot, bounded lattice, and complete lattice:

```lean
instance {α : Type*} [continuous_dcpo α] : order_bot α :=
{ bot := ⊥,
  bot_le := λ x, le_bot_iff.mpr (bot_unique (le_refl _)),
  ..continuous_dcpo.partial_order α
}

instance {α : Type*} [continuous_dcpo α] : bounded_lattice α :=
{ ..continuous_dcpo.complete_lattice α, ..continuous_dcpo.order_bot α }

instance {α : Type*} [continuous_dcpo α] : complete_lattice α :=
{ ..continuous_dcpo.complete_lattice α }
```

1. Add notation for way-below relation:

```lean
notation x `<<` y := way_below x y
```

Now, you can work with continuous dcpo structures in Lean and prove theorems about them.

Remember that this is a basic setup. To leverage Lean's power fully, you may need to create more instances, define additional lemmas, and adjust the structure according to your specific requirements.

NOTE: The way-below relation does not look correct.

ME:

Thanks! I think we need to update the definition of the way-below relation in Lean. This is how this definition looks like in LaTeX: Consider a dcpo $(A, \sqsubseteq)$ and $x, y \in A$.
We say that $x \ll y$ ($x$ is {\em way
below} $y$) if for any directed set $S \subseteq A$,
$y \sqsubseteq \sqcup S \Rightarrow \exists s\in S.
\ x \sqsubseteq s$. 

GPT-4:

Thank you for providing the updated definition for the way-below relation. Based on your provided definition, we can update the way-below relation definition in Lean as follows:

```lean
def way_below {α : Type*} [preorder α] [complete_lattice α] (x y : α) : Prop :=
  ∀ S : set α, directed_on (≤) S → y ≤ Sup S → ∃ s ∈ S, x ≤ s
```

This definition now matches the provided definition in LaTeX. Note that we've added the `[complete_lattice α]` constraint to ensure the existence of the supremum (`Sup`) operation.

NOTE:

There are two problems here. `complete_lattice` is too strong a condition for what I am trying to do. But I'll disregard
this and just do it for a `complete_lattice` and not for a `dcpo` for the time being.

Another problem, as Lean correctly notes is that in

```lean
structure continuous_dcpo (α : Type*) extends partial_order α, complete_lattice α :=
(continuous : ∀ x : α, x = ⨆ (y : α) (h : way_below y x), y)
```

`complete_lattice` is referenced twice (once via `partial_order` and once explicitly.

So this needs to be replaced by

```lean
structure continuous_dcpo (α : Type*) extends complete_lattice α :=
(continuous : ∀ x : α, x = ⨆ (y : α) (h : way_below y x), y)
```

and then this a continuous lattice, not a continuous dcpo (as currently defined), so let's write this as

```lean
structure continuous_lattice (α : Type*) extends complete_lattice α :=
(continuous : ∀ x : α, x = ⨆ (y : α) (h : way_below y x), y)
```

