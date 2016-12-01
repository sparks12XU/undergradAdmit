
<!--- Get Counselor Data --->

    <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="counselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends">

<cfquery dbtype="query" name="CounselorInfo">
   	select firstname,lastname,title,phone,email,social
   	from counselorInfo
   	where counselorCode = 'USB'
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
		<p>#title# #lastName#<br />
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


<div class="welcomeMsg col-md-12">
	<p>
		I am so glad you are interested in learning more about Xavier University! As you pursue your college search, I am sure you will discover (if you have not already) that there are a variety of options as you look for a university that will be the best fit for you. Amongst all of these choices, Xavier University offers a strong liberal arts curriculum within the context of a Jesuit education, which will allow you the opportunity to not only study, gain experience, and be successful in your area of interest but also to explore other academic areas, develop critical thinking, writing, and communication skills.<br />
		<br />
		As a graduate of a Jesuit institution, I have personally come to understand what it means to be men and women for others, which is a key component of the student experience here at Xavier University. The focus upon service will allow you to engage in discussion about social justice issues and involvement in community service outreach to the Cincinnati community and world. As a part of Xavier&rsquo;s Jesuit heritage, we embrace a diverse campus which understands that learning is an ongoing process and provides our students the resources and opportunities to build personal relationships with professors and mentors in order to succeed. I hope that as you continue to explore your interest in Xavier, that you will contact me with any questions you may have regarding the university or admission process. I hope to hear from you soon!</p>
</div>
<div class="col-md-12 welcomeMsg">
	<h5 class="text-center">Sarah&#39;s Cincinnati Recommendations</h5>
	<p>
		Favorite Food:&nbsp;<a href="http://www.wildgingercincy.com/" target="_blank">Wild Ginger Asian Bistro</a>&nbsp;- 3655 Edwards Rd -&nbsp;<a href="https://www.google.com/maps?q=Wild+Ginger,+Edwards+Road,+Cincinnati,+OH&amp;hl=en&amp;sll=39.13634,-84.540401&amp;sspn=0.459626,0.617294&amp;oq=Wild+G&amp;hq=Wild+Ginger,&amp;hnear=Edwards+Rd,+Cincinnati,+Ohio&amp;t=m&amp;z=16" target="_blank">Map It</a><br />
		Favorite Spot:&nbsp;<a href="http://www.cincinnatiparks.com/eden-park" target="_blank">Eden Park</a>&nbsp;- 1501 Eden Park Dr -&nbsp;<a href="https://maps.google.com/maps?q=Eden+Park,+Eden+Park+Drive,+Cincinnati,+OH&amp;hl=en&amp;sll=39.10876,-84.514797&amp;sspn=0.007185,0.009645&amp;oq=Eden+Park&amp;hq=Eden+Park,+Eden+Park+Drive,+Cincinnati,+OH&amp;t=m&amp;z=16" target="_blank">Map It</a><br />
		Favorite Cultural Event: <a href="http://www.historicgreatercincinnati.org/" target="_blank">Museums of Cincinnati</a></p>
</div>



<!-- csEndEditable pageContent --> 
<!--- END PAGE CONTENT ---> 

<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
  <cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END ---> 






