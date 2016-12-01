
<!--- Get Counselor Data --->

    <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="counselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends">

<cfquery dbtype="query" name="CounselorInfo">
   	select firstname,lastname,title,phone,email,social
   	from counselorInfo
   	where counselorCode = 'UKE'
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
  <p> Welcome to Xavier University! If you are looking for a university with an exciting campus life, challenging academics, and a great city, you have found the right place!</p>
  <p> As a graduate of the Class of 2010 and, more recently, the Class of 2013, I am sure that your time at Xavier can be the best, most formative years of your life. You cannot imagine the opportunities you will be afforded with a Xavier education. The personal attention that each student receives in the classroom from professors and the extensive amount of clubs and activities offered to the student body create an amazing campus environment. The Xavier community is diverse, warm and accepting, allowing each student to grow intellectually, morally, and spiritually.</p>
  <p> Xavier&#39;s proximity to downtown Cincinnati, offers students a chance to enjoy various festivals, restaurants and activities. As a large business hub, Cincinnati offers a wide variety of internships and other professional experiences to every Xavier student.</p>
  <p> I am happy to assist you with anything you may need to make your college search a smooth and enjoyable process. Visiting is the best way to discover the &quot;Power of X&quot;, and I would be thrilled to meet you while you are on campus!</p>
</div>
<div class="col-md-12 welcomeMsg">

    <h5>Kevin&#39;s Cincinnati Recommendations </h5>
    <p>
      Favorite Food:&nbsp;<a href="http://elisbarbeque.com/" target="_blank">Eli&#39;s BBQ</a>&nbsp;- 3313 Riverside Dr -&nbsp;<a href="https://www.google.com/maps/preview#!data=!1m4!1m3!1d3881!2d-84.4426739!3d39.117957!4m25!2m11!1m10!1s0x0%3A0xdb7ce9b970bc6c3d!3m8!1m3!1d99030!2d-84.5404014!3d39.1363401!3m2!1i1024!2i768!4f13.1!5m12!1m11!1seli's+bbq+cincinnati!4m8!1m3!1d99030!2d-84.5404014!3d39.1363401!3m2!1i1024!2i768!4f13.1!17b1" target="_blank">Map It</a><br />
      Favorite Spot:&nbsp;<a href="http://washingtonpark.org/" target="_blank">Washington Park</a>&nbsp;- 1230 Elm St -&nbsp;<a href="https://www.google.com/maps/preview#!q=1230+Elm+Street%2C+Cincinnati%2C+OH&amp;data=!4m10!1m9!4m8!1m3!1d124174!2d-84.5404014!3d39.1363401!3m2!1i1280!2i963!4f13.1" target="_blank">Map It</a><br />
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






