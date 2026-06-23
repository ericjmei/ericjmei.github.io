# ericjmei.github.io

Personal academic website for Eric J. Mei, a PhD candidate in the UW Department of Atmospheric and Climate Science.

The site is a single-page [Jekyll](https://jekyllrb.com/) site hosted on GitHub Pages at [https://ericjmei.github.io](https://ericjmei.github.io). Pushing to `master` triggers an automatic GitHub Pages build.

## Local development

```bash
bundle install
bundle exec jekyll serve -l -H localhost
```

Then open http://localhost:4000.

## Structure

- `index.html` — the single page (About, Research, Publications, CV)
- `_layouts/modern.html` — page shell (nav, footer, scripts)
- `assets/css/modern.css` — styles
- `images/` — images referenced by the page
- `EJM_CV.pdf` — CV (linked and embedded)
- `_config.yml` — Jekyll configuration
