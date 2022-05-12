This results chapter objectively reports the findings, 
	presenting only brief observations in relation to each question or hypothesis. 
It should not give an overall answer to the main research question or speculate on the meaning of the results.


# Smell Prioritization
- Include Excel Table
- Include Table with corresponding Refactoring methods

# PyDeps
- Show Connections
-> Pretty straight forward? Only unidirectional, and if bidirectional then only between two modules. Check if true.

# Documentation: Refactoring (Code duplication)
Selection of refactoring, describe the process fairly detailed and document the immediate results.

Note: This kind of is written similar as Fowler does in his step by step, but applied to my project


1. Fowler Proposes Three Methods to deal with duplication
- Extract Function: Simplest is when having same experssion in two methods of the same class
- Slide Statements: Similar but no identical
- Pull up Method: No subclasses, thus not used

2. Report how many are e.g. "Extract Function"

3. Strategy
- Getting to know Fowler methods
- Finding out with which duplication to start (Amount of Occurences, Difficulty)

4. Having to Deal with Nested Duplication
- Decided To Start with Nested 
	- Reason: Problems (e.g. needing to change multiple places) gets exemplified with nested

5. Visualization: Desired State
2 Zoom Levels
- Everything
- Version after refactor

-> Point out that all are distinct, no connections between each other

6. Strategy
- Working from bottom to top (Show in visualization with an arrow)

- Deciding to do high bay ware house

# Process
### Function name
- Testing whether root function (set_motor) is referenced at other places
-> Not referenced, no worries
- Then rename but leave contents (first test)

### Passing determined things as arguments
- Start at level 3: New way of making a list (or pass as argument)
- RPC: Passing named function as argument to set_motor function

### Transfer generalized functions to all occurences
- e.g. a lot of check_heap_queue functions

### Realizing queue mechanism is referenced a lot
-> Thinking using "Extract Function" to be at one place

# Testing Passed
Hyptothesis: The degree of fulfilled test requirements changes visibly based on which code smell is being refactored
- Yes or no

# Progress
Hypothesis: Refactoring leads to an improvement in the quality of the code
- See Lines of Code change
- Show Chart how much Refactoring improved the indeces
- Report whether it was a success (improved internal state)
