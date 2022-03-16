# Methodological approach

Note: To rework the entire application might be out of scope. Therefore it would be useful to determine which parts to refactor beforehand and focus on these.
- First through a Literature Review hypotheses are constructed of what clean code looks like within industry 4.0 
- Effectiveness of theory and hypotheses is directly tested by application on the smart factory project. 
- Success of the result will be determined by using metrics (prone to errors, interoperability, extensibility etc.)

## Motivation and Procedure
- Creating and evaluating hypotheses
- Priority and Goals of my Project
- Apart from scienticif metrics, what are more personal objectives of this paper
- What research problem or question I investigate?
- Desired Findigs: Code is easier to read and maintain

## Refactoring Process
### Research and Methods
- Maybe include a visualization of a chain of tasks

### Contents
- First step: Writing Tests


## Means of data collection
- First and foremost: Rough Overview with tools
- Plan, Do, Check, Act

Describe with what tools (hardware and software) I am constrained to do this project.
- Fischer Fabrik
- Python
- Software Architecture
- Controller Interface of Smart Factory
- Describe Code Project

## Pre Refactor: Methods of analysis
### Goal
Detection of code smells to determine flaws in code

#### Detection Methods
- [PySmell](https://github.com/orestis/pysmell)


### Design Patterns
- Under which criteria did I choose the design patterns?
- Which Software tools?

### Evaluation
- Can the detected Code smells be prioritized according to severity / importance?
- Are there relationships between the Smells? Can I just go sequentially when refactoring?

## Refactor: Means of Implementation
### Goal
Improving the Quality of the code


### Refactoring
Using Some Automated Refactoring Tools
- [Rope](https://github.com/python-rope/rope/blob/master/docs/rope.rst)

Using Step-by-step guide from Fowler

### Extra Activities for clean code: 
In addition I will use extra tools during my software development process, with the aim to improve the quality of the Code.

#### Readability
- In addition there are a wide range of automatic tools available.
- General Goal is to create consistency over python code and thus making it more readable and easier to maintain.
- Style Guide: PEP8 is a well-accepted standard when it comes to Python Code
- Tools are based on PEP8

#### Debugging
- Apart from readability, formatters and static type checkers are also able to catch bugs in the code writing process.

#### Explanations
- **Linting**: Linters flag programming errors, bugs, stylistic errors, and suspicious constructs through source code analysis. 
- **Formatters**: While linters just check for issues in your code, code formatters actually reformat your code based on a set of standards.
- **Static Type Checking**: Type checking is the activity of providing that the operands of an operator are of compatible types.

#### Unused Code
- [Vulture](https://github.com/jendrikseipp/vulture)
- Code or Variables that are not used

#### Current Setup
- Flake8 (Linter)
- Pylint (Linter)
- Black (Formatter)
- Pyright (Static Type Checker)


## Post Refactor: Methods of analysis
### Goal
The sucess of the refactor according to the quality attributes and Metrics

### Describe Quality Attributes
- Not always easy to quanity (e.g. readability)



## Limitations
Evaluate and justify your methodological choices
- Cite relevant sources
- Discuss obstactles
- Specific constraints (see means of work) which are hard to reproduce
- Not having written the code myself
- Not direct translatable to huge factories or even similar projects
- Tools only get you so far. Expert Knowledge required for complex tasks
- How good are these metrics, well established?
