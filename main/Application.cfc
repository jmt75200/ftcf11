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
  </cffunction>
</cfcomponent>