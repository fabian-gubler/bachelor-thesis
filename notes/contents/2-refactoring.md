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
### Content
- Start with the overarching objective: Code quality
- What is quality in code?
- Why do we need code quality?
- When do we need it, when not?
- Different levels of a refactor: From small programs to entire software stack / architecture

### Notes

## Formalisation of Design Patterns
- Design patterns answer: "how" do we improve quality
- i.e. Refactoring as a process of getting rid of quality deficiencies (i.e. code smells)
- List and explain Design Pattern, Anti-Patterns
- Established Practices of patterns and different degree of impact
- Software Modularity
- Consequences

## The Business Case for Refactoring 
- Technical Debt: Cost benefit analysis
- Worst case: Code dinosaurs, unmaintainable code
- Difficulties in convincing clients, due to not delivering direct results
- Find Case Studies of prominent firms


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
  - Code Duplication

## Findings
Clean Code
- Sedgewick (p. 413): Import statements appear at the beginning of a program, with all standard Python modules appearing before all user-defined modules.

Data abstraction
- Sedgewick (p. 674): Whenever you can clearly separate data and associated operations within a computation, you should do so.
