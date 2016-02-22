<!--- 
File: Login.cfc
Purpose: Holds Component Functions for Login & Authorization
By: Joelle Torneros
Created: 2/22/2016

Usage: usage

Modification Log:
Date            Action
==========================================

--->

<cfcomponent hint="User Auth" extends="Base" output="false">

  <!--- Function to authenticate and give roles to user --->
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
    <!--- Checks if user is authenticated --->
    <cfif getAuthUser() is "">
      <cfreturn false>
    <cfelse>
      <cfreturn true>
    </cfif>
  </cffunction>

  <!--- Function to logout user --->
  <cffunction name="logout" access="public"
    hint="Log out user" returntype="boolean"
    roles="superadmin,admin,user">
    <cflogout></cflogout>
  </cffunction>
</cfcomponent>