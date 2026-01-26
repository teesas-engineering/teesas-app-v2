# Project Engineering Documentation

Welcome to the engineering documentation for this project.

This documentation set defines the **non-negotiable architectural, state management, navigation, and UI standards** used across the codebase.  
Its purpose is to ensure long-term scalability, consistency, and developer clarity as the project grows.

All detailed documents live under the `/docs` directory.  
This `README.md` serves as the **entry point and map** to those documents.

---

## How to Use This Documentation

- **New developers:**  
  Read this README first, then follow the documents in the recommended order below.

- **Active contributors:**  
  Use these documents as a **source of truth** during implementation and code reviews.

- **Reviewers:**  
  If a PR violates any rule defined here, the PR should be considered **incomplete**.

---

## Documentation Structure

```
/docs
 ├── ARCHITECTURE.md
 ├── STATE_MANAGEMENT.md
 ├── NAVIGATION_ROUTING.md
 └── UI_DEVELOPMENT_GUIDELINES.md
```

Each document is focused, opinionated, and intentionally strict.

---

## Recommended Reading Order

### 1. Architecture (Start Here)

📄 **[`ARCHITECTURE.md`](docs/ARCHITECTURE.md)**

Defines the foundational **layered architecture** of the project:

- Data → Domain → Presentation
- Responsibilities of each layer
- Repository pattern
- ApiResult handling
- Dependency injection rules

If you do not understand this document, **stop here** before touching code.

---

### 2. State Management

📄 **[`STATE_MANAGEMENT.md`](docs/STATE_MANAGEMENT.md)**

Explains how **MobX** is used to manage all application state:

- Store responsibilities
- Observable usage
- Action constraints
- Controller ownership
- Zero `setState` policy
- Stateless UI patterns

This document explains **how state flows through the app**.

---

### 3. Navigation & Routing

📄 **[`NAVIGATION_ROUTING.md`](docs/NAVIGATION_ROUTING.md)**

Covers routing using **go_router** with a service-based approach:

- Centralized route definitions
- `MainRouter` vs `RouteHelper`
- Semantic navigation methods
- UI navigation rules
- Adding new routes safely

This document ensures navigation remains predictable and refactor-friendly.

---

### 4. UI Development Guidelines

📄 **[`UI_DEVELOPMENT_GUIDELINES.md`](docs/UI_DEVELOPMENT_GUIDELINES.md)**

Defines how UI must be structured and styled:

- Widgets vs Components taxonomy
- Folder structure rules
- Stateless-by-default UI
- Design system enforcement
- Modal and Dialog patterns

This document prevents UI entropy and styling drift.

---

## Engineering Principles (Summary)

These principles apply everywhere in the codebase:

- **Structure over convenience**
- **Explicit over implicit**
- **State lives in Stores**
- **UI is declarative**
- **Navigation is centralized**
- **Design system is mandatory**

If something feels hard to implement, it is usually a sign that:
- A boundary is being violated, or
- Logic is in the wrong layer

---

## Enforcement

These documents are not suggestions.

They are intended to be enforced via:
- Code reviews
- PR checklists
- Refactors when violations are discovered

If you are unsure whether something violates the architecture,  
**assume it does and ask before proceeding**.

---

## Final Note

This documentation exists to protect:
- Code quality
- Developer velocity
- Mental clarity
- Long-term maintainability

When in doubt:

> **Fix the architecture — not the symptom.**
