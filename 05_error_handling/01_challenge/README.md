# Challenge 1

Inside `gradeChecker.dart`, write a program that calculates the letter grade for a student based on their numeric score. Implement exception handling to deal with potential errors related to user input.

1. Use `stdin.readLineSync()` to take user input for the student's numeric score.
2. Parse the user input to a numeric value.
3. Implement exception handling to handle the following scenarios:
4. If the user enters a non-numeric value, catch the exception and print a message indicating that the input is invalid.
5. If the user enters a score outside the valid range (e.g., less than 0 or greater than 100), catch the exception and print a message indicating that the score is out of bounds.
6. Calculate the letter grade based on the valid input and print the result.