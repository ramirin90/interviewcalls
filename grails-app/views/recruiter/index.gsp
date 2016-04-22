
<%@ page import="interviewcalls.Recruiter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recruiter.label', default: 'Recruiter')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-recruiter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-recruiter" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'recruiter.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="phone" title="${message(code: 'recruiter.phone.label', default: 'Phone')}" />
					
						<g:sortableColumn property="mail" title="${message(code: 'recruiter.mail.label', default: 'Mail')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'recruiter.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'recruiter.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'recruiter.password.label', default: 'Password')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${recruiterInstanceList}" status="i" var="recruiterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${recruiterInstance.id}">${fieldValue(bean: recruiterInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: recruiterInstance, field: "phone")}</td>
					
						<td>${fieldValue(bean: recruiterInstance, field: "mail")}</td>
					
						<td>${fieldValue(bean: recruiterInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: recruiterInstance, field: "username")}</td>
					
						<td>${fieldValue(bean: recruiterInstance, field: "password")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${recruiterInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
