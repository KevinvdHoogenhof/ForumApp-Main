# Architecture

Architecture models of my forum application.

## Project status

In the image below you can find an overview of the status of my project.

![Project status C2 model](./C4_Models/Architecture_C2_project_status.png "Project status C2 model")

In this image you can see that the services have different colors. Blue means not yet started on that service, Green means finished, Orange means mostly finished and Yellow means that the basic/initial version is working.

## C1: Context

In the C1 model you can find an overview of the context of the forum application. In this model you can see that the forum application does not use any external services.

![C1 model](./C4_Models/Architecture_C1.png "C1 model")

## C2: Containers

In the C2 model you take a look at the various containers that will be part of a software application. In this model you can see what services I will be using in the forum application and what technologies are being used. In the development document you can see the reasoning behind the technology choices.

![C2 model](./C4_Models/Architecture_C2.png "C2 model")

Since I won't have time to develop everything in this diagram I also made an alternative version of the C2 diagram that only contains the parts I will be implementing in this semester.

![C2 model project](./C4_Models/Architecture_C2_project.png "C2 model project")

## Sequence and Walkthrough diagrams

To make it more clear how traffic travels in my architecture I made a sequence and walkthrough diagram for 2 user stories/scenarios. The first being account creation and the second viewing posts. Both of these scenarios have multiple microservices that need to perform certain actions. With the help of these diagrams you can get a clearer view of how messaging is used in the forum application and how requests are handled.

### Account Creation

![Walkthrough Account creation](./Walkthrough_Diagrams/Walkthrough_AccountCreation.png "Walkthrough Account creation")

![Sequence diagram Account creation](./Sequence_Diagrams/SequenceDiagram_AccountCreation.png "Sequence diagram Account creation")

### Update name of thread

![Walkthrough Update thread name](./Walkthrough_Diagrams/Walkthrough_UpdateThreadName.png "Walkthrough Update thread name")

![Sequence diagram Update thread name](./Sequence_Diagrams/SequenceDiagram_UpdateThreadName.png "Sequence diagram Update thread name")

## C3: Components

The C3 model looks more in depth at a container of the C2 model. In this model you can see how one container works and what components a container has as well as the components directly connected to this component of the container.

Since the containers of my application will be built using a largely similar pattern I have only created a C3 diagram for one of my containers. 

![C3 model](./C4_Models/Architecture_C3.png "C3 model")

## C4: Code diagram (Class diagram)

In my C4 diagram you can see what the class diagram of the forum application looks like. In this diagram you can see what models the application is made up of and what fields these models have and the relations between them.

![C4 model](./C4_Models/Architecture_C4.png "C4 model")
