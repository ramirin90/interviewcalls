<%@ page import="interviewcalls.Interviewer" %>



<div class="fieldcontain ${hasErrors(bean: interviewerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="interviewer.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="30" required="" value="${interviewerInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interviewerInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="interviewer.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" maxlength="30" required="" value="${interviewerInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interviewerInstance, field: 'mail', 'error')} ">
	<label for="mail">
		<g:message code="interviewer.mail.label" default="Mail" />
		
	</label>
	<g:field type="email" name="mail" maxlength="30" value="${interviewerInstance?.mail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interviewerInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="interviewer.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" maxlength="30" required="" value="${interviewerInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interviewerInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="interviewer.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="area" from="${interviewerInstance.constraints.area.inList}" required="" value="${interviewerInstance?.area}" valueMessagePrefix="interviewer.area"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interviewerInstance, field: 'availability', 'error')} required">
	<label for="availability">
		<g:message code="interviewer.availability.label" default="Availability" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="availability" required="" value="${interviewerInstance?.availability}"/>

</div>

