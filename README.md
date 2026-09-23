# Vipul Prasad — Portfolio

🔗 **Live site: https://vipprasad.github.io**

A clean, minimal, professional portfolio built with plain **HTML / CSS / JavaScript** — no frameworks, no build step, no dependencies.

## Sections

- **Hero** — name, headline, quick links
- **About** — short bio + key facts
- **Skills & Tools** — grouped by category
- **Projects** — your two flagship projects with tech tags
- **Education & Certifications** — vertical timeline
- **Contact** — email CTA + phone / LinkedIn links

## Run it locally (optional)

The site is already live — this is only for previewing local edits before pushing.

`localhost` is your own machine: the address only works while a local server is running in this folder.

```bash
# Start a local server (keep the terminal open)
python -m http.server 8000

# Then open http://localhost:8000 in your browser
```

## Customize

Everything lives in three files:

| File | What to change |
|------|----------------|
| `index.html` | Text content, links, projects |
| `styles.css` | Colors (see `:root` variables at top), fonts, spacing |
| `script.js` | Only needed if you add new interactive features |
| `resume.html` | Resume content — `resume.pdf` is generated from this file (see below) |

### Common edits

- **GitHub links** — search for `https://github.com/` in `index.html` and replace with your real profile / repo URLs (appears in hero, project cards).
- **Accent color** — change `--accent` and `--accent-text` in `styles.css` `:root`.
- **Add a project** — copy an `<article class="project-card">` block in `index.html`.

## Updating your resume

`resume.html` is the **source of truth**; `resume.pdf` (linked from the site's Download Resume buttons) is generated from it.

1. Edit the content in `resume.html`
2. Optionally preview the PDF locally:
   ```bash
   bash scripts/build-resume.sh
   ```
3. Commit and push `resume.html`:
   ```bash
   git add resume.html && git commit -m "Update resume" && git push
   ```
4. A GitHub Actions workflow (`.github/workflows/build-resume.yml`) detects the change, regenerates `resume.pdf` in the cloud, and commits it automatically — the site's download link updates on its own.

> Note: editing `resume.pdf` directly is pointless — always edit `resume.html` and let the PDF be regenerated.

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
