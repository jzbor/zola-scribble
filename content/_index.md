+++
title = "Scribble Theme for Zola"
+++

More information on usage and configuration can be found in [the source repository](https://github.com/jzbor/zola-scribble)

## Features
* Uses no JavaScript.
* Supports dark and light mode, using whichever the user prefers.
* Ability to disallow LLMs in `robots.txt` .
* Optionally supports analytics with [GoatCounter](https://www.goatcounter.com/) (requires JavaScript)
* Card view for projects or similar listings.


## Examples
This site contains [a page showcasing all the different markdown features](/markdown-overview).
There is also a [blog section](/blog) with some fake blog entries.

The Markdown source for those pages can be found in the [theme sources](https://github.com/jzbor/zola-scribble/tree/main/content).


## Available Options
This is a subset of the available configuration options for the theme.
```toml
[extra]
# menu displayed in the top bar
menu = [
  {url = "/markdown-overview", name = "markdown"},
  {url = "/blog", name = "blog"},
]

# give credit to zola and the theme in footer
credit = true
# display copyright notice in the footer
copyright = "Your Name"

# Disallow known LLM-scrapers in robots.txt
robots_txt.no_llm = false
```
