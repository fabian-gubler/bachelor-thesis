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
### Research and Methods

### Content
- Start with the overarching objective: Code quality
- What is quality in code?
- Why do we need code quality?
- When do we need it, when not?
- Challenges in refactor?
- Different levels of a refactor: From small programs to entire software stack / architecture
- Interplay between refactoring and performance?

### Notes
#### Defining Refactoring
- (fowler) Refactoring is the process of changing a software system in a way that does not alter the external behavior of the code yet improves its internal structure.

#### Objective
- (fowler) It is a disciplined way to clean up code that minimizes the chances of introducing bugs.
- (fowler)  Refactoring is all about applying small behavior-preserving steps and making a big change by stringing together a sequence of these behavior-preserving steps. 

#### Relevance
Critical Point of view
- (fowler) If the code works and doesn’t ever need to change, it’s perfectly fine to leave it alone. It would be nice to improve it, but unless someone needs to understand it, it isn’t causing any real harm. Yet as soon as someone does need to understand how that code works, and struggles to follow it, then you have to do something about it.
- (fowler) The compiler doesn’t care whether the code is ugly or clean. But when I change the system, there is a human involved, and humans do care. A poorly designed system is hard to change—because it is difficult to figure out what to change and how these changes will interact with the existing code to get the behavior I want. And if it is hard to figure out what to change, there is a good chance that I will make mistakes and introduce bugs.

Why do we need it?

#### First Steps
- (fowler) Whenever I do refactoring, the first step is always the same. I need to ensure I have a solid set of tests for that section of code. The tests are essential because even though I will follow refactorings structured to avoid most of the opportunities for introducing bugs, I’m still human and still make mistakes. The larger a program, the more likely it is that my changes will cause something to break inadvertently—in the digital age, frailty’s name is software.

## Formalisation of Design Patterns
### Research and Methods
- Try to use visuals to explain
- Link Goals with concrete Design Pattern

### Content
- **Relationship**: between Design Patterns and Refactoring - Refactoring as a process of getting rid of quality deficiencies (i.e. code smells)
- **Generalized Goals**: Modularity
- **List and explain**: Most prominent Design Pattern, Anti-Patterns
- **Extra Activities for clean code**: Comments, Naming, Formatting
- **Consequences**: (Use this to transition to business case)
	- Achieve the Goals
	- Might seem small, but cumulated. 
	- Code decay inhibits coding-process progressively (refactoring inverse function)


## The Business Case for Refactoring 
### Content
- Technical Debt: Cost benefit analysis
- Worst case: Code dinosaurs, unmaintainable code
- Difficulties in convincing clients, due to not delivering direct results
- Easier for new personell, less instruction (self-explainable)
- Find Case Studies of prominent firms
- Being able to add new features quickly after unforeseen changes.

### Notes

---

# Personal

- Formatting and Linting is also a part of the Quality of the Code
- Testing that functionalities did not change
	- Testing should be relatively simple, as there is not much ambiguity (e.g. sorting works)
	- No errors
	- This enables me to refactor at home and in the session at st. gallen i can test compatibility
	- Quality Metrics are also independent of the machine

## Video: Refactoring
- Refactoring doesn't change the observable behavior of the program, it makes a pureley internal change, aiming to make the program more easier to understand.
- Beim Refactoring ändern wir nur die Struktur, die nicht funktionalen Attribute. 
- Heisst das man an den Qualitätsattributen wie, Lesbarkeit, Wartbarkeit, Modifizierbarkeit, Testbarkeit, arbeitet
- Demzufolge soll man nur ein Refactoring durchführen, wenn eines oder mehrere dieser Qualitätsattribute schlecht sind.
- Ein Refactoring ist immer dann erfolgreich wenn nachher mindestens ein Qualitätsattribut besser geworden ist, ohne dass dabei die Funktionalität geändert worden ist.
- Am Ende muss nun bewiesen werden, dass nur die innere struktur und nicht das Verhalten geändert wird. Dies wird ermöglicht durch Software Tests.
- Argument für das Refactoring bei nicht erfüllten Qualitätsattribute, sind die sogenannten Technische Schulden. Man nutzt das Refactoring um diese Schulden zu reduzieren.
- Technische Schulden muss nicht zwingend die Schuld eines Entwicklers oder Architekten sein. Oftmals entsteht diese auch, weil im Laufe des Projektes plötzlich ein Qualitätsattribut plötzlich eine hohe Relevanz bekommt.
- Konsequenzen / Risiken von technischer Schuld: Features brauchen länger oder Unternehmensziele wie ein Gang in die Cloud mit der aktuellen Struktur nicht umsetzbar ist.

[Video Technische Schulden](https://www.youtube.com/watch?v=hwkqHWpMQss)

## Design Patterns
  - **Code Duplication**: Same code occuring at multiple places
  - **Extensible and Modular**: Check what happens when you add more objects, features

## Findings
Clean Code
- Sedgewick (p. 413): Import statements appear at the beginning of a program, with all standard Python modules appearing before all user-defined modules.

Data abstraction
- Sedgewick (p. 674): Whenever you can clearly separate data and associated operations within a computation, you should do so.
