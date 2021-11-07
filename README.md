# Nawy Task
Page from the Nawy mobile app

 
## App's Code Architecture
- Code Files separated by Package-by-feature Concept (Each Package contains all its dependents)

- App's Architecture implemented by MVVM Concept with Bloc State Management as a Viewmodel

- Each layer in MVVM separeated from upper layer , it doesn't know about its Upper Layer ( View -> VM -> Repo )
  ViewModel doesn't care about View , ViewModel doesn't have View Reference , Just subscribing with VM's Stream Subject which callback with any updates
  
- Model Layer contains Every thing about Data (Remote data Source Netoworking , Pojo Model classes , Repository )

- Code is made Testable with dependency injection concept , you can test Repo separately & test VM separately without View 

</p>
<p float="left">

  <img src="https://github.com/omarreess/Nawy-Task/blob/master/arch1.png" width="300" />
   <img src="https://github.com/omarreess/Nawy-Task/blob/master/arch%202%20module.png" width="350" />  
</p>

## Model Layer 
</p>
<p float="left">

  <img src="https://github.com/omarreess/Nawy-Task/blob/master/arch5%20model.png" width="300" />
   <img src="https://github.com/omarreess/Nawy-Task/blob/master/arch6%20model.png" width="350" />  
</p>

## View Layer
<p float="left">
  <img src="https://github.com/omarreess/Nawy-Task/blob/master/arch4%20view.png" width="315" />
 </p>

## App's UI Screen
<p float="left">
  <img src="https://github.com/omarreess/Nawy-Task/blob/master/flutter_01.png" width="315" />
 </p>
 
 
## Code Features 
Some of SOLID Principles applied :

 - D Dependency Inversion Principle as every Function depends on Abstraction & injected by dependent paramter instead of closing it in the scope ,
   it makes the code testable for unit-testing assertion and helps in loosing the tightly coupling 

 - I Interface Segregation Principle as each layer has its own interface that contain only primary functions for Implementer classes ,
   so there on unneeded Override for child classes  

 - S Single-Responsibility Principle as each Function for only one job

Most of Functions are Pure Functions doesn't affect out of its scope (takes paramter return result)


