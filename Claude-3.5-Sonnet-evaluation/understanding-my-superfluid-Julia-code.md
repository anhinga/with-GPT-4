There have been this brilliant result with GPT-4 in March 2023 on the first try:

March 25, 2023: GPT-4 demonstrates remarkable ability to understand uncommented and rather non-standard computer code (200+ lines in Julia):

https://github.com/anhinga/late-2022-julia-drafts/tree/main/dmm-port-from-clojure/GPT-4-conversations

https://github.com/anhinga/late-2022-julia-drafts/blob/main/dmm-port-from-clojure/GPT-4-conversations/first-conversation.md

GPT-4 correctly figures out that I am using nested dictionaries representing vectors and correctly infers that "the main idea of this program is to implement a neural network-like engine using nested dictionaries and custom-defined mathematical operations, allowing for flexible and extensible data processing".

*****

But this has been very difficult to reproduce, no versions of LLMs have been giving the results of comparable quality with this code analysis since.

July 2, 2024: Now, with Claude 3.5 Sonnet, uploading the code by copy-paste (paste resulting in creating an attachment in their interface),
and then asking:

`Hi, please analyze the Julia program I just attached.`

The reply is very interesting:

*****

Certainly, I'll analyze the Julia program you've provided. This program appears to implement a "superfluid dataflow matrix machines engine." Let's break it down into its main components:

  1. Core Operations:

   * `mult_v_value`: Multiplies a value (which can be nested) by a scalar.
   * `add_v_values`: Adds two potentially nested dictionary structures.
   * `mult_mask_v_value`: Applies a multiplicative mask to a nested structure.
   * `mult_mask_lin_comb`: Similar to `mult_mask_v_value`, but optimized for linear combinations.


  2. Activation Functions:

   * The program uses a dictionary `activation_functions` to store named activation functions.
   * `add_activation`: Adds a new activation function to the dictionary.
   * `accum_add_args`: An example activation function that accumulates inputs.


  3. Matrix Operations:

   * `apply_v_valued_matrix`: Applies a nested matrix structure to arguments recursively.
   * `up_movement`: Performs the "upward" movement in the dataflow, applying activation functions.


  4. Self-referential Machine:

   * Defines a self-referential structure with update functions (`update_1`, `update_2`, `update_3`).
   * `matrix_element`: Helper function to create nested dictionary structures.
   * `init_matrix`: Initializes the matrix structure.
   * `add_to_init_matrix`: Adds elements to the initial matrix.


  5. Two-stroke Cycle:

   * `two_stroke_cycle`: Implements a two-stroke cycle of "down movement" (applying the matrix) and "up movement" (applying activation functions).


  6. Example Usage:

   * The program sets up an initial output structure and demonstrates running several steps of the two-stroke cycle.



Key Concepts:

  1. The program uses deeply nested dictionary structures to represent matrices and values.
  2. It implements a form of neural network or graph computation, with nodes (neurons) that can update their states and connections.
  3. The system is self-modifying, as the matrix that defines the connections is itself part of the computation.
  4. The computation alternates between "down" movements (applying the current matrix) and "up" movements (applying activation functions).

This program appears to be an implementation of a highly flexible and self-modifying computational graph system. It could potentially be used for complex machine learning tasks, dynamic system modeling, or other applications requiring adaptable network structures.

Would you like me to elaborate on any specific part of this program?

*****

Not bad at all. Reasonably competitive with the first brilliant experience with GPT-4 (perhaps a bit less crisp about
noticing that nested dictionaries represent vector-like objects here, but it did understand the basics of that,
and it did notice **The system is self-modifying, as the matrix that defines the connections is itself part of the computation**,
so in this aspect it performed better than that first great GPT-4 experience).

So, great, those initial glimpses of high brilliance for very non-standard code analysis tasks are here again!
