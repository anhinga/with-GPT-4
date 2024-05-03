### on categorical methods

  * The suggestion to use https://en.wikipedia.org/wiki/Derived_category is probably correct

  * At the same time, one can imagine all kinds of interesting constructions which might be somewhat more ad hoc, but might end up being more feasible to work with

      * It is very sweet to consider _enriched categories_, as long as there is enough structure in _Hom_-things to describe partitioning of arrows
   
      * For example, all kinds of subarrow things (together with their domains and codomains) can be placed _inside_ the arrow structure (it's an interesting kind of _reflection_)
   
 ### on relationship with Scott continuity

   * On one hand, some Scott continuous constructions are present within the definition of https://en.wikipedia.org/wiki/Continuous_geometry

       * Operation ∧ is Scott continuous

       * Operation ∨ is Scott continuous with respect to the opposite order (aka dual order)

   * Then if one looks at the interpretation of Scott domains as sets of theories, and looks at continuous, non-algebraic Scott domains,
     then one can observe that the logic involved in that construction is not reflexive (the rule A ⊢ A does not hold), but there is a weaker rule of
     _inverse transitivity_, (if A ⊢ C, then there is B, such that A ⊢ B and B ⊢ C), and this does look like the ability to
     split an arrow (in this case, the entailment arrow); in particular, if one wants to think about a segment of a real line as a Scott domain,
     this is exactly the case we are dealing with

       * See, for example, Chapter 6 of https://arxiv.org/abs/1512.03868

### additional remarks (Apr 15, 2024)

  * There might be more than one way to build a theory of continuously indexed cohomologies on continuous geometries

     * It might be of interest to compare various ways
   
     * It might be very interesting to compare continuously indexed coholomologies with traditional ones (indexed by integers) on the same spaces with continuous geometry

### additional remarks (May 2, 2024)

  * Both upward and downward Scott continuity are present: https://en.wikipedia.org/wiki/Continuous_geometry

     * So the situation might indeed be connected to _partial inconsistency landscape_, where two opposite Scott topologies are typical.
   
     * See, for example, Section 4 of "Linear Models of Computation and Program Learning", https://easychair.org/publications/paper/Q4lW
   
  * If this is a situation within _partial inconsistency landscape_, it would be of interest if cohomologies were related to logic.

     * Indeed, Google search for [cohomology and logic](https://www.google.com/search?q=cohomology+and+logic) produces a lot of interesting results and tidbits, including        
      
       * https://math.stackexchange.com/questions/1085946/when-should-i-be-doing-cohomology
      
          * 'Generally the intuition behind cohomology groups is that they measure the failure of "locally consistent" things to be "globally consistent".' 
      
       * "Contextuality, Cohomology and Paradox", https://logic.berkeley.edu/colloquium/AbramskySlides.pdf
      
          * "data which is locally consistent, but globally inconsistent"
        
          * Ambramsky recommends using sheaf cohomology (at least for quantum theory-relevant applications)
        
       * etc.
      
     * So, indeed, not only cohomology can be related to logic, but it is related to _limited and measured inconsistency_, which is
       indeed a situation typical for a _partial inconsistency landscape_ setup.
