<!--- 
File: login/index.cfm
Purpose: Holds the login form 
By: Joelle Torneros
Created: 2/22/2016

Usage: usage

Modification Log:
Date            Action
==========================================

--->

<cfmodule template="../includes/header.cfm" pagetitle="Authenticate!">

<!--- Invoke Login Method in components/Login.cfc --->
<cfif isDefined("form.btnSubmit")>
  <cfif application.cfc.login.Login(form.username, form.password)>
    <cflocation url="../index.cfm">
  <cfelse>
    Authentication failed - Please Try Again!
  </cfif>
</cfif>

<cfform preservedata = true>
  <label for="username">User name:</label>
  <cfinput type="text"
  name="username"
  required="true"
  message="You must enter a user name"
  validateat="onSubmit, onServer">
  </cfinput>
  <br />
  <label for="password">Password:</label>
  <cfinput type="password"
  name="password"
  required="true"
  message="You must enter a password"
  validateat="onSubmit, onServer">
  </cfinput>
  <br />
  <cfinput type="submit"
  name="btnSubmit"
  value="Authenticate!"
  validate="submitonce">
  </cfinput>
</cfform>
