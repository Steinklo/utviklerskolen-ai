---
description: Run all tests for the DDE-facts project
allowed-tools: Bash, Read
---

Run the tests for DDE-facts:

1. **Backend tests** (if backend exists):
   ```bash
   cd backend && dotnet test --verbosity normal
   ```

2. **Frontend tests** (if frontend exists):
   ```bash
   cd frontend && npm test
   ```

Report results in this format:
- Total tests run
- Passed/Failed counts
- Any failures with file locations

If tests fail, suggest fixes but don't implement them unless asked.
