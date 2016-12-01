
<!--- Get Counselor Data --->

    <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="counselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends">

<cfquery dbtype="query" name="CounselorInfo">
   	select firstname,lastname,title,phone,email,social
   	from counselorInfo
   	where counselorCode = 'UDD'
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
<p>&nbsp;</p>

<div class="welcomeMsg col-md-12">
<p>Let me be the first to welcome you to Xavier University! I hope this is a place that you can one day call your home away from home.</p>

<p>I know the search for the right college can seem overwhelming, but I am here to assist you in any way to help make the college search process an easy and enjoyable one for you and your family.</p>

<p>As a 2011 graduate, I can truly attest to what an amazing place Xavier really is. Being a Jesuit institution, Xavier is a place that has a wide range of opportunities - from service trips, to study abroad, to student government and of course athletics - for its diverse student body! Throughout your time here at Xavier you will meet some of your best friends, and have some great experiences - both in and out of the classroom - that will help prepare you for life after graduation.</p>

<p>Xavier&#39;s location in Cincinnati offers students a wide range of opportunities to see what Cincinnati can offer - from internships to the festivals and restaurants, to Reds and Bengals games, and to the many cultural experiences at the Aronoff Center for the Arts.</p>

<p>Please let me know if you have any questions, and I will be happy to assist you. I am looking forward to working with you and your family throughout the college search process on your way to becoming a member of the Xavier family. I encourage you to visit campus so you can see what the Power of X really means!</p>
</div>

<p>&nbsp;</p>

<div class="col-md-12 welcomeMsg">
<h5>David&#39;s Cincinnati Recommendations</h5>

<p>Favorite Restaurant: <a href="http://www.gordospub.com/norwood/" target="_blank">Gordo&#39;s Pub</a> - 4328 Montgomery Rd - <a href="https://maps.google.com/maps?q=Gordo's+Pub,+cincinnati,+oh&amp;hl=en&amp;fb=1&amp;gl=us&amp;hq=Gordo's+Pub,&amp;hnear=0x884051b1de3821f9:0x69fb7e8be4c09317,Cincinnati,+OH&amp;cid=0,0,17685535415360912479&amp;t=h&amp;z=16&amp;iwloc=A" target="_blank">Map It</a><br />
Favorite Spot: <a href="http://www.findlaymarket.org/" target="_blank">Findlay Market</a> - 1801 Race St - <a href="https://maps.google.com/maps?q=findlay+market,+cincinnati,+oh&amp;hl=en&amp;fb=1&amp;gl=us&amp;hq=findlay+market,+cincinnati,+oh&amp;cid=0,0,7301111581870647871&amp;t=h&amp;z=16&amp;iwloc=A" target="_blank">Map It</a><br />
Favorite Event: <a href="http://www.flyingpigmarathon.com/" target="_blank">Cincinnati Flying Pig Marathon</a></p>
</div>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
<!-- csEndEditable pageContent --> 
<!--- END PAGE CONTENT ---> 

<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
  <cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END ---> 






