# In this workshop, we'll be using the ellmer package to interact with Large
# Language Models (LLMs) like OpenAI's GPT and Anthropic's Claude.
# https://ellmer.tidyverse.org/
library(ellmer)

# ---- OpenAI ----
chat_gpt <- chat_openai()
chat_gpt$chat(
  "I'm at the R/Pharma 2025 conference.",
  "Tell me a riddle related to pharma or R."
)

# ---- Anthropic ----
chat_claude <- chat_anthropic()
chat_claude$chat(
  "I'm at the R/Pharma 2025 conference.",
  "Write a limerick related to the conference."
)
