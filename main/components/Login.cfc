<!--- 
File: Login.cfc
Purpose: Components for Login & Authorization
By: Joelle Torneros
Created: 2/22/2016

Usage: usage

Modification Log:
Date            Action
==========================================

--->

<cfcomponent hint="User Auth" extends="Base" output="false">
  <cffunction name="Login" access="public" hint="Authenticate User"
    returntype="boolean">
      <cfargument name="username" type="string" required="true">
      <cfargument name="password" type="string" required="true">
      <cflogin>
        <cfloginuser name="#arguments.username#"
          password="#arguments.password#"
          roles="superadmin">
          </cfloginuser>
      </cflogin>
    </cffunction>
</cfcomponent>