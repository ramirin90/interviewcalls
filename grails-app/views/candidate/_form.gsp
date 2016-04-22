<%@ page import="interviewcalls.Candidate" %>



<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="candidate.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="30" required="" value="${candidateInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="candidate.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" maxlength="30" required="" value="${candidateInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'mail', 'error')} ">
	<label for="mail">
		<g:message code="candidate.mail.label" default="Mail" />
		
	</label>
	<g:field type="email" name="mail" maxlength="30" value="${candidateInstance?.mail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="candidate.address.label" default="Address" />
		
	</label>
	<g:textField name="address" maxlength="30" value="${candidateInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'skills', 'error')} ">
	<label for="skills">
		<g:message code="candidate.skills.label" default="Skills" />
		
	</label>
	<g:textField name="skills" maxlength="30" value="${candidateInstance?.skills}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="candidate.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="area" from="${candidateInstance.constraints.area.inList}" required="" value="${candidateInstance?.area}" valueMessagePrefix="candidate.area"/>

</div>

