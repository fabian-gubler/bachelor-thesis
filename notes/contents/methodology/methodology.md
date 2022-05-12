# (0) Context - Means of data collection

### What we did so far

Relationship to this part:
- Before jumping straight into, it is beneficial to reorient ...
- The last chapter now serves as a theoretical foundation for this next more practical part.
- Effectiveness and validity of theory and hypotheses is directly tested by application on the smart factory project. 

### Motivation
- Current project state with vision
- Remind readers what the focus of study is

### Structure
- First and foremost provide more details on the context the thesis is set in
- How i will structure this chapter (components of refactor process), which are in sequential order, with the exception of testing which is a supporting process during the entirety
	Alternation between hands-on, then design decisions (which provides a rich understanding)
	-> More hands-on overview of the procedure, with the aim of providing enough information to potentially replicate the chosen process
	-> Then go into design decisions (understanding the why's)

### Smart Factory Context

Describe with what tools (hardware and software) I am constrained to do this project.
- Fischer Fabrik
- Python
- Software Architecture
- Controller Interface of Smart Factory
- Describe Code Project

---
Methods decision
---

- Detail and justify key design choices
- Strategy to accomplish aims
- Data collection method (measuring success)
- Limitations (trade-offs)

- Measuring Success: Only measuring readability & complexity: This approach is definetly not very scientific, nor does it measure completely. There could be a lot of improvements.
- Aim is just to get an approximation 
- This theme goes throughout the entire thesis (Testing, Metrics, Progress etc.) Paper focusses on the entire process, instead of looking at a small portion of it. If the Bigger picture can be grasped that is more of an achievement for me than looking at a small fraction. 

### Overview Procedure
In order to achieve the goals and answer the hypotheses the following steps are taken.

[Short Summary]

In the following part these steps will be explained in greater detail.

### Overview
Extended Model (like Testing is supportive)
- Could include a visualization of a chain of tasks
	-> Could use the refactoring process but with more detailed bullet points (like tools used)


# (4) Refactor: Means of Implementation
### Goal
Improving the Quality of the code

Hint: This part is only covered briefly as it will be extensively covered during the results chapter, where a documentation of the refactoring occurs

### Refactoring: Two Possible Approaches (Autmated & Manual)
Approaches
- Using Some Automated Refactoring Tools
	- [Rope](https://github.com/python-rope/rope/blob/master/docs/rope.rst)
- Using Step-by-step guide from Fowler

Conclusion
- Even when using automated tools, there will still be some sort of manual intervention and evaluation needed. It can however potentially save a lot of time, and today's tools can for some refactoring applications be even considered to be less prone to errors.

# (5) Extra Activities to improve clean code: Supporting Tools
In addition I will use extra tools during my software development process, with the aim to improve the quality of the Code.

These extras are not part of the prior category (means of analysis) because they will, as the refactoring, be used during the implementation.

These tool not only improve the quality, but also make refactoring easier.
-> why?

#### Explanations
- **Linting**: Linters flag programming errors, bugs, stylistic errors, and suspicious constructs through source code analysis. 
- **Formatters**: While linters just check for issues in your code, code formatters actually reformat your code based on a set of standards.
- **Static Type Checking**: Type checking is the activity of providing that the operands of an operator are of compatible types.

#### Current Setup
- Flake8 (Linter)
- Pylint (Linter)
- black (Formatter)
- Pyright (Static Type Checker)

# Limitations
Evaluate and justify your methodological choices
- Cite relevant sources
- Discuss obstactles
- Specific constraints (see means of work) which are hard to reproduce
- Not having written the code myself
- Not direct translatable to huge factories or even similar projects
- Tools only get you so far. Expert Knowledge required for complex tasks
- How good are these metrics, well established?

Readability Metric: Pylint (Special Dynamic; Measuring Success & Extra Activity at the same time -> Invalidates validity)
- We must take into account that when using pylint during the refactoring we of course will make its native score better.
- This will make it that it won't be a wow factor, this metric should obviously improve, but we can at least from a factual standpoint argue that the code is more readable, as that is pylint's purpose.

