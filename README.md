# rdgkit
Research Data Governance Toolkit - Space to find the answers to your research data governance questions.

## Image assets

- `assets/img/favicons/`: browser icons, the web app manifest, and its icons.
- `assets/img/icons/`: UI and topic graphics.
- `assets/img/logos/`: site, partner, and funder logos.

Set the navigation logo with `theme_variables.topnav.brand_logo` in
[`_config.yml`](./_config.yml), and footer images in
[`_data/footer.yml`](./_data/footer.yml). Use Jekyll's `relative_url` filter
for local asset URLs so they work with the site's `baseurl`.

[`_includes/head.html`](./_includes/head.html) overrides the hardcoded favicon
and Open Graph image paths in `elixir-toolkit-theme` 6.1.0. Keep it in sync
with the upstream include when upgrading the theme. Manifest icon paths are
relative to the manifest in `assets/img/favicons/`, so they also work when
the site is deployed under a subpath.
