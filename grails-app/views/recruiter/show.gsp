
<%@ page import="interviewcalls.Recruiter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recruiter.label', default: 'Recruiter')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-recruiter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-recruiter" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list recruiter">
			
				<g:if test="${recruiterInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="recruiter.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${recruiterInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruiterInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="recruiter.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${recruiterInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruiterInstance?.mail}">
				<li class="fieldcontain">
					<span id="mail-label" class="property-label"><g:message code="recruiter.mail.label" default="Mail" /></span>
					
						<span class="property-value" aria-labelledby="mail-label"><g:fieldValue bean="${recruiterInstance}" field="mail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruiterInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="recruiter.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${recruiterInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruiterInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="recruiter.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${recruiterInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruiterInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="recruiter.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${recruiterInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:recruiterInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${recruiterInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
