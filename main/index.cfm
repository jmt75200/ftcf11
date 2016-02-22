<!---
File   : index.cfm
Purpose: Endpoint for application
By     : Joelle Torneros
Created: 04/17/2015

Usage:
Direct invocation

Modification Log:
Date        Action
=============================================
02/18/2016  Created
--->
<cfinclude template="includes/functions.cfm">

<cfset pagetitle = "Welcome to Proposal Manager">

<cfinclude  template="includes/header.cfm">
  <!-- Inside Main Div -->
  <h1>Aloha
    <cfif getAuthUser() is not "">
      <cfoutput>, #getAuthUser()#</cfoutput>
    </cfif>!
  </h1>
<cfinclude  template="includes/footer.cfm">



<!-- Let's Test It! Your random password is:
    #generatePassword(10)# -->