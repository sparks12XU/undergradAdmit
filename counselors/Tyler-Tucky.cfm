
<!--- Get Counselor Data --->

    <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="counselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends">

<cfquery dbtype="query" name="CounselorInfo">
   	select firstname,lastname,title,phone,email,social
   	from counselorInfo
   	where counselorCode = 'UTT'
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
<!-- csEditable pageContent -->

<cfoutput>#counselorOutput#</cfoutput>


<div class='welcomeMsg col-md-12'>
	
<p>	I want to be the first to welcome you to Xavier University! It excites me that your college search process brought you here to the Xavier family. The next four years will not only include incredible memories, new friends, and great adventures; they will also include growth as a person and shape you to be a global citizen. </p>
 
<p>	
Attending a Jesuit university was one of the best decisions I've made, and I can truly say I departed transformed as a person. The professors here are dedicated to the success of our students academically and personally. In the classroom your ability to think critically will be developed, helping you excel in the course as well as in your future career. 
</p>

<p>
While you are going through the college search and decision process I will be happy to answer any question you might have about Xavier University and beyond. One of the best pieces of advice I can offer is for you to visit our campus to see how you would fit in here; and if you can envision yourself at that campus walking around with a backpack to apply. There is a great energy here at Xavier that is electric and transcends all aspects of campus life. Whether that is staying up late studying, supporting the Muskies, exploring Cincinnati or volunteering your time, I am confident you will find your home here at Xavier. 
</p>


	
</div>


<div class="col-md-12 welcomeMsg">
  <h5>Tyler&#39;s Cincinnati Recommendations</h5>
   <ul>
      <li> Favorite Restaurant:&nbsp;<a href="http://www.deweyspizza.com/" target="_blank">Dewey's Pizza</a>&nbsp;- 3014 Madison Rd. -&nbsp;<a href="https://www.google.com/maps/place/Dewey's+Pizza/@39.1511757,-84.436076,17z/data=!3m1!4b1!4m5!3m4!1s0x8841ad7bfe191d23:0xa74b2e9335361e28!8m2!3d39.1511716!4d-84.4338873" target="_blank">Map It</a></li>
      <li> Favorite Spot:&nbsp;<a href="http://www.aultparkac.org" target="_blank">Ault Park</a>&nbsp;- 5090 Observatory Circle -&nbsp;<a href="https://www.google.com/maps/place/Ault+Park/@39.1362759,-84.4128895,17z/data=!3m1!4b1!4m5!3m4!1s0x8841adbb564d2059:0x7434241f8038a0cf!8m2!3d39.1362718!4d-84.4107008" target="_blank">Map It</a></li>
      <li> Favorite Event:&nbsp;<a href="http://www.reds.com/" target="_blank">Reds Opening Day</a></li>
    </ul>
  </div>


<!-- csEndEditable pageContent --> 
<!--- END PAGE CONTENT ---> 
<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
  <cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END ---> 






