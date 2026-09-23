# Vipul Prasad — Portfolio

A clean, minimal, professional portfolio built with plain **HTML / CSS / JavaScript** — no frameworks, no build step, no dependencies.

## Sections

- **Hero** — name, headline, quick links
- **About** — short bio + key facts
- **Skills & Tools** — grouped by category
- **Projects** — your two flagship projects with tech tags
- **Education & Certifications** — vertical timeline
- **Contact** — email CTA + phone / LinkedIn links

## Run it locally

Just open `index.html` in your browser. Or serve it:

```bash
# Python
python -m http.server 8000

# Node
npx serve .
```

Then visit http://localhost:8000

## Customize

Everything lives in three files:

| File | What to change |
|------|----------------|
| `index.html` | Text content, links, projects |
| `styles.css` | Colors (see `:root` variables at top), fonts, spacing |
| `script.js` | Only needed if you add new interactive features |

### Common edits

- **GitHub links** — search for `https://github.com/` in `index.html` and replace with your real profile / repo URLs (appears in hero, project cards).
- **Accent color** — change `--accent` and `--accent-text` in `styles.css` `:root`.
- **Add a project** — copy an `<article class="project-card">` block in `index.html`.

## Deploy (free)

**GitHub Pages**
1. Push this folder to a GitHub repo (e.g. `vipu1prasad/portfolio` or `vipu1prasad.github.io`).
2. Repo → Settings → Pages → Source: `main` branch, `/ (root)` → Save.
3. Your site goes live at `https://vipu1prasad.github.io/<repo>/`.

**Netlify / Vercel**
- Drag-and-drop the folder onto [app.netlify.com/drop](https://app.netlify.com/drop) — done.

## Placeholders to replace before sharing

- [ ] GitHub profile URL (2 places: hero + contact-ish links)
- [ ] Project repo URLs in the project cards
- [ ] Optionally add a `profile.jpg` / resume PDF link
