
<%@ page import="interviewcalls.Candidate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidate.label', default: 'Candidate')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-candidate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-candidate" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'candidate.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="phone" title="${message(code: 'candidate.phone.label', default: 'Phone')}" />
					
						<g:sortableColumn property="mail" title="${message(code: 'candidate.mail.label', default: 'Mail')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'candidate.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="skills" title="${message(code: 'candidate.skills.label', default: 'Skills')}" />
					
						<g:sortableColumn property="area" title="${message(code: 'candidate.area.label', default: 'Area')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${candidateInstanceList}" status="i" var="candidateInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${candidateInstance.id}">${fieldValue(bean: candidateInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: candidateInstance, field: "phone")}</td>
					
						<td>${fieldValue(bean: candidateInstance, field: "mail")}</td>
					
						<td>${fieldValue(bean: candidateInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: candidateInstance, field: "skills")}</td>
					
						<td>${fieldValue(bean: candidateInstance, field: "area")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${candidateInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
