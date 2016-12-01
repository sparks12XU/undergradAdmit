<!--- TEMPLATE INIT --->
<cfinclude template="/campusuite25/public/templates/initialize.cfm">
<!--- END TEMPLATE INIT --->

<cfif renderContentOnly eq 0>   
    <!--- PAGE CONFIG --->
    <cfset pageTitle = "Columbus">
    <cfset pageMetaDescription = "">
    <cfset pageMetaKeywords = "">
    <cfset pageNoFollow = "0">
    <cfset pageBodyId = "">
    <cfset pageBodyClass = "basic-page">
    <cfset pageType = "secondaryPg">
    <cfset pageHeadScript = "">
    <!--- END PAGE CONFIG --->   
    
    <!--- LAYOUT START --->
	<cfinclude template="/campusuite25/public/templates/layout-start.cfm">
    <!--- END LAYOUT START --->
</cfif>

<!--- PAGE CONTENT --->
<!-- csEditable pageContent --><h1>
	Admission Staff</h1>
<h2>
	Columbus High Schools</h2>
<p>
	Please select your high school in the Columbus area.</p>
<p>
	<a href="http://www.xavier.edu/undergraduate-admission/admission-process/counselors/derek-brinkley.cfm">Bishop Hartley</a><br />
	<a href="http://www.xavier.edu/undergraduate-admission/admission-process/counselors/derek-brinkley.cfm">Bishop Ready</a><br />
	<a href="http://www.xavier.edu/undergraduate-admission/admission-process/counselors/derek-brinkley.cfm">Bishop Watterson</a><br />
	<a href="http://www.xavier.edu/undergraduate-admission/admission-process/counselors/derek-brinkley.cfm">Columbus Academy</a><br />
	<a href="http://www.xavier.edu/undergraduate-admission/admission-process/counselors/derek-brinkley.cfm">Columbus School for Girls</a><br />
	<a href="http://www.xavier.edu/undergraduate-admission/admission-process/counselors/derek-brinkley.cfm">Cristo Rey Columbus</a><br />
	<a href="http://www.xavier.edu/undergraduate-admission/admission-process/counselors/derek-brinkley.cfm">St. Charles Preparatory School</a><br />
	<a href="http://www.xavier.edu/undergraduate-admission/admission-process/counselors/derek-brinkley.cfm">St. Francis DeSales</a><br />
	<a href="http://www.xavier.edu/undergraduate-admission/admission-process/counselors/derek-brinkley.cfm">The Wellington School</a></p>
<p>
	For all other Columbus area schools, please <a href="http://www.xavier.edu/undergraduate-admission/admission-process/counselors/Evan-Herbert.cfm">click here for your admission counselor</a>.</p>
<!-- csEndEditable pageContent -->
<!--- END PAGE CONTENT --->

<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
	<cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END --->











