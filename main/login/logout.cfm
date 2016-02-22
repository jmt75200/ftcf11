<!--- 
File: logout.cfm
Purpose: Logs out authenticated users
By: Joelle Torneros
Created: 2/22/2016

Usage: usage

Modification Log:
Date            Action
==========================================

--->

<cfset application.cfc.Login.logout()>

<script type="text/javascript">
  alert("You have been logged out!");
  location.href = "../index.cfm";
</script>