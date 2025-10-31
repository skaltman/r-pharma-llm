# Programming with LLMs (Short Workshop)

## Setup thoughts

- Positron Assistant: https://positron.posit.co/assistant
  - Requires turning on settings

- Databot (recommended extension), requires setting up PA

## Session 1: Intro (~15m)

- (5m) Welcome, introductions, workshop expectations
  - Activity: introduce yourself to your neighbors

- (5m) Set-up and verify API access
  - Activity: simple script to verify API access (write an "I'm at R/Pharma 2025 social media post")

- (5m) "Wow" demo
  - Show a working LLM application (TBD: quiz show app, querychat app, or enhanced shinychat)
  - "By the end of today, you'll understand how this works and build your own version"
  - Sets the goal and motivation for the rest of the workshop

## Session 2: Anatomy of a conversation (~40m)

> An introduction to basic LLM concepts and how to use `ellmer` to interact with LLMs from R. No prior experience with LLMs is assumed, but some programming experience is helpful.

- (10m) Basic conversation mechanics
  - To get a get a response, you send a message via HTTP
  - Message roles: system, user, assistant
  - Activity: Word guessing game
    - System prompt: _You are playing a word guessing game. At each turn, guess the word and tell us what it is._
    - We give a few questions to ask
    - Also include a modifier in the first message, e.g. "In ____, ..." picking from "British English", "pirate", "Spanish", etc.
    - The modifier in the first message steers subsequent answers
  - The conversation is **stateless**
    - Use **clearbot** to walk through an example, showing the requests and responses
    - First: _Using British spellings, guess the word for the person living next door._
    - Second: _What helps a car move smoothly down the road?_
    - Clear the chat and try second question again.

- (10m) How do LLMs work?
  - _How to Talk to Robots_ slides
  - Tokens as the fundamental unit
  - Brief conceptual overview (keep it concise)

- (20m) Shinychat basics
  - Activity: `live_console()` and `live_browser()`
  - Making your own shinychat app with `chat.ui()` and `chat.append()`. R users can use the chat module with `chat_mod_server()`.
  - Activity: Reverse the word-guessing game with the word to guess in the system prompt. User has to guess, LLM gives hints.

## Session 3: Programming with LLMs (~30m)

> A deeper dive into the things you can do with LLMs when you're programming with them that are harder to do in a chat UI.

- (15m) Structured output
  - Explain `ellmer::type_*()`
  - Activity: Extract structured data from text (e.g., contact information, event details)
  - Apply to shinychat app from previous session

- (15m) Parallel/batch calls
  - Activity: Extract data in parallel or batch from multiple items
  - Demonstrates efficiency gains when processing multiple requests

## Session 4: Prompt engineering (~15m)

> Brief but essential coverage of prompt engineering principles.

- (TBD) Focus area to be determined:
  - Option 1: System prompt best practices - practical tips for writing effective system prompts
  - Option 2: Hallucinations and limitations - conceptual overview with examples
  - Option 3: General best practices - quick do's and don'ts list

- Activity: Improve system prompts from earlier exercises
  - Take the word-guessing game or shinychat app and refine the system prompt
  - See how different prompts change behavior

## Session 5: Tool calling (~40-50m)

> How to give LLMs the ability to call functions and interact with external systems.

- (20m) Tool calling basics
  - Explain how tool calling pattern works
  - Activity: quiz show
    - We provide an R function that plays a sound using `beepr`
    - They document the function and register it as a tool in the Quiz Show app

- (20m) Tool calling UI
  - Primarily a series of activities that progressively enhance the quiz show app
  - Activity: Add tool annotations to give the tool an icon and title
  - Activity: Use `ContentToolResult` to return custom title and icon
  - Activity: Track answers and score in the app (add/update value boxes)

- (5-10m) querychat
  - Demo: Add querychat into an existing shiny app
  - Position as a production-ready alternative to building custom RAG systems
  - Shows how tools enable database querying through natural language

---

## Notes for Instructor

**Total time estimate:** ~2.5 hours (140-150 minutes)
- Can be compressed to ~2 hours by reducing activities or making them demos
- Can be extended to 3 hours by adding more practice time

**Pedagogical approach:**
- Whole game: Intro session shows complete application
- Just-in-time: Each concept immediately applied
- Active learning: Every section includes hands-on activities
- Spiral learning: Keep building on the same examples where possible

**Open decisions:**
- Which app to demo in Session 1
- Prompt engineering focus (Session 4)
- Whether to include token-possibilities demo or keep it theoretical
