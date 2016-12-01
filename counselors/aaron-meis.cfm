
<!--- Get Counselor Data --->

    <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="counselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends">

<cfquery dbtype="query" name="CounselorInfo">
   	select firstname,lastname,title,phone,email,social
   	from counselorInfo
   	where counselorCode = 'UAM'
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
  <p>As a product of a Jesuit university, I believe strongly in the value and power of a Xavier education.The opportunities and experiences that our students are able to be a part of are unlike those at any other institution in the US &nbsp;- perhaps the world. Students at Xavier are interested in being serious students, but they are also interested in being involved in many things: study abroad, internships, faculty-mentored research and service to our community. They are also interested in being a part of a vibrant campus environment where they will have fun and make friends that they will have for the rest of their lives - and in one of the best cities in America: Cincinnati. What really sets Xavier apart from other colleges and universities is that our students don&#39;t just develop skills and knowledge that prepare them for their careers, but they develop values that prepare them for the rest of their lives.</p>
</div>
<div class="col-md-12 welcomeMsg">
  <h5>Aaron&#39;s Cincinnati Recommendations</h5>
  <p>
			Favorite Spot:&nbsp;<a href="http://www.cincymuseum.org/" target="_blank">Cincinnati Museum Center</a>&nbsp;- 1301 Western Ave -&nbsp;<a href="https://www.google.com/maps?q=Cincinnati+Museum+Center:+Union+Terminal,+Western+Avenue,+Cincinnati,+OH&amp;hl=en&amp;sll=39.13634,-84.540401&amp;sspn=0.459626,0.617294&amp;oq=Cincinnati+M&amp;hq=Cincinnati+Museum+Center:+Union+Terminal,+Western+Avenue,+Cincinnati,+OH&amp;t=m&amp;z=15" target="_blank">Map It</a><br />
			Favorite Neighborhood:&nbsp;</font><a href="http://www.otrgateway.com/" target="_blank">OTR Gateway District</a><font color="#333333" size="2">&nbsp;</font></li>
			Favorite Event:&nbsp;<a href="http://www.goxavier.com/sports/m-baskbl/xavi-m-baskbl-body.html" target="_blank">Xavier Basketball</a>&nbsp;- 1624 Herald Ave -&nbsp;<a href="https://www.google.com/maps?q=1624+Herald+Avenue,+Cincinnati,+OH&amp;hl=en&amp;sll=39.128799,-84.444466&amp;sspn=0.229839,0.308647&amp;oq=1624+Hera&amp;hnear=1624+Herald+Ave,+Cincinnati,+Ohio+45207&amp;t=m&amp;z=17" target="_blank">Map It</a><br />
	</p>
</div>


<!-- csEndEditable pageContent --> 
<!--- END PAGE CONTENT ---> 

<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
  <cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END ---> 






