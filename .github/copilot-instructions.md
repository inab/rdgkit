# GitHub Copilot Instructions for `inab/rdgkit`

## 1. Project Overview & Architecture
- **Purpose:** Static website for Research Data Governance (RDG Kit) hosted on GitHub Pages.
- **Tech Stack:** Jekyll, Liquid templates, SCSS, Docker.
- **Base Theme:** Powered by [`elixir-toolkit-theme`](https://elixir-belgium.github.io/elixir-toolkit-theme/).
- **Design Rule:** All visual components, typography, layout, and UI components **must strictly adhere** to `elixir-toolkit-theme` design guidelines and CSS utilities. Do not introduce inline custom styles or external frameworks (e.g., Bootstrap, Tailwind) unless explicitly requested.

---

## 2. Directory & Asset Conventions
- **Asset Hierarchy:** All image assets in `assets/img/` must be placed in their respective subdirectories:
  - `assets/img/favicons/` — Favicons, web manifest, touch icons.
  - `assets/img/icons/` — Functional icons, UI graphics, list bullet icons.
  - `assets/img/logos/` — Site logo, funder logos, ELIXIR/INB branding.
- **Theme Overrides:** To override theme behavior (e.g., default paths in headers or footers), copy the corresponding file from `elixir-toolkit-theme` into `_includes/` or `_layouts/` locally rather than hacking core assets.

---

## 3. Internationalization (i18n) Strategy
- **Primary Plugin:** `jekyll-polyglot` (compiled via GitHub Actions workflow).
- **Default Language:** `es` (Spanish).
- **Target Languages:** `["es", "en"]`.
- **Configuration Conventions:**
  - `_config.yml` must declare:
    ```yaml
    languages: ["es", "en"]
    default_lang: "es"
    exclude_from_localization: ["assets", "css", "js", "vendor"]
    ```
- **Content & Front Matter Rules:**
  - Every Markdown content page must include `lang: es` or `lang: en` in its Front Matter.
  - Append the language code before the extension: `page.es.md` and `page.en.md`.
  - Keep identical, explicit `permalink` values across translations of the same page. Preserve existing URLs when renaming files; never include `.es` or `.en` in the permalink. Polyglot serves Spanish at `/` and English at `/en/` (beneath `baseurl`).
  - Link to shared permalinks using `relative_url`, not language-specific source-file `link` tags; Polyglot selects only the active translation.
  - Content lives in `pages/` in this repository. Apply the same conventions to future `_pages/` content and root-level content pages; repository documentation such as README and CONTRIBUTING is not site content.
  - Never hardcode UI labels in layouts/includes. Define UI labels and layout strings in `_data/translations.yml` using `es` and `en` root keys, and access them with `site.data.translations[site.active_lang]`:
    ```yaml
    es:
      nav_home: "Inicio"
    en:
      nav_home: "Home"
    ```

---

## 4. Local Development & Docker Workflow
- The project includes a lightweight Docker environment for local development (`Dockerfile` + `docker-compose.yml`).
- When generating scripts, build steps, or commands, assume local testing is conducted via:
  ```bash
  docker compose up
  ```
  - Always ensure build output artifacts (_site/, .jekyll-cache/, .jekyll-metadata) are excluded from Git commits.

## 5. Coding Standards & Git Guidelines
- **Liquid Code:** Write clean, readable Liquid loops and conditionals. Prefer filter-based operations over complex nested Liquid logic.
- **Markdown:** Write clean Markdown without hardcoded HTML styling unless necessary for theme-specific grid/card layouts.
- **Commit Messages:** Follow standard Conventional Commits (feat(scope):, fix(scope):, refactor(scope):, docs(scope):).