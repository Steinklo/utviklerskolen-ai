---
description: Build the DDE-facts project (backend and frontend)
allowed-tools: Bash, Read
---

Build the DDE-facts project:

1. **Backend build**:
   ```bash
   cd backend && dotnet build
   ```

2. **Frontend build**:
   ```bash
   cd frontend && npm run build
   ```

Report:
- Build success/failure for each
- Any errors or warnings
- Bundle size for frontend (if available)
