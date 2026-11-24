# uoft_webpage

Source for my academic homepage, served from the University of Toronto CS webspace:

**https://www.cs.toronto.edu/~taddmao/**

Plain static HTML/CSS, no build step.

## Files
- `index.html` — the page
- `style.css` — styles
- `Makefile` — publishing helper

## Publish
The CS webspace is a plain directory (`~/public_html` → `/cs/htuser/taddmao/public_html/`)
served over HTTP; there is no git-based deploy. To push the current working tree live:

```sh
make publish
```

This rsyncs the site files into `~/public_html/` (excluding `.git`, `Makefile`, `README.md`).

## Preview locally
```sh
make preview   # http://localhost:8000
```
