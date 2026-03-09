# surveyverse Package Development

**Part of the surveyverse ecosystem.**

surveyverse is the metapackage that installs and loads all core
surveyverse packages (surveycore, surveytidy, surveyweights) with a
single
[`library(surveyverse)`](https://github.com/JDenn0514/surveyverse) call.

------------------------------------------------------------------------

## Current Phase Status

| Phase                           | Status      | Notes        |
|---------------------------------|-------------|--------------|
| Phase 0 — Scaffold & repo setup | In Progress | See `plans/` |

**Next action:** Build out component packages, then wire them as proper
Imports once published.

------------------------------------------------------------------------

## Key Implementation Rules

- Every non-trivial change lives on a feature branch — never commit to
  `main` or `develop` directly
- Branch naming: `feature/`, `fix/`, `test/`, `docs/`, `chore/`
- All commits use Conventional Commits format:
  `feat(scope): description`
- Run `devtools::document()` before committing any file with roxygen2
  changes
- Run `devtools::check()` before opening a PR

## Metapackage-specific Notes

- `Remotes:` field in DESCRIPTION is required while component packages
  are not on CRAN — remove it once they are published
- CRAN submission of surveyverse must wait until surveycore, surveytidy,
  and surveyweights are all on CRAN
- `R/attach.R` and `R/zzz.R` handle package attachment on
  [`library(surveyverse)`](https://github.com/JDenn0514/surveyverse)
- Never add `@importFrom` — use `::` everywhere

## Reference Documents

- `plans/error-messages.md` — canonical error/warning class names
