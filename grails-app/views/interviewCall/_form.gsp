<%@ page import="interviewcalls.InterviewCall" %>



<div class="fieldcontain ${hasErrors(bean: interviewCallInstance, field: 'position', 'error')} required">
	<label for="position">
		<g:message code="interviewCall.position.label" default="Position" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="position" maxlength="30" required="" value="${interviewCallInstance?.position}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interviewCallInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="interviewCall.description.label" default="Description" />
		
	</label>
	<g:textField name="description" maxlength="30" value="${interviewCallInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interviewCallInstance, field: 'candidate', 'error')} required">
	<label for="candidate">
		<g:message code="interviewCall.candidate.label" default="Candidate" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="candidate" name="candidate.id" from="${interviewcalls.Candidate.list()}" optionKey="id" required="" value="${interviewCallInstance?.candidate?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interviewCallInstance, field: 'interviewer', 'error')} required">
	<label for="interviewer">
		<g:message code="interviewCall.interviewer.label" default="Interviewer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="interviewer" name="interviewer.id" from="${interviewcalls.Interviewer.list()}" optionKey="id" required="" value="${interviewCallInstance?.interviewer?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interviewCallInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="interviewCall.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${interviewCallInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: interviewCallInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="interviewCall.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${interviewCallInstance.constraints.status.inList}" required="" value="${interviewCallInstance?.status}" valueMessagePrefix="interviewCall.status"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interviewCallInstance, field: 'observations', 'error')} ">
	<label for="observations">
		<g:message code="interviewCall.observations.label" default="Observations" />
		
	</label>
	<g:textField name="observations" maxlength="30" value="${interviewCallInstance?.observations}"/>

</div>

