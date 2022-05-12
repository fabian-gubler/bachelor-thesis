# (1) Analysis (Code Smells -> Internal Problems) 
Chosen Detection Approach (with explanation)
Many tools have been created to automatically or semi-automatically detect code smells (Menshawy, p.1)
-  , where the automatic tools approach is the most
used approach to detect smells (Menshawy, p.3)
- Manual approach relies on human perception of smells by applying predefined guidelines. It is characterized as highly time consuming and prone to human error (Menshawy, p.3) It is not an efficient way for detecting smells in the following work and is therefore discarded as a detection technique.
- The appropriateness automated approach is highly dependend on the programming language a software is written in. Menshawy (p.4) has examined what programming languages are supported by the most cited tools. Here the java programming language was supported by 48% of the tools, whereas the python programming language, which is the relevant language of our system, was only supported by 4%. In addition, validated by personal research, the automated tools that support python are mainly targeting niche smells and do not provide detection for the entire suite of code smells.
- For the detection of the code smells in the software system at hand, the author has chosen a semi-automatec approach called metrics-based.
- Metrics based approach measures source code elements and takes decisions based on threshold values (Menshawy, p.4)
- It is accomplishes both prerequisites of the following work, as it can be used for the python programming language and is also efficient.
- Menshawy points out that a metrics approach cannot detect all smells. However, for the 8 smells the thesis is focussing on, an appropriate metric could be found.
- Another detection approach relevant to code smell is a visualization based approach, which was used to get a broad overview of the code base, but will not be further discussed in the thesis. 


=== Include Graphic ===
-> Explain it and simultaneous present connections between smell & metrics + Importance of Thresholds (Metric alone does not say much)
- Enables Prioritization by discarding values that do not surpass threshold
- Metrics vary depending on smell (formula, counting, duplicate code)


- Explain each metric of smell
	-> As can be observed in the illustration ...

- For Shotgun Surgery and Divergent change, a dependency graph will be used instead of a threshold value
	-> This allows to evaluate the amount of dependencies in relation to the entire project in order to see any outlying behavior

Duplication
- Notably, it has to be said that even though the amount of code duplication is a metric, the approach for detecting this code smell was purely automated. 
- This is possible due to code duplication being language agnostic. In order to detect duplication of code programs do not need to understand the programming language. Hence, this would even work with other types of text that isn't code.

-
Sonargaph
-

=== Include Visualization (Mark different views) ===
Sonargraph (Tool for Metrics): Use Cases
- Metrics
- Also used as an overall visualization tool
- Working with windows (issues, metrics, code view)

Sonargraph Explained
- Its Explorer product, is free to use, which as its name suggest offers ways to make observations about the code base with metrics and visualization
- It is the graphical interface the user interact with
- In addition, altough not specified in their website, it was possible renew the trial period to access the entire suite. 

Sonargraph Advantages: Why good for my context
- Can look at entire project (connections) not just file	
- Having the full software suite was for example needed to detect code duplication
- Altough with a lot less functionalities compared to other programming languages, the core features do work with python  > Ignore virtualenv files, understands semantics of code (functions, statements, operations etc.), see outgoing and ingoing dependencies among modules and much more
- Being able to do metrics project wide is almost a prerequisite for meaninful measurements

Sonargraph: Specialty: Duplicate Code + Quality Models
=== Include visualization ===
- Duplicate Code View (Can directly see)
- Provides threshold values in the form of quality models






#### Overview Sonargraph Metrics
- Number of Parameters (Level: Routine) [Smell: Long Parameter List]
- Number of Statements (Level: Routine) [Smell: Long Method]
- Lines of Code / Total Lines / Number of statements (Level: Source File) [Smell: Large Class / Lazy Class]

Sonargraph
- Number of incoming / outcoming dependencies [Smell: Feature Envy, Shotgun, Divergent]

Shotgun Metric: Physical Coupling [Level: Component]
	- Explained: Number of dependencies 'to' and 'from' other components in other modules.  
	- A shotgun surgery can be when a change to a "Class A" causes several minor changes to other classes
	- Shotgun surgery happens when you have to make many changes in your codebase to achieve seemingly simple tasks

Divergent Change
	- Metric: Physical Cohesion [Level: Component]
	- Explained: dependencies to and from other components in the same module
	- A single class needs to be changed for many reasons.
	This is a clear indication that it is not sufficiently
	cohesive and must be divided

