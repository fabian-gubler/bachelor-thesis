Für jeden controller

1. SD Karte Prüfen (muss Community version stehen)
2. System Directory
3. FT-GUI klicken

Tools

- Sofware Analyse Sonograph (für Akademik kostenfrei): Dependency Graph (für Cyclic Dependencies)
- Arcan für Java (Python Equivalent?)
- Dead Code und Replicated Code (e.g. Kafka, many object have the same duplicate function)
- ... weitere Code Analyse tools finden (für Metriken)

Ratschlag von Flemming Weyers

- Mich auf ein Design Pattern fokussieren und zu Ende refactorn, anstelle von mehreren gleichzeitig

Vorgehen

- Analyse für Grob Übersicht mit Metriken
- Dann entscheiden wo Fokus, welche Code Smells ich addressieren und eigenes Ziel setzen
- Lösungsversuch und Implementierung, 
- Mit analysetool: Testing / Feedback (Plan, Do, Check, Act)
- ... Modularität

Bachelor Thesis

- Research Question, und Thesen
- Limitationen der Analysetools, Domainexperte Wissen wird für komplexere Tasks benötigen
- Technical Debt (Schulden)

Weitere Notizen

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