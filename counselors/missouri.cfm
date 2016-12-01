<!--- TEMPLATE INIT --->
<cfinclude template="/campusuite25/public/templates/initialize.cfm">
<!--- END TEMPLATE INIT --->

<cfif renderContentOnly eq 0>   
    <!--- PAGE CONFIG --->
    <cfset pageTitle = "Xavier University - Undergraduate Admission - Meet Your Admission Counselor - Missouri">
    <cfset pageMetaDescription = "missouri">
    <cfset pageMetaKeywords = "missouri">
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
<!-- csEditable pageContent -->
<div class="content-a"> 
 <h1>Admission Staff</h1> 
 <h2>Missouri Schools</h2> 
 <p>Please select the region of Missouri in which your high school is located.</p> 
 <ul class=""> 
  <li><a href="julie-nelson.cfm">Eastern Missouri, including St. Louis</a></li> 
  <li><a href="julie-nelson.cfm">Southern Missouri</a></li> 
  <li><a href="kevin-keller.cfm">Western Missouri, including Kansas City</a></li> 
 </ul> 
</div>
<!-- csEndEditable pageContent -->
<!--- END PAGE CONTENT --->

<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
	<cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END --->

