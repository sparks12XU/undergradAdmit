
<!--- Get Counselor Data --->

    <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="counselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends">

<cfquery dbtype="query" name="CounselorInfo">
   	select firstname,lastname,title,phone,email,social
   	from counselorInfo
   	where counselorCode = 'UER'
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
  <p class="MsoNormal"> Welcome to Xavier University, a place you may soon call your home away from home! If you&#39;re looking for a college experience that will provide you with individualized attention from your professors, a passionate student body, and a university with incredible spirit, I think you&#39;ve come to the right place! </p>
  <p class="MsoNormal"> As a 2013 graduate, I am a living example of what a Xavier University education can do for you. The opportunities here are endless! The professors here are not only focused on your success as a student, but also your success as an individual. At Xavier, you won&#39;t just be a number, you&#39;re a Student Government Senator, a member of the Manresa Orientation team, and a member of an intramural soccer team. You will be encouraged to take part in different clubs and organizations to fully immerse yourself in the Xavier culture. You will soon find that the welcoming community at Xavier will allow you to grow in many different ways. </p>
  <p class="MsoNormal"> Cincinnati is an incredible city to be a part of. With the number of surrounding communities, restaurants, festivals and activities, it is impossible to find yourself with nothing to do! Many notable companies are headquartered in Cincinnati, allowing many opportunities for networking and internship experiences. </p>
  <p> As you journey through your college search, please don&#39;t hesitate to contact me with any questions or concerns. I look forward to seeing you on campus to experience the &quot;Power of X&quot; firsthand, and don&#39;t forget to stop by my office to say hi!</p>
</div>
<div class="col-md-12 welcomeMsg">
    <h5>Erica&#39;s Cincinnati Recommendations</h5>
    <p>
      Favorite Restaurant:&nbsp;<a href="http://arthurscincinnati.com" target="_blank">Arthur&#39;s</a>&nbsp;- 3516 Edwards Rd -&nbsp;<a href="https://www.google.com/maps/preview#!q=3516+Edwards+Road%2C+Cincinnati%2C+OH&amp;data=!4m10!1m9!4m8!1m3!1d124174!2d-84.5404014!3d39.1363401!3m2!1i1280!2i963!4f13.1" target="_blank">Map It</a><br />
      Favorite Spot:&nbsp;<a href="http://cincinnatiarts.org/aronoff" target="_blank">Aronoff Center for the Arts</a>&nbsp;- 650 Walnut Street -&nbsp;<a href="https://www.google.com/maps/preview#!q=650+Walnut+Street%2C+Cincinnati%2C+OH&amp;data=!4m10!1m9!4m8!1m3!1d3880!2d-84.442981!3d39.140291!3m2!1i1280!2i963!4f13.1" target="_blank">Map It</a><br />
      Favorite Neighborhood:&nbsp;<a href="http://otrchamber.com/" target="_blank">Over-the-Rhine</a><br />
    </p>
</div>

<!-- csEndEditable pageContent --> 
<!--- END PAGE CONTENT ---> 

<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
  <cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END ---> 






