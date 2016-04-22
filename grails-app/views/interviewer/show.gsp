
<%@ page import="interviewcalls.Interviewer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'interviewer.label', default: 'Interviewer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-interviewer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-interviewer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list interviewer">
			
				<g:if test="${interviewerInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="interviewer.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${interviewerInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${interviewerInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="interviewer.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${interviewerInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${interviewerInstance?.mail}">
				<li class="fieldcontain">
					<span id="mail-label" class="property-label"><g:message code="interviewer.mail.label" default="Mail" /></span>
					
						<span class="property-value" aria-labelledby="mail-label"><g:fieldValue bean="${interviewerInstance}" field="mail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${interviewerInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="interviewer.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${interviewerInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${interviewerInstance?.area}">
				<li class="fieldcontain">
					<span id="area-label" class="property-label"><g:message code="interviewer.area.label" default="Area" /></span>
					
						<span class="property-value" aria-labelledby="area-label"><g:fieldValue bean="${interviewerInstance}" field="area"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${interviewerInstance?.availability}">
				<li class="fieldcontain">
					<span id="availability-label" class="property-label"><g:message code="interviewer.availability.label" default="Availability" /></span>
					
						<span class="property-value" aria-labelledby="availability-label"><g:fieldValue bean="${interviewerInstance}" field="availability"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:interviewerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${interviewerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
