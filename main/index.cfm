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

<cfset pagetitle = "Welcome to ProposalManager">

<cfinclude  template="includes/header.cfm">
  <!-- Inside Main Div -->
  <cfoutput>
    Let's Test It! Your random password is:
    #generatePassword(10)#
  </cfoutput>
<cfinclude  template="includes/footer.cfm">