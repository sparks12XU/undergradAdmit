
<!--- Get Counselor Data --->

    <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="counselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends">

<cfquery dbtype="query" name="CounselorInfo">
   	select firstname,lastname,title,phone,email,social
   	from counselorInfo
   	where counselorCode = 'UTW'
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
 
<p>Welcome to Xavier! As a 2014 graduate, I am incredibly lucky to call this university home, and I'm thrilled that you're interested in coming to Xavier! Our strong campus community is a point of pride for us Musketeers, and we love welcoming new students into the Xavier family. From the first time that you step on campus and Move Crew whisks your belongings up to your residence hall to the time you graduate, you'll build lifelong relationships, leave your mark through a leadership opportunity on campus, and develop your academic and professional skills to prepare yourself for life after your undergraduate studies.</p>

<p>There is truly something for every person who comes to Xavier - you get to make your college experience what you want of it, and there is always a resource on campus to help you with where you want to go and what you want to do. Students enjoy our smaller campus and personalized experiences while relishing the "bigger school" feel and resources of our university. This bigger presence also extends to our location five minutes north of downtown Cincinnati. Our students inevitably make a connection with the greater Cincinnati area, whether it be through all of the fun activities that the city has to offer or securing professional relationships with one of our Fortune 500 companies (and often times both). It's easy to feel the large support of our alumni as well, as many of them are eager to come back and mentor our current students or pack the Cintas Center during a Big East basketball game.</p>

<p>
As your Admission Counselor, I'll be your point person to Xavier. If you have any questions about the university or about the admission process, please contact me! It is a true privilege to accompany you during this process, and I'm honored to join our community in saying: Welcome to Xavier! We can't wait for you to join us.</p>

 
 
</div>
<div class="col-md-12 welcomeMsg">
 
    <h5>Tim&#39;s Cincinnati Recommendations</h5>
    <p>
      Favorite Food:&nbsp;<a href="http://www.elisbarbeque.com" target="_blank">Eli's BBQ</a><br />
      Favorite Neighborhood:&nbsp;<a href="http://www.topoftheparkcincinnati.com" target="_blank">Top of The Park</a><br />
	  Favorite Event: <a href="http://www.oktoberfestzinzinnati.com/">Oktoberfest Zinzinnati!</a><br />    
	</p>

</div>


<!-- csEndEditable pageContent --> 
<!--- END PAGE CONTENT ---> 

<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
  <cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END ---> 






