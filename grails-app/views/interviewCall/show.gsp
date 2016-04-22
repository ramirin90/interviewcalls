
<%@ page import="interviewcalls.InterviewCall" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'interviewCall.label', default: 'InterviewCall')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-interviewCall" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-interviewCall" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list interviewCall">
			
				<g:if test="${interviewCallInstance?.position}">
				<li class="fieldcontain">
					<span id="position-label" class="property-label"><g:message code="interviewCall.position.label" default="Position" /></span>
					
						<span class="property-value" aria-labelledby="position-label"><g:fieldValue bean="${interviewCallInstance}" field="position"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${interviewCallInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="interviewCall.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${interviewCallInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${interviewCallInstance?.candidate}">
				<li class="fieldcontain">
					<span id="candidate-label" class="property-label"><g:message code="interviewCall.candidate.label" default="Candidate" /></span>
					
						<span class="property-value" aria-labelledby="candidate-label"><g:link controller="candidate" action="show" id="${interviewCallInstance?.candidate?.id}">${interviewCallInstance?.candidate?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${interviewCallInstance?.interviewer}">
				<li class="fieldcontain">
					<span id="interviewer-label" class="property-label"><g:message code="interviewCall.interviewer.label" default="Interviewer" /></span>
					
						<span class="property-value" aria-labelledby="interviewer-label"><g:link controller="interviewer" action="show" id="${interviewCallInstance?.interviewer?.id}">${interviewCallInstance?.interviewer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${interviewCallInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="interviewCall.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${interviewCallInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${interviewCallInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="interviewCall.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${interviewCallInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${interviewCallInstance?.observations}">
				<li class="fieldcontain">
					<span id="observations-label" class="property-label"><g:message code="interviewCall.observations.label" default="Observations" /></span>
					
						<span class="property-value" aria-labelledby="observations-label"><g:fieldValue bean="${interviewCallInstance}" field="observations"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:interviewCallInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${interviewCallInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
