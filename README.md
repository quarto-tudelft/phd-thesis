

# phd-thesis

Quarto extension for PhD thesis.

## Installation

### Starter Template

This is a [project type extension](https://quarto.org/docs/extensions/project-types.html) that includes a starter template. You can install with one simple command:

    quarto use template quarto-tudelft/phd-thesis

> **Dependencies**
>
> The project type extension depends on the [quarto-tudelft/base](https://github.com/quarto-tudelft/base) extension. To install it, navigate to the directory you created for the starter template above and add the dependency:
>
>     quarto add quarto-tudelft/base

### Existing Repository

If you already have an existing repository, we recommend using the [quarto-tudelft/base](https://github.com/quarto-tudelft/base) extension instead of this template.

## Usage

To find out more about this extension, simply preview the starter template:

    quarto preview

## Propositions Sheet

In addition to the main thesis template, the extension ships a simple template for the thesis propositions. To use it, simply set up a Quarto notebook as follows:

``` qmd
---
title: "Your Thesis Title"
author: "Your Name"
format:
  pdf:
    template: templates/propositions-template.tex
---

1. Quarto is the most superior form of scientific publishing.
2. Julia is the most superior form of scientific computing.
3. Counterfactual explanations are the most intuitive way to explain opaque machine learning models.
```
