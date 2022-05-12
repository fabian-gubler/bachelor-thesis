# Metrics
Initial Measurement of Metrics and following interpretation.

e.g.
	- Low in complexity, but maintainability index is very bad.
	- Explain these results.
	- This than leads to the following considerations ...

# Smell Detection
Explain Significance of each High prioritized smell

- Code Duplication: 
	- Generally undesirable
	- If there is a bug it needs to be fixed in all similar methods
	- If someone does want to change a method -> needs to change everywhere. 
	- This also makes it prone to error (forgetting to change the other functions)
	- Having to write multiple tests (when could write one)

- Explain Similarities of the three smells -> Aim to restructure Software to make it easier to read and reduce complexity

- Explain what is better than average (Cohesion & Coupling) -> Write why this might be self explanatory (due to small project size)

# Refactoring
- Document any difficulties when refactoring
- Unexpected Behavior?
- How difficult?
