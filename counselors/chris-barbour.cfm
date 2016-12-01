<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/admissions-oneColumn-wLeftNav.dwt.cfm" codeOutsideHTMLIsLocked="false" -->
<!-- InstanceParam name="class" type="text" value="default" -->
<!-- InstanceParam name="id" type="text" value="base" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!-- InstanceBeginEditable name="META Data - Description and Keywords" -->
<meta name="Description" content="chris barbour" />
<meta name="Keywords" content="chris barbour" />
<!-- InstanceEndEditable -->

<!-- InstanceBeginEditable name="display-banner" -->
<cfset adminDisplayBanner = "Yes">
<cfset adminBannerName = "default.cfm">
<!-- InstanceEndEditable -->

<!-- InstanceBeginEditable name="page-title" --><title>chris barbour</title><!-- InstanceEndEditable -->

<!-- Styles made available to the text editor -->
<!-- <EditorCSS>/Templates/temp-admission/css/base.css</EditorCSS> -->
<link href="/Templates/temp-admission/css/base.css" rel="stylesheet" type="text/css" />

<cfinclude template="/Templates/temp-admission/includes/temp-js.cfm">
<cfinclude template="/Templates/temp-shared/includes/shared-js.cfm">

<!-- InstanceBeginEditable name="head" -->
<!-- Editable area for page sepecifc Code, Includes, CSS, etc. -->
<!-- InstanceEndEditable -->

</head>

<body id="base" <cfif isdefined("session.user_id") AND session.user_id is not "">class="bodyCsPublic"</cfif>>

<cfinclude template="/Templates/temp-shared/includes/analytics/hbx-live-code.cfm">
<!--- XU Analytics Include, Do Not Remove or Modify ---> 

<!--- CAMPUSUITE ADMIN BAR --->
<cfset include_file_csadminbar="/campusuite/public/includes/cs-administration-public-bar.cfm">
<cfinclude template="#include_file_csadminbar#">
<!--- END CAMPUSUITE ADMIN BAR --->


<!--- PAGE WRAPPER BEGINS --->
<div id="wrapper" <cfif session.area is "Page Edit">class="pageEditorFull"</cfif>>

<!--- BRANDING / MAIN(TOP) NAVIGATION --->
<div id="header">
	<cfset include_file_top="/Templates/temp-admission/includes/header.cfm">
	<cfinclude template="#include_file_top#">
</div>
<!--- END BRANDING / MAIN(TOP) NAVIGATION --->

<!--- GLOBAL NAVIGATION --->
	<cfset include_file_globNav="/Templates/temp-admission/includes/global-upper-nav.cfm">
	<cfinclude template="#include_file_globNav#">
<!--- END GLOBAL NAVIGATION --->


<!--- ADMISSIONS TEMPLATE: PAGE BANNER --->
<cfif adminDisplayBanner EQ "Yes">
	<div id="admissionBanner">
	<!--- <cfset include_file_banner="/#currentdirectory#/includes/banners/" & adminBannerName> --->
    <cfset include_file_banner="/Templates/temp-admission/banners/" & adminBannerName>
    <cfif fileExists(expandPath("#include_file_banner#"))>
        <cfinclude template="#include_file_banner#">
    </cfif>
    </div>
<cfelse>
	<div id="admissionBanner-alt"><div id="admissionBanner-altborder"></div></div>
</cfif>
<!--- END ADMISSIONS TEMPLATE: PAGE BANNER --->

<!--- DEPARTMENT SUB NAVIGATION - COMMONLY USED WITHIN ACADEMICS SECTION --->
		<cfset include_file_subdirectory="/Templates/temp-shared/includes/dept-subnav.cfm">
		<cfinclude template="#include_file_subdirectory#">
<!--- END DEPARTMENT SUB NAVIGATION --->


<!--- MAIN CONTENT - DIV ID AND CLASS CAN BE EDITED USING TEMPLATE PROPERTIES --->
<div id="content" class="default">



<!--- Content Left - LeftNav (Secondary navigation) --->
<div id="content-left">
<cfinclude template="#application.leftNavPath#">
<div id="content-nav-fade"></div>
</div>

<!--- End Content Left --->


<!--- Content Right - Main content area - Customized area with Editor Templates --->
<div id="content-right">
<!--- Custom Page header for XU department name --->
	<cfinclude template="/Templates/temp-admission/includes/dept-head.cfm">
<!--- End Custom Header --->
<!-- InstanceBeginEditable name="content-right" -->
<div class="fckContent-ga">
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla a pede. Mauris fringilla semper eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam id erat vel tortor pharetra egestas. Nunc nisl diam, gravida eget, bibendum et, dapibus ut, sapien. Nam justo quam, pellentesque posuere, posuere quis, adipiscing sit amet, metus. Praesent convallis cursus orci. In hac habitasse platea dictumst. Suspendisse auctor. Pellentesque enim. Maecenas condimentum pede eu nisl. Sed nibh eros, semper sit amet, venenatis at, tincidunt a, risus. Donec tincidunt sollicitudin velit.</p>
</div>

<!-- InstanceEndEditable -->
</div>
<!--- End Content Right --->


<div class="clearfloat" ></div>
</div>
<!--- END MAIN CONTENT --->


<!--- FOOTER --->
<div id="footer">
	<cfinclude template="/Templates/temp-admission/includes/footer.cfm">
</div>
<!--- END FOOTER --->

</div>
<!--- END WRAPPER --->

</body>
<!-- InstanceEnd --></html>

