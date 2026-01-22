---
name: code-review
description: Code review checklist for DDE-facts project. Use when reviewing code or preparing PRs.
---

# Code Review Checklist

## Backend (C#)
- [ ] Records for DTOs (not mutable classes)
- [ ] Minimal API (not controllers)
- [ ] Async/await everywhere
- [ ] Dependency injection used

## Frontend (React/TS)
- [ ] React Query for data fetching
- [ ] Typed props with interfaces
- [ ] CSS variabler og klasser (ikke inline styles)
- [ ] Loading/error states handled

## General
- [ ] No hardcoded secrets
- [ ] No console.log left in
- [ ] Tests included
- [ ] Code is readable
