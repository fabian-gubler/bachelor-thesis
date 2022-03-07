# Subject Matter

Keywords

- **BPMN:** Business Process Model and Notation
- **BPM:** Business Process Management
- **CPS (Cyper-physical systems):** Convergence of cyber and physical world

Definitions

- **Definition Smart factory:** Interconnectedness of isolated machines. Enables the connection of business and production processes (e.g. sales)

Descriptions

- **Model Smart Factory:** Components from "Fischer technik", different stations simultating production

Blog Article

- Software Stack: Reduce the gap between the production shop floor and enterprise-level management systems


# Refactoring

Goals

- **Maintainability**: Code should be easy to understand and maintain
- **Extensibility:** Adding a new object should be easy and not create new bugs in other parts of the code

[Video Technische Schulden](https://www.youtube.com/watch?v=hwkqHWpMQss)

- Refactoring doesn't change the observable behavior of the program, it makes a pureley internal change, aiming to make the program more easier to understand.
- Beim Refactoring ändern wir nur die Struktur, die nicht funktionalen Attribute. 
- Heisst das man an den Qualitätsattributen wie, Lesbarkeit, Wartbarkeit, Modifizierbarkeit, Testbarkeit, arbeitet
- Demzufolge soll man nur ein Refactoring durchführen, wenn eines oder mehrere dieser Qualitätsattribute schlecht sind.
- Ein Refactoring ist immer dann erfolgreich wenn nachher mindestens ein Qualitätsattribut besser geworden ist, ohne dass dabei die Funktionalität geändert worden ist.
- Am Ende muss nun bewiesen werden, dass nur die innere struktur und nicht das Verhalten geändert wird. Dies wird ermöglicht durch Software Tests.
- Argument für das Refactoring bei nicht erfüllten Qualitätsattribute, sind die sogenannten Technische Schulden. Man nutzt das Refactoring um diese Schulden zu reduzieren.
- Technische Schulden muss nicht zwingend die Schuld eines Entwicklers oder Architekten sein. Oftmals entsteht diese auch, weil im Laufe des Projektes plötzlich ein Qualitätsattribut plötzlich eine hohe Relevanz bekommt.
- Konsequenzen / Risiken von technischer Schuld: Features brauchen länger oder Unternehmensziele wie ein Gang in die Cloud mit der aktuellen Struktur nicht umsetzbar ist.
