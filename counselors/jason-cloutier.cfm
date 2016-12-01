
<!--- Get Counselor Data --->

    <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="counselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends">

<cfquery dbtype="query" name="CounselorInfo">
   	select firstname,lastname,title,phone,email,social
   	from counselorInfo
   	where counselorCode = 'UJC'
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
  <p>Good Day! Welcome to Xavier University! As your Admissions Representative covering a good majority of the East Coast, I am very excited to work with you and helping to facilitate the transition into Xavier University. With the many college choices that you have availed yourself of, XU is a great choice for a variety of reasons. The truly outstanding Professors that instruct our classes will allow you to have tremendous personal attention from every member of the faculty. The staff of the university truly cares about you and your wellbeing. We want to see you succeed in your endeavors. And lastly, the Jesuit Education is deeply rooted in its tradition, of Men and Women for Others. Xavier is a University that educates the entire person. Welcome to Xavier University in wonderful Cincinnati, Ohio!</p>
</div>
<div class="col-md-12 welcomeMsg">
    <h5>Jason&#39;s Cincinnati Recommendations</h5>
    <p>
      Favorite Ice Cream:&nbsp;<a href="http://www.graeters.com/" target="_blank">Graeter&#39;s Ice Cream</a>&nbsp;- 2704 Erie Ave -&nbsp;<a href="https://www.google.com/maps?q=Graeter's:+Hyde+Park+Square,+Erie+Avenue,+Cincinnati,+OH&amp;hl=en&amp;sll=39.108024,-84.518019&amp;sspn=0.007185,0.009645&amp;oq=Graet&amp;hq=Graeter's:&amp;hnear=Hyde+Park+Square,+2643+Erie+Ave,+Cincinnati,+Ohio+45208&amp;t=m&amp;z=12" target="_blank">Map It</a><br />
      Favorite Cultural Event:&nbsp;<a href="http://www.freedomcenter.org/" target="_blank">National Underground Railroad Freedom Center&nbsp;</a>- 50 East Freedom Way -&nbsp;<a href="https://www.google.com/maps?q=National+Underground+Railroad+Freedom+Center,+East+Freedom+Way,+Cincinnati,+OH&amp;hl=en&amp;sll=39.097135,-84.506468&amp;sspn=0.007186,0.009645&amp;oq=National+UN&amp;hq=National+Underground+Railroad+Freedom+Center,+East+Freedom+Way,+Cincinnati,+OH&amp;t=m&amp;z=15" target="_blank">Map It</a><br />
      Favorite Event:&nbsp;<a href="http://cincinnati.reds.mlb.com/index.jsp?c_id=cin" target="_blank">Cincinnati Reds Baseball</a>&nbsp;- 100 Joe Nuxhall Way - <a href="https://www.google.com/maps?q=Great+American+Ball+Park,+Joe+Nuxhall+Way,+Cincinnati,+OH&amp;hl=en&amp;sll=39.128799,-84.444466&amp;sspn=0.229839,0.308647&amp;oq=Great+American+Ba&amp;hq=Great+American+Ball+Park,+Joe+Nuxhall+Way,+Cincinnati,+OH&amp;t=m&amp;z=17" target="_blank">Map It</a><br />
    </p>
</div>


<!-- csEndEditable pageContent --> 
<!--- END PAGE CONTENT ---> 

<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
  <cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END ---> 






