
<!--- Get Counselor Data --->

    <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="counselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends">

<cfquery dbtype="query" name="CounselorInfo">
   	select firstname,lastname,title,phone,email,social
   	from counselorInfo
   	where counselorCode = 'UEH'
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
  <p> Welcome to Xavier University, a place that you may very soon call your second home! If you are looking for a college experience that offers academic excellence, passionate professors that provide personalized attention, and an incredibly high spirited student body then you are looking at the right place!</p>
  <p> As a 2013 graduate, I have personally experienced the amazing opportunities that Xavier University has to offer you. I can tell you, the opportunities are endless! With professors that place a personal stake in not only your academic success, but your success as an individual, you can accomplish anything. With the amount of clubs and organizations that Xavier University has to offer, there is something for everyone! Whether that be a member of the Student Government Association, club baseball, or one of our improvisation groups, Xavier encourages you to participate and get involved! So allow yourself to experience the culture of Xavier University and you will soon see how talented, energetic, and incredibly welcoming this community is!</p>
  <p> Cincinnati is an amazing city to live in! With the number of festivals, concerts, restaurants, and community activities you will always have something to do. You will be able to create connections and opportunities that you will forever remember and will allow you to succeed in life!</p>
  <p> As you continue your college search, please contact me with any questions or concerns that you may have. I am looking forward to seeing you on campus so that you can experience the true &quot;Power of X!&quot; Your journey to becoming a member of our Xavier family begins here and I am excited to meet you!</p>
</div>
<div class="col-md-12 welcomeMsg">
 
    <h5>Evan&#39;s Cincinnati Recommendations</h5>
    <p>
      Favorite Food:&nbsp;<a href="http://arthurscincinnati.com" target="_blank">Arthur&#39;s</a>&nbsp;- 3516 Edwards Rd -&nbsp;<a href="https://www.google.com/maps/preview#!q=3516+Edwards+Road%2C+Cincinnati%2C+OH&amp;data=!4m10!1m9!4m8!1m3!1d124174!2d-84.5404014!3d39.1363401!3m2!1i1280!2i963!4f13.1" target="_blank">Map It</a><br />
      Favorite Neighborhood:&nbsp;<a href="http://www.hydeparksquare.org/" target="_blank">Hyde Park</a><br />
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






