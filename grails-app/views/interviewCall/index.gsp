
<%@ page import="interviewcalls.InterviewCall" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'interviewCall.label', default: 'InterviewCall')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-interviewCall" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-interviewCall" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="position" title="${message(code: 'interviewCall.position.label', default: 'Position')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'interviewCall.description.label', default: 'Description')}" />
					
						<th><g:message code="interviewCall.candidate.label" default="Candidate" /></th>
					
						<th><g:message code="interviewCall.interviewer.label" default="Interviewer" /></th>
					
						<g:sortableColumn property="date" title="${message(code: 'interviewCall.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'interviewCall.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${interviewCallInstanceList}" status="i" var="interviewCallInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${interviewCallInstance.id}">${fieldValue(bean: interviewCallInstance, field: "position")}</g:link></td>
					
						<td>${fieldValue(bean: interviewCallInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: interviewCallInstance, field: "candidate")}</td>
					
						<td>${fieldValue(bean: interviewCallInstance, field: "interviewer")}</td>
					
						<td><g:formatDate date="${interviewCallInstance.date}" /></td>
					
						<td>${fieldValue(bean: interviewCallInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${interviewCallInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
