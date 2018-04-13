# Earthquake-Monitoring

Bluewolf Coding Assignment
==========================
This project is to plot earthquakes by taking input city/location name and also for displaying top 10 earthquakes.

Created a site with own domain name.

Instance hosted on a developer edition of Salesforce : https://my--demo-developer-edition.na3.force.com/earthquakes/

Project Files
------------
1. Visualforce page 
2. Apex Controller
3. Test Class for the Apex controller
4. Mock test class for the test class
5. Technical Specification Document

Requirements
------------
Apex Controller
----------------
Created a Apex controller and this controller has 2 methods which call the GeoNames webservice 
a. getgoogleResponse() - This method takes 2 paramters latitude and longitude and returns a string response. 
b. getTopTenEarthquakes() - This moethod does not take any parameters and returns a string response.
Both methods are annotated with @RemoteAction as Javascripts needs to be notified that these are available for Visualforce remoting.

Visualforce page
----------------
Created a visualforce page with a text field to take the input as city/location.

Methods Created in Visualforce page
-----------------------------------
1. Method to get and plot earthquakes for city.
2. Method to get a list of Top Ten Earthquakes.
3. Method to create an ordered list of Top Ten earthquakes.
4. Method to get coordinates for entered location/city.
5. Method to get a list of earthquakes for a specific location by calling an Apex method.
6. Method to create markers for all eqrthquakes returned for specific location.

TestClass for Apex Controller
-----------------------------
The reason for writing is 
At least 75% of your Apex code must be covered by unit tests, and all of those tests must complete successfully.
When deploying Apex to a production organization, each unit test in your organization namespace is executed by default.

MockTestClass
-------------
The reason for writing mock test class is when we use the webservices we cannot call them in the test class directly. So we need write an additional mock test class for the test class.

Author
----- 
ajithk2528@gmail.com
