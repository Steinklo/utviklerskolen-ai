---
name: code-review
description: Review code changes for quality and best practices. Use when preparing a PR or after completing a feature.
allowed-tools: Read, Grep, Glob
---

# Code Review Skill

## Review Checklist

### General
- [ ] No hardcoded secrets or credentials
- [ ] No console.log/print statements left in
- [ ] Error handling is appropriate
- [ ] Code is readable and self-documenting

### Backend (C#)
- [ ] Using Minimal API pattern (not controllers)
- [ ] DTOs are records (not mutable classes)
- [ ] All async methods have Async suffix
- [ ] Dependency injection used correctly
- [ ] Input validation present

### Frontend (React/TypeScript)
- [ ] React Query for data fetching
- [ ] Props are typed with interfaces
- [ ] No useEffect for data fetching
- [ ] Loading and error states handled
- [ ] Tailwind classes used (no inline styles)

### Tests
- [ ] New code has tests
- [ ] Tests follow AAA pattern (Arrange-Act-Assert)
- [ ] Test names are descriptive

## Review Output Template

```markdown
## Code Review: [Feature/File Name]

### Summary
[1-2 sentences about the changes]

### Score: [1-5]/5

### Issues
| Severity | Location | Issue | Suggestion |
|----------|----------|-------|------------|
| 🔴 High | file:line | desc | fix |
| 🟡 Medium | file:line | desc | fix |
| 🟢 Low | file:line | desc | fix |

### Positives
- [Good things about the code]

### Suggested Improvements (Optional)
- [Nice-to-have changes]
```
