
<%@ page import="interviewcalls.Interviewer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'interviewer.label', default: 'Interviewer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-interviewer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-interviewer" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'interviewer.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="phone" title="${message(code: 'interviewer.phone.label', default: 'Phone')}" />
					
						<g:sortableColumn property="mail" title="${message(code: 'interviewer.mail.label', default: 'Mail')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'interviewer.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="area" title="${message(code: 'interviewer.area.label', default: 'Area')}" />
					
						<g:sortableColumn property="availability" title="${message(code: 'interviewer.availability.label', default: 'Availability')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${interviewerInstanceList}" status="i" var="interviewerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${interviewerInstance.id}">${fieldValue(bean: interviewerInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: interviewerInstance, field: "phone")}</td>
					
						<td>${fieldValue(bean: interviewerInstance, field: "mail")}</td>
					
						<td>${fieldValue(bean: interviewerInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: interviewerInstance, field: "area")}</td>
					
						<td>${fieldValue(bean: interviewerInstance, field: "availability")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${interviewerInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
