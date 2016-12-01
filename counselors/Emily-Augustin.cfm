
<!--- Get Counselor Data --->

    <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="counselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends">

<cfquery dbtype="query" name="CounselorInfo">
   	select firstname,lastname,title,phone,email,social
   	from counselorInfo
   	where counselorCode = 'UEA'
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
  <p> Welcome to Xavier University, a place that has been my home for the past four years.&nbsp; As a graduate of the Class of 2013 I got to experience firsthand the amazing community that Xavier has to offer! If you are looking for a University that offers academic excellence, a spirited student body, and great athletic programs, Xavier is the place for you.</p>
  <p class="MsoNormal"> I was provided with some of the most amazing opportunities during my time here at Xavier, and so will you! You will have opportunities to be a leader by getting involved in any of our various clubs and organizations. You will be challenged by your professors in your classes as well as outside of them, as your professors want to see you grow not only academically, but also personally. You will find that everyone here at Xavier wants you to succeed and they will go above and beyond to help you reach your goals. </p>
  <p class="MsoNormal"> Cincinnati is a city that I am proud to call my home. &nbsp;There are so many great things that happen in this city every day. From music festivals to professional sporting events to fortune 1000 companies, Cincinnati has something for everyone.</p>
  <p class="MsoNormal"> As you go through your college search process, please contact me with any questions or concerns you may have. The best way to experience Xavier is to visit campus, and I would love to meet with you when you are here. You are on your Road to Xavier and I can&#39;t wait to help you navigate it!&nbsp; </p>
</div>
<div class="col-md-12 welcomeMsg">
  
    <h5>Emily&#39;s Cincinnati Recommendations</h5>
    <p>
      Favorite Restaurant: <a href="http://www.downtowncincinnati.com/exploring-downtown/establishment/the-eagle-otr---now-open" target="_blank">The Eagle</a>&nbsp;1342 Vine St - <a href="https://www.google.com/maps/place/1342+Vine+St,+Cincinnati,+OH+45202/@39.1107421,-84.5152642,17z/data=!3m1!4b1!4m2!3m1!1s0x8841b3fdba0af357:0xe676dcf219f094d6" target="_blank">Map It</a><br />
      Favorite Spot: The <a href="http://4.bp.blogspot.com/-3Dmiee8R6Wg/T9K5eJynKLI/AAAAAAAAAgY/zal4ndBkgfk/s1600/DSC_4608.JPG" target="_blank">view</a>&nbsp;near <a href="http://www.thecelestial.com/">The Celestial Restaurant</a><a href="http://www.thecelestial.com/" target="_blank">&nbsp;</a>1071 Celestial St - <a href="https://www.google.com/maps/place/1071+Celestial+St,+Cincinnati,+OH+45202/@39.1066125,-84.499884,17z/data=!3m1!4b1!4m2!3m1!1s0x8841b1601508bec7:0x5d63791ad2b97b4a" target="_blank">Map It</a><br />
      Favorite Event: <a href="http://www.oktoberfestzinzinnati.com/" target="_blank">Oktoberfest Zinzinnati!</a><br />
    </p>

</div>


<!-- csEndEditable pageContent --> 
<!--- END PAGE CONTENT ---> 

<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
  <cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END ---> 






