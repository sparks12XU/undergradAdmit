
<!--- Get Counselor Data --->

    <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="counselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends">

<cfquery dbtype="query" name="CounselorInfo">
   	select firstname,lastname,title,phone,email,social
   	from counselorInfo
   	where counselorCode = 'UJN'
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
  <p> I am thrilled that you are considering Xavier as the place where you&#39;ll spend your next four years. We are committed, as part of our Jesuit heritage, to educating the &quot;total person&quot;. Inside the classroom, you will be challenged, but supported, by our caring faculty and your fellow students. You will have opportunities to give back to the campus community as well as communities throughout Cincinnati and the world. Best of all, you&#39;ll meet people and have experiences that will shape the way you look at yourself and the world you live in. Our students are excited to be at Xavier, and I hope you&#39;ll visit campus soon and feel &quot;the Power of X&quot; for yourself.</p>
  <p> As you go through your college search process, please know I am here to be your guide! Having done college admissions for the more than 20 years, I have answered every question you might have, and some you haven&#39;t thought of yet. Let me know how I can help! I look forward to talking with you soon.</p>
</div>
<div class="col-md-12 welcomeMsg">

    <h5>Julie&#39;s Cincinnati Recommendations</h5>
    <p>
      Favorite Food:&nbsp;<a href="http://www.arthurscincinnati.com/" target="_blank">Arthur&#39;s</a>&nbsp;- 3516 Edwards Rd - <a href="https://maps.google.com/maps?oe=utf-8&amp;client=firefox-a&amp;ie=UTF8&amp;cid=0,0,721350613784621445&amp;fb=1&amp;hq=arthurs&amp;hnear=cincinnati&amp;gl=us&amp;daddr=3516+Edwards+Road,+Cincinnati,+OH+45208-1358&amp;geocode=16148376021826159418,39.139888,-84.443268&amp;ei=7mKtS87QBoH88Aa35NXcCw&amp;ved=0CA0QngIwAA&amp;z=16" target="_blank">Map It</a><br />
      Favorite Spot: <a href="http://www.kenwoodtownecentre.com/" target="_blank">Kenwood Towne Centre</a> - 7875 Montgomery Rd - <a href="https://maps.google.com/maps?q=Kenwood+Towne+Centre,+Montgomery+Road,+Cincinnati,+OH&amp;hl=en&amp;sll=39.13634,-84.540401&amp;sspn=0.459626,0.617294&amp;oq=Kenw&amp;hq=Kenwood+Towne+Centre,+Montgomery+Road,+Cincinnati,+OH&amp;t=m&amp;z=16" target="_blank">Map It</a><br />
      Favorite Event:&nbsp;<a href="http://cincinnati.broadway.com/" target="_blank">Broadway in Cincinnati</a>&nbsp;- 650 Walnut St - <a href="https://maps.google.com/maps?q=Aronoff+Center+for+the+Arts,+Walnut+Street,+Cincinnati,+OH&amp;hl=en&amp;sll=39.2028,-84.376251&amp;sspn=0.01435,0.01929&amp;oq=Aro&amp;hq=Aronoff+Center+for+the+Arts,&amp;hnear=Walnut+St,+Cincinnati,+Ohio&amp;t=m&amp;z=17" target="_blank">Map It</a><br />
    </p>

</div>


<!-- csEndEditable pageContent --> 
<!--- END PAGE CONTENT ---> 

<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
  <cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END ---> 






