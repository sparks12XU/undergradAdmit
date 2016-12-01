
<cflocation  url="/undergraduate-admission/counselor-directory.cfm" addToken="no"> 

<!--- Get Counselor Data --->

    <cfspreadsheet action="read" src="#expandPath('/')#undergraduate-admission\counselors\documents\counselorData.xls" query="counselorInfo"  columnnames = "counselorCode,firstname,lastname,title,phone,email,social,message,recomends">

<cfquery dbtype="query" name="CounselorInfo">
   	select firstname,lastname,title,phone,email,social
   	from counselorInfo
   	where counselorCode = 'UDM'
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
<!-- csEditable pageContent -->

<cfoutput>#counselorOutput#</cfoutput>


<div class='welcomeMsg col-md-12'>
  <p> Welcome to Xavier! As a graduate myself, I can tell you firsthand that Xavier provided me with tremendous opportunities during my unforgettable four years here! You will find here a wonderful community of students, faculty and staff dedicated to your success. You will find fantastic student organizations such as performing arts groups, social justice organizations, and first rate athletic events. You will find that Xavier students have been incredibly blessed and therefore recognize their obligation to support others through community service. You will find that the Power of X will inspire you to bring out the best in yourself!</p>
  <p> Please let me know about any questions or concerns you have, and I look forward to seeing you here on campus!</p>
  <p> &iexcl;Bienvenidos a Xavier! &iexcl;Como graduado, te puedo decir que Xavier me dio oportunidades tremendas durante mis cuatro a&ntilde;os inolvidables aqu&iacute;! Aqu&iacute; encontrar&aacute;s una comunidad maravillosa de estudiantes, profesores y trabajadores dedicados a tu &eacute;xito. Encontrar&aacute;s organizaciones estudiantiles fant&aacute;sitcos como grupos de actores y m&uacute;sicos, las organizaciones de justicia social, y eventos deportivos de primera clase. Descubrir&aacute;s que los estudiantes de Xavier han sido bastante bendecidos y por eso ellos reconocen que tienen una obligaci&oacute;n para apoyar a los dem&aacute;s atrav&eacute;s del servicio comunitario. &iexcl;Descubrir&aacute;s que el Poder de la X te inspirar&aacute; para encontrar lo mejor de ti!</p>
  <p> Por favor cu&eacute;ntame de cualquier pregunta o consulta que tienes, y &iexcl;tengo muchas ganas de verte aqu&iacute; en el campus!</p>
</div>


<div class="col-md-12 welcomeMsg">
  <h5>Dan&#39;s Cincinnati Recommendations</h5>
   <ul>
      <li> Favorite Restaurant:&nbsp;<a href="http://www.moerleinlagerhouse.com/" target="_blank">Moerlein Lager House</a>&nbsp;- 115 Joe Nuxhall Way -&nbsp;<a href="https://www.google.com/maps?q=Moerlein+Lager+House,+Joe+Nuxhall+Way,+Cincinnati,+OH&amp;hl=en&amp;sll=40.365277,-82.669252&amp;sspn=7.222451,9.876709&amp;oq=Moerlein&amp;hq=Moerlein+Lager+House,+Joe+Nuxhall+Way,+Cincinnati,+OH&amp;t=m&amp;z=15" target="_blank">Map It</a></li>
      <li> Favorite Spot:&nbsp;<a href="http://washingtonpark.org/" target="_blank">Washington Park</a>&nbsp;- 1230 Elm St -&nbsp;<a href="https://www.google.com/maps?q=1230+ELM+STREET+CINCINNATI,+OH+45210&amp;hl=en&amp;sll=40.128491,-82.672119&amp;sspn=7.247483,9.876709&amp;hnear=1230+Elm+St,+Cincinnati,+Ohio+45202&amp;t=m&amp;z=17" target="_blank">Map It</a></li>
      <li> Favorite Event:&nbsp;<a href="http://www.flyingpigmarathon.com/" target="_blank">Cincinnati Flying Pig Marathon</a></li>
    </ul>
  </div>


<!-- csEndEditable pageContent --> 
<!--- END PAGE CONTENT ---> 

<!--- LAYOUT END --->
<cfif renderContentOnly eq 0>
  <cfinclude template="/campusuite25/public/templates/layout-end.cfm">
</cfif>
<!--- END LAYOUT END ---> 






