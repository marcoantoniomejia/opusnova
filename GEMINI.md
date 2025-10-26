# Opus Nova Soluciones - Website

## About the Project

This project is the corporate website for Opus Nova Soluciones, a consultancy firm specializing in digital transformation, Artificial Intelligence, and Google Cloud for SMEs in Mexico and Latin America.

The website is a static site built with HTML, CSS, and JavaScript.

## Getting Started

To run the website locally, you can use Docker.

**1. Build the Docker image:**

```bash
docker build -t opusnova .
```

**2. Run the Docker container:**

```bash
docker run -p 8080:80 opusnova
```

The website will be available at [http://localhost:8080](http://localhost:8080).

## Project Structure

*   `index.html`: The main landing page.
*   `quienes-somos.html`: The "About Us" page.
*   `servicios.html`: The "Services" page.
*   `contactanos.html`: The "Contact Us" page.
*   `blog/`: Contains the blog page.
*   `css/`: Contains the CSS files.
*   `js/`: Contains the JavaScript files.
*   `img/`: Contains the images.
*   `Dockerfile`: Defines the Docker image for the project.
*   `GEMINI.md`: This file, containing information about the project.
*   `README.md`
*   `.gitignore`
*   `Dockerfile`
*   `.dockerignore`

## Conventions

### 1.2. Naming Conventions

*   **CSS Classes:** Use BEM (Block-Element-Modifier) methodology for all classes.
    *   *Example:* `hero-section__button--primary`.
*   **Files/Routes:** Use kebab-case for all HTML file and directory names.
    *   *Example:* `quienes-somos.html`, `/servicios`.
*   **JavaScript:** Use camelCase for functions and variables.
    *   *Example:* `handleFormSubmit()`.

## 2. Search Engine Optimization (SEO)

### 2.1. Fundamental Metadata

*   **Title:** Page titles should follow the structure: `[Page Title] | Opus Nova Soluciones | [Location/Market]`.
    *   *Example for index.html:* `Transformación Digital e IA para PyMEs en México y LATAM | Opus Nova Soluciones`.
*   **Meta Description:** Descriptions should be unique for each page, focusing on key services: AI, Google Cloud, Cloud Migrations. The description must be highly relevant to the company's mission (Digital Transformation of SMEs).
*   **Canonicalization:** Always include the `<link rel="canonical">` tag pointing to the preferred URL to avoid duplication.
*   **Robots:** Use `index, follow` by default, unless otherwise indicated.

### 2.2. Semantics and Content Structure

*   **H Tags:** The hierarchy of header tags (`<h1>` to `<h6>`) must be strictly logical.
    *   Only one `<h1>` per page (it must contain the main keyword of the page).
    *   Use `<h2>` for the main content modules (e.g., "Our Services", "AI Success Stories").
*   **Semantic HTML:** Prioritize the use of `<main>`, `<nav>`, `<header>`, `<footer>`, `<section>`, and `<article>` to define content areas, reducing the use of `<div>`.
*   **Accessibility (A11y):** Images must have a descriptive `alt` attribute. Links and buttons must have a clear context for screen readers (ARIA).

### 2.3. Structured Data (JSON-LD)

*   **Required:** Each page must include structured data in JSON-LD format in the `<head>`.
*   `index.html` and `quienes-somos.html` must include the `Organization` and `LocalBusiness` Schema (focused on consulting services).
