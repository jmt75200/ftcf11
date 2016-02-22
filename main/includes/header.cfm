<!--- 
File: header.cfm
Purpose: Navigation Control
By: Joelle Torneros
Created: 02/16/2016

Usage: Invoke at the top of a CFM by using <cfinclude>

Modification Log:
Date            Action
==========================================

--->
<cfif isDefined("attributes.pagetitle")>
  <cfset variables.pagetitle = attributes.pagetitle>
</cfif>
<cfparam name="pagetitle" default="Proposal Manager">
<cfset nav = [
  {
    label= "Log Out",
    url= "login/logout.cfm",
    roles = "admin"
  },
  {
    label= "Companies",
    url= "admin/companies.cfm",
    roles= "admin"
  },
  {
    label= "Add Asset",
    url= "admin/asset.cfm",
    roles= ""
  },
  {
    label= "Home",
    url= "index.cfm",
    roles= ""
  }
]>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title> 
    <!--- Dynamic title --->
    <cfif isDefined("variables.pagetitle")>
      <cfoutput>#variables.pagetitle#</cfoutput>
    </cfif>
  </title>
  <cfoutput>
    <link rel="stylesheet" type="text/css" href="#application.cssHref#Application.css" />
  </cfoutput>
</head>
<body>
  <header>
    <h1>Proposal Manager</h1>
    <nav>
      <cfoutput>
        <cfloop array="#variables.nav#" index="thisLink">
          <a href="#application.basehref##thisLink.url#">#thisLink.label#</a>
        </cfloop>
      </cfoutput>
    </nav>
  </header>
  <!--- App Goes Here --->
  <main>
    <cfif isdefined("variables.pagetitle")>
      <cfoutput><h2>#variables.pagetitle#</h2></cfoutput>
    </cfif>