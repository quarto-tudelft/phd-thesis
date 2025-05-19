

# phd-thesis

Quarto extension for PhD thesis.

# Guide

## Installation

### Starter Template

This is a [project type extension](https://quarto.org/docs/extensions/project-types.html) that includes a starter template. You can install with one simple command:

    quarto use template quarto-tudelft/phd-thesis

> **Dependencies**
>
> The project type extension depends on the [quarto-tudelft/base](https://github.com/quarto-tudelft/base) extension. To install it, navigate to the directory you created for the starter template above and add the dependency: `quarto add quarto-tudelft/base`

## Existing Repository

If you already have an existing repository, we recommend using the [quarto-tudelft/base](https://github.com/quarto-tudelft/base) extension instead of this template.

## Format Options

This extension provides several variables to customize your thesis title page:

[TABLE]

### TU Delft Logo Inclusion

The extension automatically includes the TU Delft logo by default. You can control this behavior:

``` yaml
# Include the TU Delft logo (default: true)
institute-logo-tudelft: true  

# Add additional logos
institute-logos:
  - path: "images/partner-institute-logo.png"
  - path: "images/another-institute-logo.png"
```

To disable the automatic inclusion of the TU Delft logo:

``` yaml
institute-logo-tudelft: false
```

When providing your own logos, the TU Delft logo (if enabled) will always appear first, followed by your specified logos.

### Multiple Institute Logos

To include multiple logos of institutions that contributed to your research:

``` yaml
institute-logos:
  - path: "images/tudelft-logo.png"
    spacing: "1.5cm"  # Optional spacing between logos
  - path: "images/partner-institute-logo.png"
```

Alternatively, for a single logo, you can use the simpler syntax:

``` yaml
institute-logo: "images/tudelft-logo.png"
```

### Example YAML Configuration

``` yaml
---
title: "My Doctoral Dissertation"
subtitle: "A Study of Something Important"
author: "Jane Doe"
author-degree: "MSc, University of Research, Country"
author-birthplace: "Amsterdam, The Netherlands"
defense-date: "Tuesday 20, June 2025 at 10:00 o'clock"
rector: "prof. dr. ir. A. B. Example"

# Committee members
committee:
  - title: "Prof. dr. A. Kleiner"
    affiliation: "Delft University of Technology"
    role: "promotor"
  - title: "Dr. A.A. Aaronson"
    affiliation: "Delft University of Technology"
    role: "copromotor"

independent-members:
  - title: "Prof. dr. A. Jansen"
    affiliation: "Delft University of Technology"
  - title: "Prof. dr. ir. A.B.C.D. van de Lange-Achternaam"
    affiliation: "Delft University of Technology"
    name-too-long: true  # Use this for names that need to be on their own line
  - title: "Prof. dr. N. Nescio"
    affiliation: "Politecnico di Milano, Italy"
  - title: "Prof. dr. ir. J. Doe"
    affiliation: "Delft University of Technology"
    role: "reserve member"

other-members:
  - title: "Prof. dr. ir. J. de Wit"
    affiliation: "Delft University of Technology"
  - title: "Dr. ir. Q. de Zwart"
    affiliation: "Delft University of Technology"

# Contributors to dissertation
contributors:
  - title: "Prof. dr. ir. J. de Wit"
    affiliation: "Delft University of Technology"

# Institute logos (choose one approach)
institute-logos:
  - path: "images/tudelft-logo.png"
    spacing: "1.5cm"
  - path: "images/partner-institute-logo.png"

# Publication details
keywords: "keyword1, keyword2, keyword3"
printed-by: "University Press"
cover-by: "Jane Smith, featuring an abstract representation of the research topic"
isbn: "978-90-8593-000-0"

format:
  tudelft-thesis-pdf: default
---
```
