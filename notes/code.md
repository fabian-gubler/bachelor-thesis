# Documentation

## Refactor Tools

### Tools
- Sofware Analyse Sonograph (für Akademik kostenfrei): Dependency Graph (für Cyclic Dependencies)
- Arcan für Java (Python Equivalent?)
- Dead Code und Replicated Code (e.g. Kafka, many object have the same duplicate function)
- ... weitere Code Analyse tools finden (für Metriken)
- Limitationen der Analysetools, Domainexperte Wissen wird für komplexere Tasks benötigen

Personal
- Rope & Ropevim: https://github.com/python-rope/rope
- Guide: https://realpython.com/python-refactoring/#code-complexity-in-python
- Prime: https://github.com/ThePrimeagen/refactoring.nvim

### Ratschlag von Flemming Weyers

- Mich auf ein Design Pattern fokussieren und zu Ende refactorn, anstelle von mehreren gleichzeitig

### Vorgehen

- Analyse für Grob Übersicht mit Metriken
- Dann entscheiden wo Fokus, welche Code Smells ich addressieren und eigenes Ziel setzen
- Lösungsversuch und Implementierung, 
- Mit analysetool: Testing / Feedback (Plan, Do, Check, Act)
- ... Modularität

## Code Examples

- [Ftrobopy Manual](https://github.com/ftrobopy/ftrobopy/blob/master/manual.pdf)
- Request Overview: factory_swagger.pdf

## Hardware Components

#### /hardware/general_txt.py

- Defines object independent functionalities
- Example: ```http://127.0.0.1:5000/ov/state_of_machine?machine=ov_1```

#### /hardware/generic/*.py

- Defines object dependent Functionalities

#### /hardware/generic/init_factory.py

- Initialize Factory

#### /hardware/calib/*

- Calibration of vacuum gripper and warehouse

#### /hardware/txts/*.py

- ???

#### /hardware/utility/*

- ???

## app.py (3500 LOC)

#### Architecture

- Getter and Setters
- Task Execution
- Process Execution
  - Bundles Tasks
  - Can be further bundled into business processes
- PWM Webservices (Not implemented)

#### Sequence

1. Initializing Web Server
2. Process Execution
   1. Store
   2. Produce
   3. Unload from container
   4. Store in container
3. Sorting Machine (Execution, Getter)
4. Multi Processing Station - Milling Machine
5. Multi Processing Station - Oven
6. Multi Processing Station - Transport
7. Vacuum Gripper Robot
8. High Bay Warehouse
9. Environment and Camera (Not implemented)
10. Start the App

#### Getter and Setter

*Is divided into individual objects (e.g. sorting different code block than milling machine)*

- Indicates (gets) and sets different states
  - State of machine
  - Status light
  - Speeds

**line 456 ff: Communication of Process Execution**

- Sequential Order of individual requests
- Advanced Functionalities (e.g. checks condition)

