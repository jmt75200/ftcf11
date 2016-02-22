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