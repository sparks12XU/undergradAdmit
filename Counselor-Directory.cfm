<!--- TEMPLATE INIT --->
<cfinclude template="/campusuite25/public/templates/initialize.cfm">
<!--- END TEMPLATE INIT --->
<cfif renderContentOnly eq 0>
<!--- PAGE CONFIG --->
<cfset pageTitle = "Counselor Directory">
<cfset pageMetaDescription = "">
<cfset pageMetaKeywords = "">
<cfset pageNoFollow = "0">
<cfset pageBodyId = "">
<cfset pageBodyClass = "basic-page">
<cfset pageType = "secondaryPg">
<cfset pageHeadScript = "">
<!--- END PAGE CONFIG --->

<!--- LAYOUT START --->
<cfinclude template="/campusuite25/public/templates/layout-start.cfm">
<!--- END LAYOUT START --->
</cfif>

<style>
p { margin:0; font-size:1.4rem; line-height:2.1rem; padding-bottom:20px;}
.counselorPic { width:155px;}


    @media only screen and (min-width : 480px)  {
  .counselorPic { width:145px;}
    }


</style>

<cftry>

  <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="CounselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends"> 
    
<!---     <cfdump var="#counselorInfo#"> --->
    
<!---     <cfset counselorInfo.sort(counselorInfo.findColumn("lastName"),TRUE)> --->
    


<cfsavecontent variable="counselorList">

<cfoutput query="counselorInfo">
	 	
<div class="col-md-3 col-sm-6 col-xs-6"><img alt="#firstName# #lastName# #title#" class="img-responsive center" src="/undergraduate-admission/images/counselors/#Trim(firstName)##lastName#.jpg" style="width: 165px;" /></div>

<div class="col-md-3 col-sm-6 col-xs-6">
<p><strong>#firstName# #lastName#</strong><br />
#title#<br />
#phone#<br />
<a href="mailto:#email#">#email#</a><br />
<cfif #social# is not ""><a href="https://twitter.com/#social#">@#social#</a><br /></cfif>
<a href="/undergraduate-admission/counselors/#firstName#-#lastName#.cfm">Welcome message from #firstName#</a></p>
<br>
</div>
    <cfif (counselorInfo.CurrentRow MOD 2) is 0 >
	   <div class="clearfix">&nbsp;</div>  
    </cfif>	    
 
 </cfoutput> 

</cfsavecontent> 


 <cfcatch type="any"> 
 
 	<cfmail to="sparkse1@xavier.edu" from="sparkse1@xavier.edu" subject="counselor page error" type="html"><cfdump var="#cfcatch#"></cfmail> 
 
 	<cfabort>
 </cfcatch>

</cftry>


<!--- PAGE CONTENT ---> 
<!-- csEditable pageContent --><div class="row"><cfoutput>#counselorList#</cfoutput></div>

<h2>Systems and Operations Staff</h2>

<div class="row">
<div class="col-md-4">
<p><strong>Kelly Akers</strong><br />
Operations Staff<br />
513-745-3271<br />
<a href="javascript:void(location.href='mailto:'+String.fromCharCode(97,107,101,114,115,107,64,120,97,118,105,101,114,46,101,100,117)+'?')">akersk@xavier.edu</a></p>
</div>

<div class="col-md-4">
<p><strong>Kelly Pokrywka&nbsp;</strong><br />
Executive Director, Enrollment Management&nbsp;<br />
513-745-3608<br />
<a href="javascript:void(location.href='mailto:'+String.fromCharCode(112,111,107,114,121,119,107,97,107,64,120,97,118,105,101,114,46,101,100,117))">pokrywkak@xavier.edu</a></p>
</div>

<div class="col-md-4">
<p><strong>Robbie Kessler</strong><br />
Enrollment Systems Specialist<br />
513-745-2874<br />
<a href="javascript:void(location.href='mailto:'+String.fromCharCode(107,101,115,115,108,101,114,114,64,120,97,118,105,101,114,46,101,100,117))">kesslerr@xavier.edu</a></p>
</div>

<div class="col-md-4">
<p><strong>Patti LaCortiglia</strong><br />
Operations Staff<br />
513-745-3370<br />
<a href="http://lacortiglia@xavier.edu">lacortiglia@xavier.edu</a></p>
</div>

<div class="col-md-4">
<p><strong>Julie Mazza</strong><br />
Operations Staff<br />
513-745-4296<br />
<a href="mailto:mazzaj@xavier.edu">mazzaj@xavier.edu</a></p>
</div>

<div class="col-md-4">
<p><strong>Shelagh Stautberg</strong><br />
Operations Staff<br />
513-745-3273<br />
<a href="javascript:void(location.href='mailto:'+String.fromCharCode(115,116,97,117,116,98,101,114,103,115,64,120,97,118,105,101,114,46,101,100,117)+'?')">stautbergs@xavier.edu</a></p>

<p>&nbsp;</p>
</div>

<div class="col-md-12">
<h2>Office Support</h2>

<p><strong>Board of Ambassadors</strong><br />
Student Recruitment Directors<br />
513-745-2949</p>
</div>
<!---
<h2>Student Enrollment</h2>

<div class="row">
<div class="col-md-3 col-sm-5 col-xs-12"><img alt="Terry Richards" class="img-responsive center " src="images/counselors/terryrichards.jpg" /></div>

<div class="col-md-5">
<p><strong>Terry Richards</strong><br />
Vice President of Student Enrollment<br />
513-745-2984<br />
<a href="mailto:richardst1@xavier.edu">richardst1@xavier.edu</a></p>
</div>

<div class="col-md-4  col-sm-4">
<p><strong>Pati Haney</strong><br />
Administrative Assistant<br />
513-745-3721<br />
<a href="mailto:haney@xavier.edu">haney@xavier.edu</a></p>
</div>
</div>

<h2>Reporting Areas:</h2>

<div class="col-md-12">
<p><a href="http://www.xavier.edu/undergraduate-admission/" target="_blank">Office of Undergraduate Admission</a><br />
<a href="http://www.xavier.edu/financial-aid/" target="_blank">Office of Financial Aid</a></p>
---></div>
<!-- csEndEditable pageContent --> 
<!--- END PAGE CONTENT ---> 

<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
  <cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END ---> 


















