# Resources — Statistics & Data Tools

## Primary: JASP (free, GUI)

- **URL:** https://jasp-stats.org
- **Why:** Psychology's most user-friendly stats tool. Point-and-click, APA-formatted output, Bayesian options built-in.
- **Install:** macOS, Windows, Linux. ~200MB.

### JASP Workflow (Month 1+)

| Analysis | JASP Module | When |
|---|---|---|
| Descriptive stats | Descriptives | Always first |
| T-test | T-Tests | 2-group comparisons |
| ANOVA | ANOVA | 3+ group comparisons |
| Correlation | Regression → Correlation Matrix | Variable relationships |
| Regression | Regression | Prediction |
| Chi-square | Frequencies → Contingency Tables | Categorical data |
| Factor analysis | Factor | Questionnaire validation |
| Reliability (Cronbach's α) | Reliability | Scale validation |

---

## Secondary: R + RStudio (free, powerful)

- **URL:** https://cran.r-project.org + https://posit.co/download/rstudio-desktop/
- **Why:** Industry standard for advanced stats + reproducibility. Your BEng + Python experience will make this easy.

### Key R Packages for Psychology

```r
install.packages(c(
  "psych",      # psychometrics, factor analysis
  "lavaan",     # SEM, confirmatory factor analysis
  "lme4",       # mixed-effects models
  "ggplot2",    # publication-quality plots
  "dplyr",      # data wrangling
  "tidyr",      # data tidying
  "broom",      # tidy model output
  "papaja",     # APA-style R Markdown
  "osfr"        # OSF integration
))
```

### When to Use R vs JASP

| Task | Tool |
|---|---|
| Quick descriptives, basic tests | **JASP** (faster) |
| Reproducible analysis script | **R** (script = audit trail) |
| Custom plots for report | **R** (ggplot2) |
| Factor analysis / SEM | **R** (psych, lavaan) |
| Power analysis | **R** (pwr package) |
| Bayesian stats | **JASP** (built-in) or R (brms) |

---

## Tertiary: Python (you already know it)

Use only if you have a specific reason. For psych stats, **JASP + R is the standard**.

Python useful for:
- Web scraping (survey recruitment)
- NLP (open-ended response analysis)
- Custom simulations

---

## Survey Tools

| Tool | Free Tier | Use |
|---|---|---|
| **Google Forms** | Unlimited | Quick pilots, simple designs |
| **Qualtrics** | Limited (HKU alumni may have access) | Pro research, branching |
| **Tally.so** | Generous free | Modern, mobile-first |
| **Prolific** | Pay-per-respondent | Recruitment for capstone (better than MTurk) |

For capstone: **Qualtrics (if available) or Tally + Prolific**.

---

## Data Repositories (for practice + capstone literature)

| Repo | Content |
|---|---|
| **OSF** | https://osf.io — datasets + preregistrations |
| **Kaggle** | https://kaggle.com/datasets — search "psychology", "mental health", "personality" |
| **ICPSR** | https://icpsr.umich.edu — major social science archive |
| **UK Data Service** | https://ukdataservice.ac.uk — UK longitudinal studies |
| **AddHealth** | https://addhealth.cpc.unc.edu — adolescent health (US) |
| **MIDUS** | https://midus.wisc.edu — midlife in US |

---

## Reproducibility Stack (Month 5+)

- **RStudio Projects** — one project per analysis
- **Git** — version control for analysis scripts (this repo!)
- **OSF** — preregister capstone hypotheses
- **Quarto / R Markdown** — reproducible reports (weave prose + code)
- **renv** — R package version pinning
