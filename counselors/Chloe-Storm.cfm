
<!--- Get Counselor Data --->

    <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="counselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends">

<cfquery dbtype="query" name="CounselorInfo">
   	select firstname,lastname,title,phone,email,social
   	from counselorInfo
   	where counselorCode = 'UCH'
</cfquery>

<!--- TEMPLATE INIT --->
<cfinclude template="/campusuite25/public/templates/initialize.cfm">
<!--- END TEMPLATE INIT --->
<cfif renderContentOnly eq 0>
<!--- PAGE CONFIG --->
<cfoutput>
<cfset pageTitle = "#CounselorInfo.firstname# #CounselorInfo.lastname#">
<cfset pageMetaDescription = "#CounselorInfo.firstname#">
<cfset pageMetaKeywords = "#CounselorInfo.firstname#">
<cfset pageNoFollow = "0">
<cfset pageBodyId = "">
<cfset pageBodyClass = "basic-page">
<cfset pageType = "secondaryPg">
<cfset pageHeadScript = "">

<cfset pageTitle = "#CounselorInfo.firstname# #CounselorInfo.lastname#">
<cfset pageMetaDescription = "#CounselorInfo.firstname#">
<cfset pageMetaKeywords = "#CounselorInfo.firstname#">

 <cfset pageTitle = "#CounselorInfo.firstname# #CounselorInfo.lastname#">
 <cfset pageMetaDescription = "#CounselorInfo.firstname#">
    <cfset pageMetaKeywords = "#CounselorInfo.firstname#">
    <!--- END PAGE CONFIG --->
</cfoutput>


<!--- LAYOUT START --->
<cfinclude template="/campusuite25/public/templates/layout-start.cfm">
<!--- END LAYOUT START --->
</cfif>

<!--- addOffset is a placeholder class to insert an extra class when displaying page on index page --->

<style>
.counselor { float: none;
display: block;
margin: 0 auto;
 }		

.counselorText { text-align: center;}


@media only screen and (min-width :480px) 
{

.counselorText { text-align: left; } 

.counselor { float: right;
display: block;


	
	}
}	

</style>



<!---
 <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="CounselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends"> 
--->

<cftry> 

<cfsavecontent variable="counselorOutput">

<cfoutput query="counselorInfo">

<div class="col-md-8 addOffset" style="padding-bottom: 15px;">
	<div class="row">
		<div class="col-md-5 col-md-push-7 ">
			<img alt="#firstName# #lastName#" class="img-responsive counselor " src="/undergraduate-admission/images/counselors/#Trim(firstName)##lastName#.jpg" width="160" style="padding-top: 10px;" />
		</div>

<div class="col-md-7 col-md-pull-5 " >

		<h3>#firstname# #lastname#</h3>
		<p>#title#<br />
			Phone: #phone#<br />
			Email:&nbsp;<a href="mailto:#email#">#email#</a><br />
			<cfif #social# is not "">Twitter:&nbsp;<a href="https://twitter.com/#social#">@#social#</a><br /></cfif>
</div>

</div>
</div>
</cfoutput>

</cfsavecontent>


<cfcatch>
    <cfmail from="mcmulleng@xavier.edu" to="#errorMailList#" subject="Undergrad Counselor Error Page " type="html">
	  IP:#listGetAt(structFind(GetHttpRequestData().headers,'X-forwarded-for'),1)#
      <cfdump var="#cfcatch#" label="Catch">
      <cfdump var="#variables#" label="Variables">
      <cfdump var="#session#" label="Session">
      <cfdump var="#application#" label="Application">
      <cfdump var="#form#" label="Form">
      <cfdump var="#cgi#" label="CGI">
    </cfmail>
  </cfcatch>



</cftry> 


<!--- PAGE CONTENT ---> 
<!-- csEditable pageContent --><cfoutput>#counselorOutput#</cfoutput>


<div class='welcomeMsg col-md-12'>
<p>I am so happy to see that you are considering Xavier University! As a 2016 graduate, I can proudly say that the Xavier community is full of incredible people ready to help you grow and develop. With an undergraduate population of around 4,600, you truly get the experience of both a close-knit community, while still having the resources of a larger university. A really awesome part about Xavier is our Jesuit tradition, where we focus on a principle called, "cura personalis" which means the care of the whole person. So while you are here, you are learning more than just how to succeed in your field, you are also learning how to be well-rounded individuals ready to go forth and set the world on fire!</p>

<p>The journey of finding the right college is an exciting time, but it can also be overwhelming, my job is to help eliminate some of that stress, so please don't hesitate to reach out to me with any questions. I hope to see you on campus!</p>

</div>
<div class="col-md-12 welcomeMsg">

    <h5>Chloe's Cincinnati Recommendations</h5>
    <p>
      Favorite Restaurant: <a href="http://www.echo-hydepark.com/" target="_blank">The Echo Restaurant</a>&nbsp;- 3510 Edwards Rd -&nbsp;<a href="https://www.google.com/maps/preview#!q=The+Echo+Restaurant%2C+Edwards+Road%2C+Cincinnati%2C+OH&amp;data=!4m11!1m10!2i7!4m8!1m3!1d124174!2d-84.5404014!3d39.1363401!3m2!1i1280!2i963!4f13.1" target="_blank">Map It</a><br />
      Favorite Spot:&nbsp;<a href="http://www.cincinnatiparks.com/eden-park" target="_blank">Smale Riverfront Park</a>&nbsp;- 100 Ted Berry Way -&nbsp;<a href="https://www.google.com/maps/place/Smale+Riverfront+Park/@39.0949305,-84.5114922,15z/data=!4m5!3m4!1s0x0:0x37362a33872320c!8m2!3d39.0949305!4d-84.5114922" target="_blank">Map It</a><br />
      Favorite Event:&nbsp;<a href="http://cincinnati.reds.mlb.com/index.jsp?c_id=cin" target="_blank">XavierFest</a>&nbsp;- 100 Joe Nuxhall Way -&nbsp;<a href="http://www.xavier.edu/student-involvement/campus-events/XavierFest.cfm" target="_blank">Event Link</a><br />
    </p>

</div>



<!-- csEndEditable pageContent --> 
<!--- END PAGE CONTENT ---> 

<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
  <cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END ---> 






