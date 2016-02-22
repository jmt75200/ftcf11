<cfset variables.x = "4">
<cfset variables.y = "1">
<cfset variables.z = variables.x & variables.y>
<cfset variables.z++>

<cfset variables.firstname = "Joelle">
<cfset variables.lastname = "Torneros">
<cfset variables.fullname = "#variables.firstname# #variables.lastname#">

<cfsavecontent variable = "bio">
  <cfoutput>
    <h2>About Me</h2>
    <p>This is the story of #variables.fullname#</p>
  </cfoutput>
</cfsavecontent>

<html>
  <head><title>Walkthrough 3-1</title></head>
  <body>
    <cfoutput>
      <h1>#variables.fullname#</h1>
      <p>What is the answer to life and everything?</p>
      <ul>
        <li>x = #variables.x#</li>
        <li>y = #variables.y#</li>
        <li>The answer is #variables.z#</li>
      </ul>
      #variables.bio#
    </cfoutput>
  </body>
</html>
