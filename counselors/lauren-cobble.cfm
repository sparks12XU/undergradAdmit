
<!--- Get Counselor Data --->

    <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="counselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends">

<cfquery dbtype="query" name="CounselorInfo">
   	select firstname,lastname,title,phone,email,social
   	from counselorInfo
   	where counselorCode = 'ULC'
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
		<p>#title# <br />
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
  <p> As your Xavier University admission counselor, I am happy to see that you are considering this outstanding university among your college choices. You have landed in the right spot if you are looking for personal attention, dedicated faculty, a strong sense of community and tons of school spirit in your college experience. Xavier can offer you unforgettable opportunities&#39; whether it be doing ground-breaking research with your professors or taking part in mission trips with your fellow students half way around the world. Xavier is a diverse place where you will be challenged, encouraged and supported while discovering yourself through serving others. Your college experience will be a very significant time in your life, so you want to make the most of it. If there is anything I can do to assist in the process, please let me know and I am happy to help.</p>
  <p> We want to see you at Xavier University, so please come and visit! We welcome you to see for yourself the &quot;Power of X.&quot; I hope to see you on campus soon!</p>
</div>
<div class="col-md-12 welcomeMsg">

   <h5>Lauren&#39;s Cincinnati Recommendations</h5>
      <p>
        Favorite View of Cincinnati: <a href="http://www.flickr.com/photos/chrisirmo/488050846/" target="_blank">Devou Park</a> - 790 Park Lane (Covington, KY) - <a href="http://maps.google.com/maps?f=q&amp;hl=en&amp;geocode=&amp;q=790+Park+Lane+Covington+Kentucky&amp;sll=37.0625,-95.677068&amp;sspn=50.910968,79.101563&amp;ie=UTF8&amp;ll=39.082056,-84.528251&amp;spn=0.008062,0.019312&amp;z=16&amp;iwloc=A" target="_blank">Map It</a><br />
        Favorite Food: <a href="http://www.skylinechili.com/" target="_blank">Skyline Chili</a> - 4588 Montgomery Road - <a href="http://maps.google.com/maps?f=q&amp;hl=en&amp;geocode=&amp;q=4588+Montgomery+Road+Cincinnati+OH&amp;sll=37.0625,-95.677068&amp;sspn=48.956293,79.101563&amp;ie=UTF8&amp;ll=39.161363,-84.456325&amp;spn=0.008053,0.019312&amp;z=16&amp;iwloc=A" target="_blank">Map It</a><br />
        Favorite Event: <a href="http://www.flyingpigmarathon.com/" target="_blank">Cincinnati Flying Pig Marathon</a><br />
      </p>

  </div>


<!-- csEndEditable pageContent --> 
<!--- END PAGE CONTENT ---> 

<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
  <cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END ---> 






