Reproducing the first exchange in https://github.com/anhinga/late-2022-julia-drafts/blob/main/dmm-port-from-clojure/GPT-4-conversations/second-conversation.md

**You**  
Hi, I am coding the connections in a neural machine, and when I want to connect things like this

self.delta <- update-1.result

I would write

add_to_init_matrix("self", "delta", "update-1", "result")

What should I write for

self.accum <- self.result  
self.delta <- update-1.result  
self.function <- self.function  
update-1.function <- update-1.function  
update-2.function <- update-2.function  
update-3.function <- update-3.function

**Meta AI**  
Based on the pattern you've established, it seems like you're creating a function to add connections to an initialization matrix. Here's what you might write for the given assignments:

```
add_to_init_matrix("self", "accum", "self", "result")
add_to_init_matrix("self", "delta", "update-1", "result")
add_to_init_matrix("self", "function", "self", "function")
add_to_init_matrix("update-1", "function", "update-1", "function")
add_to_init_matrix("update-2", "function", "update-2", "function")
add_to_init_matrix("update-3", "function", "update-3", "function")
```

This assumes that the `add_to_init_matrix` function takes four arguments: the source object, the attribute name, the target object, and the target attribute name. If this isn't the case, please provide more context or clarify the function's signature.

---

Let's see what happens if I ask the same question to the current GPT-3.5:

**GPT-3.5**

For the connections you've described, you want to update various attributes or variables within your neural network. You could represent these connections with a function like "add_to_init_matrix" as follows:

```
add_to_init_matrix("self", "accum", "self", "result")
add_to_init_matrix("self", "delta", "update-1", "result")
add_to_init_matrix("self", "function", "self", "function")
add_to_init_matrix("update-1", "function", "update-1", "function")
add_to_init_matrix("update-2", "function", "update-2", "function")
add_to_init_matrix("update-3", "function", "update-3", "function"
```

This function would then handle adding these connections to some matrix or data structure that holds the information about connections in your neural network. Of course, you'll need to implement the "add_to_init_matrix" function to suit your specific needs and data structures.

---

GPT-3.5 also does fine, just like Meta AI model. It's a Jan 2024 version with 16K context.
