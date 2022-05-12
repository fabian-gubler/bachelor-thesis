-
Theory
-

Introduction
- Before stating how the testing proceeded, for this part, it is useful to first make some clarification on the design decisions and context i am working with

Incorporating Tests within our process
- First let's clarify why testing fits into our refactoring process. 
- Some might argue that it is something distinct. 
- If we recall fowler's definition. Is the first side of the coin. 

Importance of Tests: Validate Perceived Success
- Allen Holub (Twitter): Refactoring without tests is like crossing a busy street blindfolded.
- Refactoring is indeed error prone, if no tests are available.
- In addition it is not possible to do a proper refactor, as one cannot verify whether the observable behavior has changed
- Say that how we measure comes later ...
- To quantify the success of the refactor and not make decisions on how one feels after it, tests are needed.
- Hence, by only the measurements about the internal state we cannot make any meaningful statement on value added or general success.
- Key is catching an error quickly
- If done too late, with a large codebase it might be impossible to find where the bug was created, and one is forced to roll back and loose the progress.

Importance of Tests: Statements Fowler
- (fowler) Mistakes happen, but they aren’t a problem provided I catch them quickly. Since each refactoring is a small change, if I break anything, I only have a small change to look at to find the fault—and if I still can’t spot it, I can revert my version control to the last working version.
- (fowler) Whenever I do refactoring, the first step is always the same. I need to ensure I have a solid set of tests for that section of code. The tests are essential because even though I will follow refactorings structured to avoid most of the opportunities for introducing bugs, I’m still human and still make mistakes. The larger a program, the more likely it is that my changes will cause something to break inadvertently—in the digital age, frailty’s name is software.
- (fowler) To do this, realistically, I need to be able to run a comprehensive test suite on the code—and run it quickly, so that I’m not deterred from running it frequently. This means that in most cases, if I want to refactor, I need to have self-testing code
- (fowler) Self-testing code not only enables refactoring—it also makes it much safer to add new features, since I can quickly find and kill any bugs I introduce.


Context of Paper: Personal Reasons
- Danger that due to the introduction of bugs, the refactor will be useless
- Refactoring itself must not always be a value added, even if parts improved, introducing new bugs could make the new state of the software actually worse than before

Problem: CPS Limitations
- Due to the nature of the cyber physical system, visual tests in the form of manual testing are possible.
- To effectively test the physical space of a cps one would need to create a simulated environment. 

Problem: Project Specific Limitations
- There are no software tests available
- Moreover, even though there certainly exist application of such testing in practice, it would definitly be out of scope for this thesis and could be a topic for itself.
- Creating test suite from scratch would be a paper of itself
- visual tests provide us with a way to test that is time-efficent.
- However we do not have the same guarantee as we have with unit and integration tests.
- It can be more seen as taking a random sample from a population as in statistics.
- If at the end all visual tests pass, we can assume to a certain degree that we did not alter the external behavior, but again cannot guarantee it.
- This of course is not optimal, but all in all a useful way to still examine one important aspect of refactoring
- Added to this, we would not have a guarantee of unit and integration tests, as these only test the virtual space and not the physical.

-
Tooling
-

Introduction
- Goal: To Capture any cues that show visual changes of a predefined robotics process
- Process: Important to include most of the code as possible
- Requirements: State requirements that cover the behavior to detect any changes. Important that these are objective so they it can be routinely checked whether current state of code fulfills these requirements. There should be no ambiguity (e.g. looks like it is fulfilled, object moves)

Summary
- Running Camunda Modeler, Evaluation whether Gherkin Requirements are fulfilled. 
- Do this (routinely) after each meaningful change. 
- In addition use debugging tools (python run-time, type checkers, lsp)

Camunda Modeler
- Having a process
- Runs an entire business process, by "firing" http requests in a predefined order automatically
=== Visualization: Camunda Screenshot ===
- Important that each of the components (txts) are used
- By running a process, we simulate an integration test
- Important to note: This is all manual, no software is written

Gherkin Explanation
- Is a language ...

Gherkin Motivation
- Previously stated that we want to make it objective
- Using Gherkin framework to force objectivity
- In order to make it more scientific and less subjective the gherkin framework fits very well for our approach of testing.

=== Visualization: Gherkin as code syntax ===

Language
- Feature: 
	High-level description of Application
- Scenario Steps: 
	Action to be performed by a user
	Expected Results of the action
- Scenario Syntax
	Given (preconditions)
	When (user action)
	Then (outcome)
	And (multiple statements)

Debugging
- Previous stated tool is what we use to periodically check AFTER we did refactoring
- Preventative measure during the refactoring, is trying to run python code, and see whether errors are raised
- At current time, a lot of issues can be caught during programming itself with modern IDEs
- With an IDE (Integrated Development Environment) Formatters and static type checkers are also able to catch bugs in the code writing process. 
- During programming I use the pyright server as a static type checker
- In order to early detect errors before program execution
- Advantage is that we do not need to tediously run code all the time, but can catch them before running.
- Don't need to run code to see malfunctions within the code
- No errors obviously do not mean that there are no bugs. There could still be unexpected behavior.
	-> This is especially the case with python (statically typed language, polymorphism) == Means debugging alone would not suffice, testing is key
