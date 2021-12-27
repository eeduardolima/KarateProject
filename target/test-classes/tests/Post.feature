Feature: Post API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read('response1.json')

  # Simple Post Request
  Scenario: Post Demo 1
    Given url 'https://reqres.in/api/users'
    And request {"name": "Eduardo","job": "QA Analyst"}
    When method POST
    Then status 201
    And print response

  # Simple Post Request
  Scenario: Post Demo 2
    Given path '/users'
    And request {"name": "Eduardo","job": "QA Analyst"}
    When method POST
    Then status 201
    And print response
    
	# Post with response assertion
	# Utilização do #string e #ignore
  Scenario: Post Demo 3
    Given path '/users'
    And request {"name": "Eduardo","job": "QA Analyst"}
    When method POST
    Then status 201
    And print response 
    And match response == {"name": "Eduardo", "job": "QA Analyst", "id": "#string", "createdAt": "#ignore"}
       
  # Post with read response from file
  Scenario: Post Demo 4
    Given path '/users'
    And request {"name": "Eduardo","job": "QA Analyst"}
    When method POST
    Then status 201
    And print response
    And match response == expectedOutput
    And match $ == expectedOutput
    
  # Post with read request body from file
  Scenario: Post Demo 5
    Given path '/users'
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filePath = projectPath + '/src/test/java/data/request2.json'
    And print filePath
    And def requestBody = filePath
    And request requestBody
    When method POST
    Then status 201
    And print response
    
  # Read body data from file and change request values
  Scenario: Post Demo 6
    Given path '/users'
    And def reqBody = read('request1.json')
    And set reqBody.job = 'Engineer' 
    And request reqBody
    When method POST
    Then status 201
    And print response

   