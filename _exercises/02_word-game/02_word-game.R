library(ellmer)

# Let's play a word game!

# 1. Fill in the blanks below to create a `chat` with the following system prompt:
#
# > You are playing a word guessing game. At each turn, guess the word and tell
#   us what it is.
chat <- chat______(
  ____ = ""
)

# 2. Fill in the blank to ask the the first question:
____("In British English, guess the word for the person who lives next door.")

# 3. 2. Fill in the blank to ask the the second question:
_____("What helps a car move smoothly down the road?")

# 4. Create a new chat with no system prompt and ask the second question again.
chat2 <- chat_____()
chat2$____

# 5. How do the answers to 3 and 4 differ? Why?