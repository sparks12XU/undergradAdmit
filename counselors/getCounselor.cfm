<cftry><cfparam name="url.code" default="PA"><cfparam name="url.schoolCode" default=""><cfif isdefined('form.mobileState') >	<cfset url.code="#form.mobileState#"> </cfif><cfif url.code is not '' ><cffile action="append" addnewline="yes" file="#expandPath("/undergraduate-admission/documents/stats")#/counselorStateLog.txt"  output="#dateTimeFormat(now(),'short')#,#listGetAt(structFind(GetHttpRequestData().headers,'X-forwarded-for'),1)#,#url.code#,#url.schoolCode#" > </cfif><cfswitch expression="#url.code#">      <!---  cities --->        <cfcase value="CIN">		<cfset arg1="/undergraduate-admission/counselors/cities/cincinnati.cfm">        <cfset url.state ="OH">        <cfset statename="Cincinnati">	</cfcase>        <cfcase value="CLE">		<cfset arg1="/undergraduate-admission/counselors/cities/cleveland.cfm">        <cfset url.state ="OH">        <cfset statename="Cleveland">	</cfcase>	<!---  states --->		<cfcase value="OH">		<cfset arg1="/undergraduate-admission/counselors/states/ohio.cfm">        <cfset statename="Ohio">	</cfcase>        <cfcase value="IN">    	<cfset arg1="/undergraduate-admission/counselors/states/indiana.cfm">	</cfcase>         <cfcase value="KY">     	<cfset arg1="/undergraduate-admission/counselors/states/kentucky.cfm">	</cfcase>        <cfcase value="PA">         <cfset arg1="/undergraduate-admission/counselors/states/pennsylvania.cfm">    </cfcase>          <cfcase value="NY">    	<cfset arg1="/undergraduate-admission/counselors/states/new-York.cfm">    </cfcase>         <cfcase value="IL">     <cfset arg1="/undergraduate-admission/counselors/states/Illinois.cfm">    </cfcase>     <!---  counselors --->           <cfcase value="GA,UBG">       <cfset arg1="/undergraduate-admission/counselors/Brian-Gipson.cfm">   </cfcase>      <cfcase value="CT,DE,ME,MA,NH,NJ,RI,VT,UJC">  	   <cfset arg1="/undergraduate-admission/counselors/jason-cloutier.cfm">   </cfcase>       <cfcase value="WI,UJN">  		  <cfset arg1="/undergraduate-admission/counselors/julie-nelson.cfm">   </cfcase>       <cfcase value="MO,MN,KS,IA,NB,ND,SD,UJA">  		  <cfset arg1="/undergraduate-admission/counselors/Jack-Evans.cfm">   </cfcase>      <cfcase value="USB">  	    <cfset arg1="/undergraduate-admission/counselors/Sarah-Barchick.cfm">   </cfcase>      	<cfcase value="OR,WA,UDD">     	<cfset arg1="/undergraduate-admission/counselors/David-Donnelly.cfm">    </cfcase>       <cfcase value="DC,VA,MD,NM,AZ,UEA">       <cfset arg1="/undergraduate-admission/counselors/Emily-Augustin.cfm">   </cfcase>      <cfcase value="TX,UER">  	  <cfset arg1="/undergraduate-admission/counselors/Erica-Krasienko.cfm">   </cfcase>       <cfcase value="UEH">  	    <cfset arg1="/undergraduate-admission/counselors/Evan-Herbert.cfm">   	</cfcase>     	 <cfcase value="TN,CA,CO,HI,ID,MT,NV,OK,AK,UT,WY,UTT">   	 	 <cfset arg1="/undergraduate-admission/counselors/Tyler-Tucky.cfm">   	</cfcase>      <cfcase value="MI,UTW">  	  <cfset arg1="/undergraduate-admission/counselors/Tim-Wilmes.cfm">   </cfcase>     	<cfcase value="UCH">  	  <cfset arg1="/undergraduate-admission/counselors/Chloe-Storm.cfm">   </cfcase>     <cfcase value="AL,AR,FL,LA,MS,NC,SC,UMG">  	    <cfset arg1="/undergraduate-admission/counselors/Michael-Garcia.cfm">   </cfcase>       <cfcase value="WV,UCJ">  	    <cfset arg1="/undergraduate-admission/counselors/Chris-Jordan.cfm">   </cfcase>     <!---    default counselor --->      <cfdefaultcase>           	    <cfset arg1="/undergraduate-admission/counselors/lauren-cobble.cfm">    </cfdefaultcase>    </cfswitch>  <cfinclude template="/campusuite25/global-components/syndication/get-xml.cfm">    	   <div class="col-md-8 col-sm-offset-2 mapreset">                      <cfif isDefined('url.state') and url.state is not "undefined" >                     <cfoutput>           <a href="javascript:{}" onclick="showCounselor('desktop', '#url.state#') ;" class="button counselor"> <i class="fa fa-arrow-left"></i> Go Back To Map</a> 		  </cfoutput>                    <cfelse>           				<a href="javascript:{}" onclick="resetChoice('desktop');" class="button counselor"> <i class="fa fa-arrow-left"></i> Go Back To Map</a> 			</div>                     </cfif>             	   <div class="col-md-8 col-sm-offset-2 mapresetMobile text-center">                      <cfif isDefined('url.state') and url.state is not "undefined" >                     <cfoutput> <a href="javascript:{}" onclick="showCounselor('mobile', '#url.state#') ;" class="button counselor"> <i class="fa fa-arrow-left"></i> Go Back To Map</a> </cfoutput>                    <cfelse>                      				<a href="javascript:{}" onclick="resetChoice('mobile');" class="button counselor"><i class="fa fa-arrow-left"></i> Go Back To Map</a>                             </cfif>                   			</div>            <cfcatch><cfabort> </cfcatch></cftry>