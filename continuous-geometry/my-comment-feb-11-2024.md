### on categorical methods

  * The suggestion to use https://en.wikipedia.org/wiki/Derived_category is probably correct

  * At the same time, one can imagine all kinds of interesting constructions which might somewhat more ad hoc, but might end up being more feasible to work with

      * It is very sweet to consider enriched categories, as long as there is enough structure in _Hom_-things to describe partitioning of arrows
   
      * For example, all kinds of subarrow things can be placed _inside_ the arrow structure (it's an interesting kind of _reflection_)
   
 ### on relationship with Scott continuity

   * On one hand, some Scott continuous constructions are present within the definition of https://en.wikipedia.org/wiki/Continuous_geometry

       * Operation ∧ is Scott continuous

       * Operation ∨ is Scott continuous with respect to the opposite order (aka dual order)

   * Then if one looks at the interpretation of Scott domains as sets of theories, and looks at continuous, non-algebraic Scott domains,
     then one can observe that the logic is not reflexive (the rule A ⊢ A does not hold), but there is a weaker rule of
     _inverse transitivity_, (if A ⊢ C, then there is B, such that A ⊢ B and B ⊢ C), and this does look like the ability to
     split an arrow (in this case, the entailment arrow)

       * See, for example, Chapter 6 of https://arxiv.org/abs/1512.03868
