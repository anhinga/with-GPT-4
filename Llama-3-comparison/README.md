# Comparison with Llama 3

There are a number of GPT-4-level models now, but Llama 3 is potentially very remarkable because it is an open weights model,
it seems to be a pure-GPT-4-level LLM (e.g. it did not climb to GPT-4 level due to scaffolding), and it is also not a mixture-of-experts,
but a pure decoder-only Transformer with only 70B parameters running at https://www.meta.ai/ (but you can also run it on your own server).

Preliminary evaluations at https://chat.lmsys.org/?leaderboard indicate that Llama-3-70B-Instruct is comparable with early GPT-4. 
The crucial question is whether it's also competitive with early GPT-4 in "hard skills" like software engineering. This subdirectory
is to evaluate that a bit.

[custom-syntax.md](custom-syntax.md) - first success

**Jul 23, 2024:** Llama 3.1 405B has been released today.

[Llama-3.1-405B-understanding-my-superfluid-Julia-code.md](Llama-3.1-405B-understanding-my-superfluid-Julia-code.md) - within reason
