# Refactoring

## Visualization
### Process Idea
Create a visualization for (a) refactoring, (b) code smells, (c) business case
	detecting code smells -> refactoring steps -> reduce technological debt

Either
1. add in the end these three together to visualize the relationship as a process
2. Build on top of each, and grey out prior part

### Technical Debt diagram
see Fowler

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
- [Einführung: Technische Schulden](https://www.youtube.com/watch?v=hwkqHWpMQss)
- [Technical Debt](https://martinfowler.com/tags/technical%20debt.html)

## Background
### Notes

#### Relevance: When should we Refactor

% Transition
- (fowler) All this doesn’t mean that planned refactoring is always wrong. If a team has neglected refactoring, it often needs dedicated time to get their code base into a better state for new features, and a week spent refactoring now can repay itself over the next couple of months. 

Big Step

% Cases where development is hindered due to bad code

- Therefore it is safe to say that avoiding refactoring and fixing in post is way of writing code associated with costs and risks.
- Best Case scenario is, that such points can be adressed a priori. 
- Refactor then can be then thought as an investment into the future. 

% Corporate Changes
- Big corporate changes, as in a migration to the cloud, can be done much faster without existing technical debt.
- (fowler) The real impact of refactoring on architecture is in how it can be used to form a well-designed code base that can respond gracefully to changing needs.
- Sometimes also one of the quality attributes gains much importance, which would justify a refactor of code that is perceived as healthy.
- Having a business case for refactoring is such an important topic, that it will be discussed later in section (X).



#### 3 Key Benefits: Why Should we Refactor
Transition
- We now have discussed when we should do the refactor. This begs the question if the previously discussed circumstances do not apply if we then should not spend time working on the quality. Which is not the case.
- By asking why we should refactor, we can better understand the scope and complexity of a refactor. And might realize that small changes during the development phase can suffice. That while the projet currently does not need a fundamental refactor, we still need to avoid software decay in the future.


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

#### Sidenote: Importance Tests
Allen Holub (Twitter): Refactoring without tests is like crossing a busy street blindfolded.

Personal Reason
- In order to provide a codebase that is improved to the previous one tests are needed.
- Danger that due to the introduction of bugs, the refactor will be useless
- Even if the refactor comes short, writing tests are still a good value add, for the next person who will be programming next.

Risk Aversion
- Refactoring is indeed error prone, if no tests are available.
- In addition it is not possible to do a proper refactor, as one cannot verify whether the observable behavior has changed
- To quantify the success of the refactor and not make decisions on how one feels after it, tests are needed.

Connected to Branches
- (fowler) Self-testing code is, unsurprisingly, closely associated with Continuous Integration—it is the mechanism that we use to catch semantic integration conflicts.

Purpose
- Key is catching an error quickly
- (fowler) Mistakes happen, but they aren’t a problem provided I catch them quickly. Since each refactoring is a small change, if I break anything, I only have a small change to look at to find the fault—and if I still can’t spot it, I can revert my version control to the last working version.
- (fowler) Whenever I do refactoring, the first step is always the same. I need to ensure I have a solid set of tests for that section of code. The tests are essential because even though I will follow refactorings structured to avoid most of the opportunities for introducing bugs, I’m still human and still make mistakes. The larger a program, the more likely it is that my changes will cause something to break inadvertently—in the digital age, frailty’s name is software.
- (fowler) To do this, realistically, I need to be able to run a comprehensive test suite on the code—and run it quickly, so that I’m not deterred from running it frequently. This means that in most cases, if I want to refactor, I need to have self-testing code
- (fowler) Self-testing code not only enables refactoring—it also makes it much safer to add new features, since I can quickly find and kill any bugs I introduce.


#### Challenges: What to watch out?
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
#### What is a Code Smell?
- (sonnleithner) So called Bad smells [4] can negatively impact software quality. Bad smells are certain structures [4] or anti-patterns [5] in software that should be avoided. They can hinder understanding, maintaining, or extending a software system [6], [7].
- (lacerda) The term “smell” refers to some internal problem in the software either at a lower level, known as code level (Fowler et al.,1999) or higher, design (Brown et al., 1998) describing symptoms observed in components that impair software evolution. According to such level, a smell is respectively named code smell or design smell.
- (lacerda) Differently from a bug, a smell does not necessarily cause a fault in the application but may lead to other negative consequences, impacting on software maintenance and evolution.

#### Examples and Mention Methodology
**General**
- Maybe best to decide after the analysis, to see what fits best
- Make a Table similar to Lacerda
- List in own words: Inspiration from Sonnleithner, Lacerda (4)

**Method Chosen** (10 Semi-Detailed Smells)
- In their tertiary systematic literature review Lacerda et al. [10] discussed the main observations and challenges of smells and refactoring. They identified the top ten most cited code smells as 10 smells presented by Fowler and Beck [4] 
- In this section, we will analyze Bad Smells introduced by Fowler and Beck [4]. They introduced 24 code structures to avoid. To stay within the scope of this paper, we limit our overview to their top ten Bad Smells identified in [10].

**Method 1** (2 Detailed Smells)
Mention two categories with one example each according to Mathyla.

- (lacerda) Mathyla propsoses taxonomy of smells
- (lacerda) Bloaters: a bloater represents any element in the code that has become very large and can not be effectively handled. In general, bloaters are difficult to understand and modify. Smells belonging to this category are Long Method, Large Class, Primitive Obsession, Long Parameter List and Data Clumps;
- (lacerda) Change Preventers: software structures very difficult to modify; in general, this difficulty may occur at one or several points. In this category we find Divergent Change and Shotgun Surgery;


**Method 3** (24 One-Line Smells)
Make a table with all code smells from Fowler: 0.5 - 1 Page

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
- There exists an increase of debt which has to be repaid in the future in the form of maintenance costs.
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
