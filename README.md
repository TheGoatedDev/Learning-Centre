# Learning Centre

Test-driven programming practice powered by Claude Code. Pick a language, get tests, write code to pass them.

## How it works

1. Open this project in Claude Code
2. Run `/learn`
3. Choose a language, topic, and difficulty
4. Claude generates test files — you write the code to make them pass

That's it. Claude acts as a tutor: it sets up the project structure, walks you through scaffolding (config files, dependencies), then gives you failing tests to solve. You write the actual code.

## What Claude does and doesn't do

**Does:**
- Research current best practices for whatever language you pick
- Create folder structures and test files
- Track your progress across sessions
- Give progressive hints when you're stuck (only when asked, or after a while of no progress)

**Doesn't:**
- Write solution code — not in files, not in chat
- Create config files for you — teaches you how instead
- Touch your source files — ever

## Progress tracking

Claude maintains `PROGRESS.md` files that track exercises completed, hints used, concepts learned, and areas where you struggled. A global dashboard at the root and a detailed journal per topic.

## Project structure

```
<language>/
  <topic>/
    tests/       <- Claude writes tests here
    src/         <- You write code here
    PROGRESS.md  <- Learning journal for this topic
PROGRESS.md      <- Global progress dashboard
```

Language directories are gitignored — they're your scratch space. Only the Claude Code config and this README are tracked.

## Requirements

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) CLI installed
- That's it. Claude handles the rest based on whatever language you choose.
