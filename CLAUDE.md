# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a workshop repository for "Getting Started with LLM APIs in R" for R/Pharma 2025, adapted from the posit::conf(2025) "Programming with LLMs" workshop. The workshop teaches participants how to use LLM APIs in both R and Python, covering conversation basics, structured output, multimodal input, RAG systems, tool calling, and MCP servers.

## Project Structure

This repository contains **dual-language implementations** (R and Python) throughout:

- `_exercises/`: Parallel R and Python exercise files organized by topic number (e.g., `01_hello-llm/`, `16_rag/`)
- `_solutions/`: Corresponding solution files for each exercise
- `_demos/`: Live demonstration code and apps
- `website/`: Quarto website for workshop materials
  - `slides/`: Presentation slides as Quarto files
  - `workshop-*.qmd`: Workshop activity pages
  - `partials/`: Reusable Quarto components
- `data/`: Workshop datasets

### Key Language Patterns

**R**: Uses `ellmer` package for LLM interactions, `shinychat` for chat UIs, `ragnar` for RAG systems
**Python**: Uses `chatlas` package for LLM interactions, `shinychat` for chat UIs, `llama-index` for RAG systems

Exercise and solution files exist in pairs (`.R` and `.py`) with matching names and structure.

## Environment Setup

### R Setup

```bash
make r-setup          # Install R dependencies via renv
Rscript _setup.R      # Alternative: install packages with pak
```

**API Keys**: The `.Rprofile` automatically loads environment variables from `.env` using the `dotenv` package. Ensure `.env` exists with:
- `OPENAI_API_KEY`
- `ANTHROPIC_API_KEY`
- Other provider keys as needed

**R Repositories**: `.Rprofile` configures custom R-universe repositories for development versions:
- `posit-dev.r-universe.dev`
- `rstudio.r-universe.dev`

### Python Setup

```bash
make py-setup         # Install Python dependencies via uv
```

Python uses `uv` for package management (see `pyproject.toml`). The project requires Python >=3.12.

API keys are loaded via `dotenv.load_dotenv()` in Python scripts.

### Decrypt Secrets

```bash
make secret-decrypt   # Decrypt .env.secret to .env (requires secret.py)
```

## Development Commands

### Documentation

```bash
make preview          # Preview Quarto website (port 7567)
make render           # Build Quarto website
```

The Makefile uses a specific Quarto version (1.8.24) managed by `qvm`.

### Code Formatting

```bash
make format           # Format both R and Python code
make r-format         # Format R code using air
make py-format        # Format Python code using ruff
```

### Jupyter Notebooks

```bash
make py-ipynb         # Convert Python scripts to Jupyter notebooks
```

This command:
1. Converts all `.py` files (except `*app.py`) in `_exercises/`, `_solutions/`, and `_demos/19_tools/` to `.ipynb`
2. Clears notebook outputs using `jupyter nbconvert`

Python exercise files use jupytext format with `# %%` cell markers.

## Key Dependencies

### R Packages
- `ellmer`: Main package for LLM interactions
- `shinychat`: Chat UI components for Shiny apps (dev version from posit-dev/shinychat)
- `shiny`: Web framework (dev version from rstudio/shiny)
- `bslib`: UI components (dev version from rstudio/bslib)
- `querychat`: Database querying via LLM (from posit-dev/querychat)
- `ragnar`: RAG system implementation
- `mcptools`: Model Context Protocol tools
- `magick`, `base64enc`: Image processing for vision tasks
- `beepr`: Audio notifications for tool calling exercises

### Python Packages
- `chatlas`: Main package for LLM interactions
- `shinychat`: Chat UI components for Shiny apps
- `anthropic`, `openai`, `google-genai`: Provider-specific SDKs
- `llama-index`: RAG system implementation
- `querychat`: Database querying via LLM (from GitHub)
- `pydantic`: Structured output validation
- `plotnine`, `polars`: Data manipulation and visualization
- `playsound3`: Audio notifications for tool calling exercises

## Workshop Architecture

The workshop follows a progressive structure across 4 sessions:

1. **Morning 1**: Conversation basics (chat objects, message roles, stateless conversations, tokens, shinychat)
2. **Morning 2**: Programming with LLMs (model selection, vision/PDF input, structured output, batch calls, prompt engineering)
3. **Afternoon 1**: RAG and tool calling (manual RAG, embedding-based retrieval, tool registration, tool UI)
4. **Afternoon 2**: Advanced topics (querychat, MCP servers, agents)

### Exercise Numbering

Exercises are numbered sequentially (01-27) across all topics. The outline.md file provides detailed activity descriptions for each numbered section.

### Running Exercises

**R**: Open `.R` files in RStudio or Positron and run interactively
**Python**: Open `.py` files in Positron or Jupyter (convert with `make py-ipynb`)

Shiny apps are named `*-app.R` or `*-app.py` and can be run with standard Shiny commands.

## Important Notes

- Both R and Python implementations should be kept in sync when modifying exercise content
- The workshop assumes participants have API keys configured before starting
- Exercise files include commented guidance and "Your Turn" sections for participants
- The website is the primary participant-facing documentation; update both code and website materials together
