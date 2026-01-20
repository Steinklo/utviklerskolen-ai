---
description: Add a new D.D.E. fact to the backend data
allowed-tools: Read, Edit
---

Add a new fact about D.D.E. to the static data in the backend.

$ARGUMENTS contains the fact details (or ask if not provided).

## Steps

1. Read the current facts in `backend/src/DdeFacts.Api/Services/FactService.cs`
2. Determine the next available ID
3. Add the new fact with proper formatting:
   ```csharp
   new(ID, "Title", "Description", Year, "Category"),
   ```
4. Ensure category is one of: History, Hits, Live, Trivia

## Validation
- Title should be 3-8 words
- Description should be 50-200 words
- Year must be between 1984 and current year
- Category must be valid

If details are incomplete, ask for:
- What is the fact about?
- What year does it relate to?
- Which category: History, Hits, Live, or Trivia?
