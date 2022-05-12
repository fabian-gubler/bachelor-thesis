# Refactoring

## Visualization
### Process Idea
Create a visualization for (a) refactoring, (b) code smells, (c) business case
	detecting code smells -> refactoring steps -> reduce technological debt

Either
1. add in the end these three together to visualize the relationship as a process
2. Build on top of each, and grey out prior part

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

### Sources: Business Case
- [Einführung: Technische Schulden](https://www.youtube.com/watch?v=hwkqHWpMQss)
- [Technical Debt](https://martinfowler.com/tags/technical%20debt.html)

## The Business Case for Refactoring 
### Content

---
Part 1: Technical Debt as a concept
	- Explanation
	- Relevance
	- Communication Device
	- Resource Allocation
---

---
Part 2: Advanced
	- Difficulties -> Valueable
	- Temporal
---

Complexity: Sounds like just crunching some numbers?
	- Sounds like with a spreadsheet one can figure out the choices
	- Costs are hard to objectively measure
	- Lower level (program specific), benefits are more direct, easier
	- Lower Level: Start with obvious beneficial targets (Hard to read code that is used often)
	- Higher Level: Refactoring efforts on entire project, how adaptable should our code be?
	- Higher Level: What impacts do these measurements have 5 years down the line

Management: Core Competency
	- Individual Competency: Experience, Able to think in these terms
	Company Compentency: Over time development established methods that work
	Very valuable and hard to replace
	- (fowler) To a manager who is genuinely savvy about technology and understands the design stamina hypothesis, refactoring isn’t hard to justify. Such managers should be encouraging refactoring on a regular basis and be looking for signs that indicate a team isn’t doing enough.

We need great managers and leaders
	- Incentives: Quality > Quantity
	- Avoid ambiguity: Shared Design Vision
	- Consesus: We also realize that it is much more of a team effort

Temporal
	- It is something that when understood in the beginning it is very important. Like an investment that pays off immensely in the future.
	- It is not something that can easily be reversed in the future (team culture, design principles, communication etc.)
	- Netflix: Only senior engineers
	- Total cost of ownership
	- Startups: Netflix e.g. in the beginning was great that features were develped that quick, but after saturation it became harder and harder
	- Code quality might be a highly underestimated differentiater for business success
	- Could be that an organization doesn't loose competition, because it didn't had the right ideas to improve the product, but rather it couldn't implement these ideas due to technical debt

Avoiding mistakes
	- Thinking refactoring is always good
	- Thinking about benefits (e.g. code that never gets touched again)

Leadership: Overarching Development Philosophy
	- Organization's structure and culture determining factor of how successful the refactor is
	- Incentivize clean code with the same amount (if not even more) as new features
	- As mentioned before, we again see that: Refactoring isn't a one-time fix but should be incorporated into development heuristic
	- Business strategy: Refactoring process clarified in advance
	- Very exciting: Skills that might not be apparent - Coders that make adaptable code

Bad Leadership: Case study of Bad Outcome
	- Transition: Much easier to hire new personell with readable code
	- Being able to formulate vision easier fow new people to enter
	- Incentives to make code less readable (secure one's job)
	- No refactoring / documentation -> Legacy (Dinosaur code)

Holistic approach:
	- What differentiates good programmers with great programmer (paradox: simple code & communication rather than complex functions)

Conclusion: Summary
	- We can say that knowing the practicalities of Refactoring isn't enough
	- Programmers themselves are not business majors -> Need for great leaders / inspiration

## Refactoring Archive 
### Notes

#### __Optional__ 3 Key Benefits: Why Should we Refactor

Refactoring Improves the Design of Software
- Software tends to decay
- (fowler) Poorly designed code usually takes more code to do the same things, often because the code quite literally does the same thing in several places. Thus an important aspect of improving design is to eliminate duplicated code. 

Refactoring Makes Software Easier to Understand
- (fowler) It does matter if it takes a programmer a week to make a change that would have taken only an hour with proper understanding of my code.
- (fowler) Refactoring helps me make my code more readable. Before refactoring, I have code that works but is not ideally structured. 
- The future developer can also be myself.

Refactoring Helps find bugs
- (fowler) Help in understanding the code also means help in spotting bugs. 

#### __Optional__ Broader Overview: Refactoring as a Process
Transition
- Now that we decided that the incorporation of refactoring would be a good idea.
- We want to find out where we can integrate refactoring into our software development process.

Relevance from a Software Architecture Perspective
- (fowler) Early in my career, I was taught that software design and architecture was something to be worked on, and mostly completed, before anyone started writing code.
- (fowler) Refactoring changes this perspective. It allows me to significantly alter the architecture of software that’s been running in production for years. 

Yagni Design Trio in the Software Development Process: Testing, CI, Refactoring
- (fowler) Enough projects now use agile methods that agile thinking is generally regarded as mainstream—but in reality most “agile” projects only use the name. 
- (fowler) The first foundation for refactoring is self-testing code. By this, I mean that there is a suite of automated tests that I can run and be confident that, if I made an error in my programming, some test will fail. 
- (fowler) To refactor on a team, it’s important that each member can refactor when they need to without interfering with others’ work. This is why I encourage Continuous Integration. 
- (fowler)  Self-testing code is also a key element of Continuous Integration, so there is a strong synergy between the three practices of self-testing code, continuous integration, and refactoring.
- (fowler)  Balance these practices, and you can get into a virtuous circle with a code base that responds rapidly to changing needs and is reliable.


#### __Optional__ Practical Application: Branches, Continuous Integration

Personal
- I will only cover shortly, because it focusses on team. Having the luxury of coding alone, does not result in the potential risks of merge conflicts.
- However, it still makes sense to get a grasp of the overall philosophy, which can also be applied to when working alone, and most importantly is necessary when in the future multiple persons will work on the project.

Explanation
- (fowler) a common approach in teams is for each team member to work on a branch of the code base using a version control system, and do considerable work on that branch before integrating with a mainline.
- (fowler) The longer I work on an isolated branch, the harder the job of integrating my work with mainline is going to be when I’m done.
- (fowler) The problem of complicated merges gets exponentially worse as the length of feature branches increases. 
- (fowler)  Many people, therefore, argue for keeping feature branches short—perhaps just a couple of days. Others, such as me, want them even shorter than that. This is an approach called Continuous Integration (CI), also known as Trunk-Based Development. 
- (fowler) Fans of CI like it partly because it reduces the complexity of merges, but the dominant reason to favor CI is that it’s far more compatible with refactoring.

## Formalisation of Design Patterns
### Research and Methods
- Try to use visuals to explain
- Link Goals with concrete Design Pattern
