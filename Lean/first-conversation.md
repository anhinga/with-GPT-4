I tried this with a simple Lemma from my Thesis (Lemma 9.2.1, Section 9.2.1 of https://arxiv.org/abs/1512.03868):

ME: Hi. I would like to formulate the following statement in the notation suitable for Lean theorem prover: \begin{Lemma}{\bf (Border Lemma) } \label{border_lemma} Consider an Alexandrov open set $B\subseteq A$. Then its interior in the Scott topology, $\Int(B)=\{y \in A\,|\, \exists x \in B.\, x \ll y\}$. Correspondingly, the border of $B$ in the Scott topology, $B \setminus \Int(B)=\{y \in B\,|\, \neg(\exists x\in B.\, x\ll y)\}$ \end{Lemma}

GPT-4: To represent the Border Lemma in Lean, you'll need to import the necessary libraries and define the required concepts, such as Alexandrov open set, interior, and border. Assuming you've already defined these concepts and imported the necessary libraries, you can represent the lemma as follows:

```
lemma border_lemma {A : Type*} [preorder A] (B : set A) 
  (hB : is_alexandrov_open B) :
  let Scott_interior := {y ∈ A | ∃ x ∈ B, x ≪ y} in
  let Scott_border := {y ∈ B | ¬(∃ x ∈ B, x ≪ y)} in
  interior B = Scott_interior ∧ B \ interior B = Scott_border :=
begin
  -- The proof will go here.
end
```

This code snippet presents the Border Lemma as a Lean theorem. Here, `A` is a type with a preorder structure. The lemma takes an Alexandrov open set `B` as an input, along with a proof `hB` that `B` is indeed an Alexandrov open set. The statement of the lemma defines the Scott interior and Scott border of the set `B` and asserts that the interior of `B` is equal to the Scott interior, and the set difference between `B` and its interior is equal to the Scott border. The proof of the lemma is not provided here, as it would depend on the specific definitions and lemmas you have at your disposal in your Lean development.

ME: Thanks!

GPT-4: You're welcome! If you have any more questions or need further assistance with Lean or any other topic, feel free to ask. Good luck with your theorem proving! 
