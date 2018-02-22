#coding: utf-8

Feature: Login

As a Hacker News user
I want to login in the Yahnac app 
So I can see all publications in the app 


 Scenario: The user can login in the app 
 	Given I am in the home screen
 	When I log into the app 
 	Then I should see the login confirmation

 Scenario: The user can't login in the app with wrong credentials
  	Given I am in the home screen
 	When I try log into the app with wrong credentials 
 	Then I should see login error

 Scenario: The user can cancel the login
  	Given I am in the home screen
 	When I navigate to the login screen
 	And I cancel the action 
 	Then I should see the menu content

  Scenario: The user can cancel the login
  	Given I am in the home screen
 	When I navigate to the login screen
 	And I touch for go back 
 	Then I should see the menu content