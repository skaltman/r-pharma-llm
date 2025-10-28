library(ellmer)

chat <- chat_openai()

# Chat in your console.
live_console(chat)

# Chat in a Shiny app
live_browser(chat)
