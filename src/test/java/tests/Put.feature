Feature: Put API Demo

Background:
	* url 'https://reqres.in/api'

Scenario: Put Demo 1
	Given url 'https://reqres.in/api/users/2'
	And request { "name": "Eduardo", "job": "Software Engineer"}
	When method PUT
	Then status 200
	And print response
	
	
Scenario: Put Demo 2
	Given path '/users/2'
	And request { "name": "Eduardo", "job": "Software Engineer QA"}
	When method PUT
	Then status 200
	And print response	
