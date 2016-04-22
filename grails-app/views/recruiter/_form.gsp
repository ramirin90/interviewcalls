<%@ page import="interviewcalls.Recruiter" %>



<div class="fieldcontain ${hasErrors(bean: recruiterInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="recruiter.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="30" required="" value="${recruiterInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruiterInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="recruiter.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" maxlength="30" required="" value="${recruiterInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruiterInstance, field: 'mail', 'error')} ">
	<label for="mail">
		<g:message code="recruiter.mail.label" default="Mail" />
		
	</label>
	<g:field type="email" name="mail" maxlength="30" value="${recruiterInstance?.mail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruiterInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="recruiter.address.label" default="Address" />
		
	</label>
	<g:textField name="address" maxlength="30" value="${recruiterInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruiterInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="recruiter.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="30" required="" value="${recruiterInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruiterInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="recruiter.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" maxlength="30" required="" value="${recruiterInstance?.password}"/>

</div>

