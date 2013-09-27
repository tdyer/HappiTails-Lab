# HappiTails

###Type:
- Group Homework/Lab

###Time Required:
- 4/5 hours
- overnight

###Prerequisites:
- Ruby
  - Objects/Classes
  - Initializer
  - Accessors
  - gets.chomp
  - Multi-file projects ('require')

###Objectives:
- Practice creating objects

###Activity:
- You should work on this lab in groups

###Explanation
- You are the manager at HappiTails animal shelter. You need to manage your
shelter by storing and manipulating information about clients and animals.
- Consider having the students make git commits as they finish each phase, so
they can see the history

###Specification:
#####Object Specs:
- Animal:
	- An animal should have a name.
	- An animal should have an age.
	- An animal should have a gender.
	- An animal should have a species.
	- An animal can have multiple toys.

- Client:
	- A client should have a name.
	- A client should have a number of children.
	- A client should have an age.
	- A client should have a number of pets.
  - A client should have a hash of pets (with pet names as keys and animal (object) as values)
  - A client should be able to adopt a pet from the shelter
  - A client should be able to return a pet to the shelter

- Shelter:
	- The shelter should be able to return all the clients.
	- The shelter should be able to return all the animals.
  - The shelter should be able to create a new animal
  - The shelter should be able to create a new client
  - The shelter should be able to accept an existing pet from a client

- Relationships:
	- A client should be able to adopt an animal.
	- A client should be able to put an animal up for adoption

#####Phase 1
- Devine classes 

#####Phase 2
- New animals and clients can be added to the shelter

#####Phase 3
- Use pry to test out the functions you
  have written and ensure that your expectations are validated

#####Extra 
- Add a text-interface that
  prompts user for input and PASSES the input information to 
  the functions they have written. This lab should stress purely
  functional programming, and if an interface is created, input
  and output should not be mixed in with the class functions.

###Post-mortem:
- What worked?




