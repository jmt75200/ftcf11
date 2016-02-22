<!--- 
File: Application.cfc
Purpose: Controls the functions for main app.
By: Joelle Torneros
Created: 2/18/2016

Usage: usage

Modification Log:
Date            Action
==========================================

--->

<cfcomponent output="false">
  <cfset this.name = "ProposalManager">
  <cfset this.datasource = "proposalmanager">
  <cfset this.sessionManagement = true>
  <cfset this.clientManagement = false>

  <!--- Defines base and css Href for entire application --->
  <cffunction name="onApplicationStart">
    <!--- Defines common paths --->
    <cfset application.cfcpath = "/ftcf11/main/components/">
    <cfset application.baseHref = "/ftcf11/main/">
    <cfset application.cssHref = "/ftcf11/shared/css/">
    <cfset application.cfc = {
      login = createObject("component", "#application.cfcpath#Login")
    }>
    <cfreturn true>
  </cffunction>

  <!--- Defines Request Start Event Handler --->
  <cffunction name="onRequestStart">
    <cfargument name="targetpage"
      required="true" type="string">
    <cfif isDefined("url.init")>
      <cfset onApplicationStart()>
    </cfif>
    <!--- Restricts access to admin folder. User must be logged in. --->
    <cfif getAuthUser() is "" and arguments.targetpage contains "/admin">
      <cflocation url="#application.basehref#login/index.cfm">
    </cfif>
  </cffunction>
</cfcomponent>