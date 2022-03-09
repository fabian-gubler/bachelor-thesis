# Refactoring
## Sources
### Books
**Fowler: Refactoring** (400 Pages)
- Principles of Refactoring
- Code Smells
- Building Tests

**Martin: Clean Code** (280 Pages)
- What is Clean Code?
- Naming, Comments, Formatting
- Objects and Data Structs

### Articles
**Sonnleithner: Code Smells** (4 Pages)
- Metastudy of Fowler et al.

**Lacerda: Systematic Review** (36 Pages)
- Background and Definitions
- Literature Review
- Detection Tools

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

#### Challenges in refactor
Simultaneous
- Could inhibit others from working on the code at the same time (fowler describes this phenomenon as two hats). 
- Easy to change hats when coding alone, but hard when in larger teams.
- Needs clear separation on which part of the code base is being refactored, and which is added functionality. The key is that these separate parts must be entirely indepenedent 
- else: bugs will be introduced, point of refactoring that no observable behavior changes is not guaranteed)

- (fowler) Although many people see time spent refactoring as slowing down the development of new features, the whole purpose of refactoring is to speed things up.

Scope
- Different levels of a refactor: From small programs to entire software stack / architecture

Competence
- Needs Education, not necessarily an easy task.
- Requires knowledge about a code base.
- (fowler) That judgment I mentioned earlier on whether to refactor or not is something that takes years of experience to build up. Those with less experience

Importance of Tests
- Difficult if no tests available to verify that no observable behavior has changed
- (fowler) Whenever I do refactoring, the first step is always the same. I need to ensure I have a solid set of tests for that section of code. The tests are essential because even though I will follow refactorings structured to avoid most of the opportunities for introducing bugs, I’m still human and still make mistakes. The larger a program, the more likely it is that my changes will cause something to break inadvertently—in the digital age, frailty’s name is software.

Conclusion
- (fowler) Still, the evidence I hear from my colleagues in the industry is that too little refactoring is far more prevalent than too much. In other words, most people should try to refactor more often.

## Formalisation of Design Patterns
### Research and Methods
- Try to use visuals to explain
- Link Goals with concrete Design Pattern

### Content
- **Relationship**: between Design Patterns and Refactoring - Refactoring as a process of getting rid of quality deficiencies (i.e. code smells)
- **Generalized Goals**: Modularity
- **List and explain**: Most prominent Design Pattern, Anti-Patterns
- **Extra Activities for clean code**: Comments, Naming, Formatting, Linting
- **Consequences**: (Use this to transition to business case)
	- Achieve the Goals
	- Might seem small, but cumulated. 
	- Code decay inhibits coding-process progressively (refactoring inverse function)

### Notes


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
[Video Technische Schulden](https://www.youtube.com/watch?v=hwkqHWpMQss)

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

# Personal
## Design Patterns
  - **Code Duplication**: Same code occuring at multiple places
  - **Extensible and Modular**: Check what happens when you add more objects, features

## Findings
Clean Code
- Sedgewick (p. 413): Import statements appear at the beginning of a program, with all standard Python modules appearing before all user-defined modules.

Data abstraction
- Sedgewick (p. 674): Whenever you can clearly separate data and associated operations within a computation, you should do so.
