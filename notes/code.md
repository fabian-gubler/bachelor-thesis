# Documentation

## Code Examples

See Request Overview on factory_swagger.pdf

**Pick Up and Transport**

```http://127.0.0.1:5000/vgr/pick_up_and_transport?machine=vgr_1&start=sink_2&end=oven```

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

