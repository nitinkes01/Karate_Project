
Feature: Fizz Buzz feature

    Background: Define URI
        * url 'http://localhost:8080/fizzbuzz/'   
     


    Scenario Outline: fizz buzz scenario
        Given path <number>
        When method Get
        Then status 200
        * print response
        * assert response == '<output>'
     
   Examples: 
        | read('inputData.csv') |
 

 @negative
   Scenario: alphabet input
        Given path 'xyz'
        When method Get
        Then status 400
        * print response
        * def expected_error = 'Bad Request'
        * assert response.error == expected_error
























