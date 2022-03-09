# Refactoring
## Sources
### Refactoring
**Fowler: Refactoring** (400 Pages)
- Principles of Refactoring
- Code Smells
- Building Tests

**Kim: Field Study** (11 Pages)
- Related Work
- Definitions

**Mens: Research and Trends** (17 Pages)
- Techniques
- Tool Support

### Code Smells 
**Martin: Clean Code** (280 Pages)
- What is Clean Code?
- Naming, Comments, Formatting
- Objects and Data Structs

**Sonnleithner: Code Smells** (4 Pages)
- Metastudy of Fowler et al.

**Lacerda: Systematic Review** (36 Pages)
- Background and Definitions
- Literature Review
- Detection Tools

**Chen: Detecting Smells in Python** (6 Pages)
- Methodology
- Strategy


### Business Case
- [Technical Debt](https://martinfowler.com/tags/technical%20debt.html)
- [Technische Schulden](https://www.youtube.com/watch?v=hwkqHWpMQss)

## Background
### Notes
#### Defining Refactoring
- (fowler) Refactoring is the process of changing a software system in a way that does not alter the external behavior of the code yet improves its internal structure.
- Talk about that it sounds less appealing not to add features.

#### Objective: Include Main points
Improving Quality Attributes
- Readability, Maintainability, Modifiable, Testable etc.
- Therefore one should only do a refactor, if one or many of these attributes are not sufficient.
- This is how the sucess of a refactor can be measured: Whether at least one quality attribute has significantly improved, without changing the observable beahvior in term of functionality

Tests
- In the end it must be proven, that only the internal structure has changed. This can be done through software tests.

General
- (fowler) It is a disciplined way to clean up code that minimizes the chances of introducing bugs.
- (fowler)  Refactoring is all about applying small behavior-preserving steps and making a big change by stringing together a sequence of these behavior-preserving steps. 
- (fowler) Refactoring is very similar to performance optimization, as both involve carrying out code manipulations that don’t change the overall functionality of the program. The difference is the purpose: Refactoring is always done to make the code “easier to understand and cheaper to modify.” 

#### Relevance
Critical Point of view
- (fowler) If the code works and doesn’t ever need to change, it’s perfectly fine to leave it alone. It would be nice to improve it, but unless someone needs to understand it, it isn’t causing any real harm. Yet as soon as someone does need to understand how that code works, and struggles to follow it, then you have to do something about it.
- (fowler) The compiler doesn’t care whether the code is ugly or clean. But when I change the system, there is a human involved, and humans do care. A poorly designed system is hard to change—because it is difficult to figure out what to change and how these changes will interact with the existing code to get the behavior I want. And if it is hard to figure out what to change, there is a good chance that I will make mistakes and introduce bugs.

#### Why Should we Refactor
General
- (fowler) When I talk about refactoring, people can easily see that it improves quality. Better internal design, readability, reducing bugs—all these improve quality.

Refactoring Improves the Design of Software
- Software tends to decay
- (fowler) Poorly designed code usually takes more code to do the same things, often because the code quite literally does the same thing in several places. Thus an important aspect of improving design is to eliminate duplicated code. 

Refactoring Makes Software Easier to Understand
- (fowler) It does matter if it takes a programmer a week to make a change that would have taken only an hour with proper understanding of my code.
- (fowler) Refactoring helps me make my code more readable. Before refactoring, I have code that works but is not ideally structured. 
- The future developer can also be myself.

Refactoring Helps find bugs
- (fowler) Help in understanding the code also means help in spotting bugs. 

#### Refactoring as a Process
Relevance from a Software Architecture Perspective
- (fowler) Early in my career, I was taught that software design and architecture was something to be worked on, and mostly completed, before anyone started writing code.
- (fowler) Refactoring changes this perspective. It allows me to significantly alter the architecture of software that’s been running in production for years. 
- (fowler) The real impact of refactoring on architecture is in how it can be used to form a well-designed code base that can respond gracefully to changing needs.

Yagni Design Trio in the Software Development Process: Testing, CI, Refactoring
- (fowler) Enough projects now use agile methods that agile thinking is generally regarded as mainstream—but in reality most “agile” projects only use the name. 
- (fowler) The first foundation for refactoring is self-testing code. By this, I mean that there is a suite of automated tests that I can run and be confident that, if I made an error in my programming, some test will fail. 
- (fowler) To refactor on a team, it’s important that each member can refactor when they need to without interfering with others’ work. This is why I encourage Continuous Integration. 
- (fowler)  Self-testing code is also a key element of Continuous Integration, so there is a strong synergy between the three practices of self-testing code, continuous integration, and refactoring.
- (fowler)  Balance these practices, and you can get into a virtuous circle with a code base that responds rapidly to changing needs and is reliable.


#### Practical Application: Branches, Continuous Integration
Personal
- I will only cover shortly, because it focusses on team. Having the luxury of coding alone, does not result in the potential risks of merge conflicts.
- However, it still makes sense to get a grasp of the overall philosophy, which can also be applied to when working alone, and most importantly is necessary when in the future multiple persons will work on the project.

Explanation
- (fowler) a common approach in teams is for each team member to work on a branch of the code base using a version control system, and do considerable work on that branch before integrating with a mainline.
- (fowler) The longer I work on an isolated branch, the harder the job of integrating my work with mainline is going to be when I’m done.
- (fowler) The problem of complicated merges gets exponentially worse as the length of feature branches increases. 
- (fowler)  Many people, therefore, argue for keeping feature branches short—perhaps just a couple of days. Others, such as me, want them even shorter than that. This is an approach called Continuous Integration (CI), also known as Trunk-Based Development. 
- (fowler) Fans of CI like it partly because it reduces the complexity of merges, but the dominant reason to favor CI is that it’s far more compatible with refactoring.

#### Importance Tests
Allen Holub (Twitter): Refactoring without tests is like crossing a busy street blindfolded.

Personal Reason
- In order to provide a codebase that is improved to the previous one tests are needed.
- Danger that due to the introduction of bugs, the refactor will be useless
- Even if the refactor comes short, writing tests are still a good value add, for the next person who will be programming next.

Risk Aversion
- Refactoring is indeed error prone, if no tests are available.
- In addition it is not possible to do a proper refactor, as one cannot verify whether the observable behavior has changed

Connected to Branches
- (fowler) Self-testing code is, unsurprisingly, closely associated with Continuous Integration—it is the mechanism that we use to catch semantic integration conflicts.

Purpose
- Key is catching an error quickly
- (fowler) Mistakes happen, but they aren’t a problem provided I catch them quickly. Since each refactoring is a small change, if I break anything, I only have a small change to look at to find the fault—and if I still can’t spot it, I can revert my version control to the last working version.
- (fowler) Whenever I do refactoring, the first step is always the same. I need to ensure I have a solid set of tests for that section of code. The tests are essential because even though I will follow refactorings structured to avoid most of the opportunities for introducing bugs, I’m still human and still make mistakes. The larger a program, the more likely it is that my changes will cause something to break inadvertently—in the digital age, frailty’s name is software.
- (fowler) To do this, realistically, I need to be able to run a comprehensive test suite on the code—and run it quickly, so that I’m not deterred from running it frequently. This means that in most cases, if I want to refactor, I need to have self-testing code
- (fowler) Self-testing code not only enables refactoring—it also makes it much safer to add new features, since I can quickly find and kill any bugs I introduce.


#### Challenges in refactor
Simultaneous
- Could inhibit others from working on the code at the same time (fowler describes this phenomenon as two hats). 
- Easy to change hats when coding alone, but hard when in larger teams.
- Needs clear separation on which part of the code base is being refactored, and which is added functionality. The key is that these separate parts must be entirely indepenedent 
- else: bugs will be introduced, point of refactoring that no observable behavior changes is not guaranteed)

Counterintuition
- (fowler) Although many people see time spent refactoring as slowing down the development of new features, the whole purpose of refactoring is to speed things up.

Scope
- Different levels of a refactor: From small programs to entire software stack / architecture

Competence
- Needs Education, not necessarily an easy task.
- Requires knowledge about a code base.
- (fowler) That judgment I mentioned earlier on whether to refactor or not is something that takes years of experience to build up. Those with less experience

Conclusion
- (fowler) Still, the evidence I hear from my colleagues in the industry is that too little refactoring is far more prevalent than too much. In other words, most people should try to refactor more often.

## Formalisation of Design Patterns
### Research and Methods
- Try to use visuals to explain
- Link Goals with concrete Design Pattern

### Content

### Notes
#### Transition: Relationship between Refactoring and Code Smells
- Refactoring as a process of getting rid of quality deficiencies (i.e. code smells)
- (fowler) By now you have a good idea of how refactoring works. But just because you know how doesn’t mean you know when. Deciding when to start refactoring—and when to stop—is just as important to refactoring as knowing how to operate the mechanics of it.
- There is no clear cut moment when to refactor, there are only indications that there is trouble that can be solved by a refactoring.

#### What is a Code Smell?

#### List and explain: Most prominent Design Pattern, Anti-Patterns

#### Extra Activities for clean code: 
**Readability**
- In addition there are a wide range of automatic tools available.
- General Goal is to create consistency over python code and thus making it more readable and easier to maintain.
- Style Guide: PEP8 is a well-accepted standard when it comes to Python Code
- Tools are based on PEP8

**Debugging**
- Apart from readability, formatters and static type checkers are also able to catch bugs in the code writing process.

**Explanations**
- **Linting**: Linters flag programming errors, bugs, stylistic errors, and suspicious constructs through source code analysis. 
- **Formatters**: While linters just check for issues in your code, code formatters actually reformat your code based on a set of standards.
- **Static Type Checking**: Type checking is the activity of providing that the operands of an operator are of compatible types.

**If necessary:**
- Comments (might be useful at the beginning of a file), but might get into the way (see Fowler)

**Current Setup**
"For an Detailed Overview of the setup used during the project please reference chaper X"
- Flake8 (Linter)
- Black (Formatter)
- Pyright (Static Type Checker)

#### Conclusion: (Use this to transition to business case)
	- Achieve the Goals
	- Might seem small, but cumulated. 
	- Code decay inhibits coding-process progressively (refactoring inverse function)

## The Business Case for Refactoring 
### Content

### Notes
#### Transition
Purely Economic Reasons to refactor
- (fowler) But I think the most dangerous way that people get trapped is when they try to justify refactoring in terms of “clean code,” “good engineering practice,” or similar moral reasons. The point of refactoring isn’t to show how sparkly a code base is—it is purely economic. We refactor because it makes us faster—faster to add features, faster to fix bugs. It’s important to keep that in front of your mind and in front of communication with others. The economic benefits of refactoring should always be the driving factor, and the more that is understood by developers, managers, and customers, the more of the “good design” curve we’ll see.

Refactoring is a managerial Task
- Refactoring is more connected to management than one might assume in the beginning. It is not the mere top down executino of business requirements. Moreover, can be seen as a tool for product managers or team leaders to improve the quality of their product.
- (fowler) To a manager who is genuinely savvy about technology and understands the design stamina hypothesis, refactoring isn’t hard to justify. Such managers should be encouraging refactoring on a regular basis and be looking for signs that indicate a team isn’t doing enough.

#### Status Quo: Technical Debt

Transition: To further illustrate and try to quantify this issue, let us look at the concept of technical debt.
- Cost benefit analysis: If the code never gets touched again, one does not need a refactor.
- Diagram p. 71: The difference between these two is the internal quality of the software. Software with a good internal design allows me to easily find how and where I need to make changes to add a new feature. Good modularity allows me to only have to understand a small subset of the code base to make a change. If the code is clear, I’m less likely to introduce a bug, and if I do, the debugging effort is much easier.

Reasons
- Technical  debt do not necessarily be due to developers or architect being guilty. Oftentimes, these can develop because in the lifetime of the project one quality attribute becomes more relevant.

Consequences / Risks
- Features need more time to develop and corporate objectives might not be able to be implemented with the current structure

Rewriting
- In some cases it may even be more cost effective to rewrite the code base than to refactor it.
- This can be due to the code being that messy that rewriting it is faster.
- This can also be the case when a new technology (e.g. programming language) would have advantages, including maintainability, finding personell etc.
- In the end there are multiple factors that need to be taken into account when deciding whether to leave the code as it is, to refactor it, or to rewrite it entirely. That is where a competent manager can really add value to the company.

Strategy
- In the best case, these decisions don't have to be taken in post, but would be integrated in the strategy to plan into the future and prevent messy code altogether.

#### Problem: Difficulties in convincing
- Another trade off is between code quality and adding new features. However as described previously, it can be argued that with refactoring features are added more quickly.

- Refactoring can be proposed from two sides: Either from management, or the programmers themselves.
- No direct Results for Clients. Hard to grasp the value added.
- One could even say that there is no observable value added. Difficult to see the reason, because it prevents from future value destroyed.

#### Advantages: Managerial benefits
- Easier for new personell, less instruction (self-explainable)
- Find Case Studies of prominent firms
- Being able to add new features quickly after unforeseen changes.

#### Concluding: Psychology and Relationships
- Whether the is sucessfull refactoring depend on the structure. If there is only incentive in adding functionality, there lies a problem.
-  (fowler) I’ve certainly seen places were refactoring has become a dirty word—with managers (and customers) believing that refactoring is either correcting errors made earlier, or work that doesn’t yield valuable features. 

To avoid at all costs (Worst case)
- One might even be incentiviced to make the code less readable, as this would secure one's job.
- No Documentation and Refactoring leading to Legacy code with "Code Dinosaurs" working with unmaintainable code.

---

## Personal
### Design Patterns
Fowler
  - **Duplicated Code**: Same code occuring at multiple places
  - **Long Method**: Decomposed for clarity and ease of maintenance
  - **Large (God) Class**
  - **Long Parameter List**: Hard to understand, often not necessary
  - **Complex Conditional Logic**
  - **Shotgun Surgery**: Dependency graph, lots of little changes in various classes they might be brought together
	
Personal
  - **Extensible and Modular**: Check what happens when you add more objects, features

### Sedgewick
Clean Code
- Sedgewick (p. 413): Import statements appear at the beginning of a program, with all standard Python modules appearing before all user-defined modules.

Data abstraction
- Sedgewick (p. 674): Whenever you can clearly separate data and associated operations within a computation, you should do so.
