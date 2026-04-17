# tomaszkobus.dev

Personal portfolio site — single-page, vanilla HTML/CSS/JS, no build step.

**Live:** [tomaszkobus.dev](https://tomaszkobus.dev)

![Preview](preview.png)

---

## Stack

Deliberately minimal. No framework, no bundler, no package.json. The whole thing is one `index.html` file plus a favicon and a CV PDF.

- **HTML5** — single-page layout, semantic sections (`hero`, `about`, `projects`, `experience`, `contact`)
- **CSS3** — inlined in `<style>`, no external stylesheet. Google Fonts (DM Sans, JetBrains Mono, Outfit)
- **Vanilla JS** — one `<script>` block handling:
  - Bilingual i18n (PL/EN) via `data-i18n` attributes with `localStorage` persistence
  - Scroll-aware navbar (`classList.toggle` on scroll position)
  - Mobile hamburger menu
  - Blinking cursor animation in hero
  - Fade-in on scroll via `IntersectionObserver`
- **SEO** — OpenGraph, Twitter Card, JSON-LD Person schema, canonical URL, descriptive meta tags

No dependencies. No npm install. No `dist/`. Open `index.html` in a browser — that's the dev environment.

## Structure

```
.
├── index.html              # Everything (HTML + CSS + JS)
├── favicon.svg             # SVG favicon
├── CV_Tomasz_Kobus.pdf     # Downloadable CV
├── preview.png             # Screenshot used in this README
└── README.md
```

## Deployment

Served via **Cloudflare Pages** with the custom domain `tomaszkobus.dev`.

Push to `main` → Cloudflare detects the commit → rebuild is trivial (no build step, just publish the repo root) → propagation to edge in ~30 seconds.

No CI/CD config needed in this repo — Cloudflare Pages handles it via the dashboard integration.

## Local development

```bash
git clone https://github.com/Subbok/Portfolio.git
cd tomaszkobus.dev
python3 -m http.server 8000
# open http://localhost:8000
```

Or any other static server — `npx serve`, Caddy `file_server`, whatever. There's no build pipeline to break.

## Design notes

Some decisions that aren't obvious from the code:

**Why no framework?** A personal portfolio is ~800 lines of HTML. Reaching for Next.js or Astro for this is ceremony over substance. The file opens in a browser, renders instantly, weighs <50 KB gzipped. No hydration, no flash-of-unstyled-content, no tooling to update when some dependency ships a breaking change in 2027.

**Why everything inlined?** Single HTTP request per page load. No FOUC. No worry about asset paths breaking when Cloudflare Pages deploys. The cost is a larger `index.html`, but it's still one file under 50 KB.

**Why bilingual?** The target audience splits roughly into "Polish recruiters who want to see the site in Polish" and "international recruiters who need English". Both matter, so both exist. The `applyLang()` function swaps all `data-i18n` elements client-side based on a toggle, persisted to `localStorage`.

**Why terminal-ish aesthetic?** DevOps portfolio. A recruiter skimming a dozen candidates sees pastel gradients as noise and terminal greens as signal. The aesthetic is the positioning.

## License

**Dual licensing:**

- **Code** (HTML structure, CSS, JavaScript logic): [MIT License](LICENSE-CODE) — fork it, use it as a template, modify it freely.
- **Content** (personal info, bio, CV, project descriptions, photos by implication): **All Rights Reserved**. Do not copy my life story and paste it into your portfolio. Write your own.

If you fork this as a starting point for your own portfolio, you're welcome to — just replace every piece of personal content with your own.

## Contact

Website has the current channels. This repo is not for issues or feature requests — it's a portfolio, not a product.
