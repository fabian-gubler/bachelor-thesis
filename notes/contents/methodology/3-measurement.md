-
Selection of Metrics
-

Introduction
- The subject of quality attributes has been previously addressed in the theoretical framework of refactoring.
- It was established, that in order to measure the internal quality of the software systems, programmers can take quality attributes into account.
- Attributes: Reusability, Flexibility, Understandability, Functionality, Extendibility, and
Effectivenes
- In the context of refactoring, the paper had identified [lista attributes] as particularly suitable.

Challenge
- Quantifiable Metrics exist only for a subset of the attributes
- In addition, some of the attributes cannot directly be measured objectively, such as readability
- This however doesn't make it impossible, as we can still make measurements on looking at established norms (e.g. long variable names)

Selection
- In this study, both target readability and complexity have been chosen to represent the overall quality of the software. By making use of these two categories we have both covered the local and global scope of the code.
- The thesis puts its focus on two topics for measuring progress
- The measurement of progress is directly linked with the question of which code smells are being refactored
- Focussing on complexity and readability is a direct result of the selection.
- For complexity the metric "Maintainability Index" is used and for Readability a rating of the plugin Pylint is used to track progress
- The two are treated very differently throughout the paper
- The maintainability index encompasses a variety of sub indeces (list them), which makes it our primary focus when evaluating the improvement in quality
- At first the author chose this index to be sufficient. 
- After some consideration however, readability in the form of the rating was added.
- (Buse, p, 546) We define readability as a human judgment of how easy a text is to understand. The readability of a program is related to its maintainability, and is thus a key factor in overall software quality. 
- Significance: Code is read much more often than it is written (Guido Van Rossum - Python Creator)
- Readability on the other hand will not be rated on a weigheted sum of subindeces, but with a plugin
- Using Readability is additionally interesting as it encompasses a lot of benefits, some of which are direct and some indirect.
- As an example, if a software system is readable, it is as a result easier for programmers to modify and extend the code. 

Recognizing shortcomings
- The point of this study is not to optimize the metrics but to improve the internal state, these metrics are ultimately just a means of reflection / accountability.
- In addition, one of the most important metrics is getting rid of code smells. The amount of code smells reduced, will mean the amount of internal problems solved.
- Therefore, all in all, these methods of measurement show to be promising and especially meet our demands very well.


Readability
-
- Pylint
	- Due to its popularity and connection to pip8 standards focussing on pythonic code,
		pylint automatically makes the code more readable as the standards are familiar.
	- Through these standards, we can mitigate the subjective nature of readability.
	- Even though Linting doesn't directly solve bugs, it definetly makes the code less prone to bugs / errors to to the improved readability.

- In addition there are a wide range of automatic tools available.
- General Goal is to create consistency over python code and thus making it more readable and easier to maintain.
- Style Guide: PEP8 is a well-accepted standard when it comes to Python Code
- Tools are based on PEP8

-
Complexity
-

[Cyclomatic Complexity - Better Understanding](https://www.guru99.com/cyclomatic-complexity.html#what-is-cyclomatic-complexity)
- [RealPython](https://realpython.com/python-refactoring/#metrics-for-measuring-complexity)

Introduction
- (Buse, p. 547) While software complexity metrics typically take into account the size of classes and methods and the extent of their interactions, the readability of code is based primarily on local, line-by-line factors. 
- Misconsception that the more advanced the programmer, the more complex the code will be. However, advanced programmers should strive to produce the simplest, elegant and easy to read programs that will achieve the objective with the least amount of steps.
- New features request are keep coming and we are adding new code to the code base. The code base grows exponentially. 
- Same as readability, complexity also positively contributes to making code more extensible. code is less dependent.

Maintainability Index
- NOTE: Go really small into theory (Formula + Objective)
- Three Components when it comes to our evaluation of complexity.
- How we measure success, will be the maintainability index, as it is a metric that combines cyclomatic complexity, halstead, and sloc.
- Is used to determine the complexity of a piece of code.
- Measured on a file-per-file basis.
- - Will not cover deeply, as it involves quite some amount of formula.
- The understanding is not essential, as the results are what we need to comprehend for the paper.
- Complexity is determined by the control flow, where its components (node, edges) decide the complexity using a formula.
- It is a quantitative measure of independent paths in the source code.
- How to interpret the index?
- Basic rules: <10 Easily maintainable, 11-20 harder to maintain, 21+ Need to refactor or rewrite.

-
Measurment Process
-

- Write down the importance of keeping track of progress, only than can you accurately know which refactor contributed how much to the success of the improvement.
- We only build cache on app.py + hardware/generic/* files.
	- Reason: >50 Lines of Code
	- To not skew the results, as helper files containing small amount obviously low in complexity

Bash Script
- Explain the thinking of why I did it
- Explain how it works

Advantages of Continuos Tracking
- 2 types of stages: Initial Overview // Temporal Progress
- Enables: Three zoom levels
- Attribution!
-> Go deeply into the significance of measuring success (otherwise we would not know if refactoring even helped)
-> Go into the limitations of measurement approach
