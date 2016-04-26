<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${assetPath(src: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${assetPath(src: 'apple-touch-icon-retina.png')}">
<asset:stylesheet src="application.css" />
<asset:javascript src="application.js" />
<g:layoutHead />
<style>
div.menu ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

div.menu li {
	float: left;
}

div.menu li a {
	display: inline-block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

div.menu li a:hover {
	background-color: #111;
}
</style>
</head>
<body>
	<div id="grailsLogo" role="banner">
		<a href="http://grails.org"><asset:image src="interviewCalls.png"
				alt="Grails" /></a>
	</div>
	<%--		<div id="menu">--%>
	<%--			<nav:render/>--%>
	<%--    	</div>--%>
<%--	<div class="menu">--%>
<%--		<ul>--%>
<%--			<li><g:link uri="/">Home</g:link></li>--%>
<%--			<li><g:link controller="interviewCall" action="index">Interview Calls</g:link></li>--%>
<%--			<li><g:link controller="interviewer" action="index">Interviewers</g:link></li>--%>
<%--			<li><g:link controller="candidate" action="index">Candidates</g:link></li>--%>
<%--		</ul>--%>
<%--	</div>--%>
<div id='cssmenu'>
<ul>
   <li class='active'><g:link uri="/">Home</g:link></li>
   <li class='has-sub'><g:link controller="interviewCall" action="index">Interview Calls</g:link>
      <ul>
         <li><g:link controller="interviewCall" action="index">All Interview Calls</g:link></li>
         <li><g:link controller="interviewCall" action="create">New Interview Calls</g:link></li>
         <li><g:link controller="interviewCall" action="search">Search for Interview Calls</g:link></li>
      </ul>  
   </li>
   <li class='has-sub'><g:link controller="interviewer" action="index">Interviewers</g:link>
      <ul>
         <li><g:link controller="interviewer" action="index">All Interviewers</g:link></li>
         <li><g:link controller="interviewer" action="create">New Interviewer</g:link></li>
         <li><g:link controller="interviewer" action="search">Search for Interviewers</g:link></li>
      </ul> 
   </li>
   <li class='has-sub'><g:link controller="candidate" action="index">Candidates</g:link>
    <ul>
         <li><g:link controller="candidate" action="index">All</g:link></li>
         <li><g:link controller="candidate" action="create">New</g:link></li>
         <li><g:link controller="candidate" action="search">Search</g:link></li>
     </ul> 
   </li>
   <li class='has-sub'><g:link controller="recruiter" action="index">Recruiters</g:link>
    <ul>
         <li><g:link controller="recruiter" action="index">All</g:link></li>
         <li><g:link controller="recruiter" action="create">New</g:link></li>
         <li><g:link controller="recruiter" action="search">Search</g:link></li>
     </ul> 
   </li>
<%--   <li><g:link controller="recruiter" action="contact">Contact</g:link></li>--%>
   <li><g:link controller="recruiter" action="login">Login</g:link></li>
<%--   <li class='last'><a href='#'><span>Contact</span></a></li>--%>
</ul>
</div>
	<g:loginToggle />
	<g:layoutBody />
	<div class="footer" role="contentinfo"></div>
	<div id="spinner" class="spinner" style="display: none;">
		<g:message code="spinner.alt" default="Loading&hellip;" />
	</div>
</body>
</html>
