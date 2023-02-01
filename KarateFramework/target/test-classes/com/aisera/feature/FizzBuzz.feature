
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
 




























   #Scenario: Create a new article
        #Given path 'articles'
        #And request articleRequestBody
        #When method Post
        #Then status 200
        #And match response.article.title == articleRequestBody.article.title

    #Scenario: Create and delete article
        #Given path 'articles'
        #And request articleRequestBody
        #When method Post
        #Then status 200
        #* def articleId = response.article.slug
#
        #Given params { limit: 10, offset: 0}
        #Given path 'articles'
        #When method Get
        #Then status 200
        #And match response.articles[0].title == articleRequestBody.article.title
#
        #Given path 'articles',articleId
        #When method Delete
        #Then status 204
#
        #Given params { limit: 10, offset: 0}
        #Given path 'articles'
        #When method Get
        #Then status 200
        #And match response.articles[0].title != articleRequestBody.article.title