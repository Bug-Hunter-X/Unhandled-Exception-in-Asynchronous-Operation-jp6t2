# Unhandled Exception in Asynchronous Operation
This repository demonstrates an example of improper exception handling in an asynchronous Dart operation and provides a solution.
The original code lacks specific exception handling, potentially leading to unhandled errors and application crashes.  The improved solution uses more precise exception handling for better error management.
## Bug
The `fetchData` function uses a `try-catch` block, but the `catch` block is too general.  This makes it difficult to understand and handle different types of errors. 
## Solution
The improved version adds specific exception handling using `on` clauses, enhancing error management and providing more context for debugging.