# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart asynchronous programming: neglecting to properly handle exceptions in `async` functions.  The example showcases how a simple `try-catch` block can fail to address the issue without the use of `rethrow`.

The `bug.dart` file illustrates the problem. The `bugSolution.dart` file provides the correct solution.

## How to reproduce

1. Clone this repository.
2. Run `bug.dart`.
3. Observe that the exception is caught, but its details are not propagated effectively.
4. Run `bugSolution.dart`.
5. Note that the exception is now propagated correctly.

## Explanation

The `rethrow` keyword is important when handling exceptions within `async` functions.  Without `rethrow`, the exception is caught but not propagated further, leading to unexpected behavior.