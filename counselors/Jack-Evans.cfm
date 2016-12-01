
<!--- Get Counselor Data --->

    <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="counselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends">

<cfquery dbtype="query" name="CounselorInfo">
   	select firstname,lastname,title,phone,email,social
   	from counselorInfo
   	where counselorCode = 'UJA'
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
  <p> Welcome to Xavier University!&nbsp; I am excited to see that your college search has brought you here!&nbsp; Your four years in college are an exciting time, filled with unforgettable memories and life changing experiences.&nbsp; I am here to help you make the right decision and will help in any way I can! </p>
  <p> Having gone to a Jesuit institution myself, I am familiar with the experience offered at Xavier.&nbsp; Our professors are dedicated to educating the whole person, giving guidance on how to deal with life situations in a moral context.&nbsp; Beyond our core curriculum, you will be learning valuable information to shape your future career as well.&nbsp; The knowledge and skills you learn here will carry with you for life. </p>
  <p> I will be happy to answer any questions you may have about Xavier University and the college search process.&nbsp; I encourage you to visit, and see how you will fit in our vibrant campus life!&nbsp; Whether it is studying in our academic buildings, supporting your team in competition, or volunteering your time working in the Cincinnati community, I am sure you will find Xavier to be a great fit for you! </p>
</div>
<div class="col-md-12 welcomeMsg">

    <h5>Jack's Cincinnati Recommendations</h5>
    <p>
      Favorite Restaurant: <a href="http://www.echo-hydepark.com/" target="_blank">The Echo Restaurant</a>&nbsp;- 3510 Edwards Rd -&nbsp;<a href="https://www.google.com/maps/preview#!q=The+Echo+Restaurant%2C+Edwards+Road%2C+Cincinnati%2C+OH&amp;data=!4m11!1m10!2i7!4m8!1m3!1d124174!2d-84.5404014!3d39.1363401!3m2!1i1280!2i963!4f13.1" target="_blank">Map It</a><br />
      Favorite Spot:&nbsp;<a href="http://www.cincinnatiparks.com/eden-park" target="_blank">Eden Park</a>&nbsp;- 1501 Eden Park Dr -&nbsp;<a href="https://maps.google.com/maps?q=Eden+Park,+Eden+Park+Drive,+Cincinnati,+OH&amp;hl=en&amp;sll=39.10876,-84.514797&amp;sspn=0.007185,0.009645&amp;oq=Eden+Park&amp;hq=Eden+Park,+Eden+Park+Drive,+Cincinnati,+OH&amp;t=m&amp;z=16" target="_blank">Map It</a><br />
      Favorite Event:&nbsp;<a href="http://cincinnati.reds.mlb.com/index.jsp?c_id=cin" target="_blank">Cincinnati Reds Baseball</a>&nbsp;- 100 Joe Nuxhall Way -&nbsp;<a href="https://www.google.com/maps?q=Great+American+Ball+Park,+Joe+Nuxhall+Way,+Cincinnati,+OH&amp;hl=en&amp;sll=39.128799,-84.444466&amp;sspn=0.229839,0.308647&amp;oq=Great+American+Ba&amp;hq=Great+American+Ball+Park,+Joe+Nuxhall+Way,+Cincinnati,+OH&amp;t=m&amp;z=17" target="_blank">Map It</a><br />
    </p>

</div>



<!-- csEndEditable pageContent --> 
<!--- END PAGE CONTENT ---> 

<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
  <cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END ---> 






