<%@ page import="teslaV2.ModelSpec" %>



<div class="fieldcontain ${hasErrors(bean: modelSpecInstance, field: 'additionalCost', 'error')} ">
	<label for="additionalCost">
		<g:message code="modelSpec.additionalCost.label" default="Additional Cost" />
		
	</label>
	<g:textField name="additionalCost" value="${modelSpecInstance?.additionalCost}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: modelSpecInstance, field: 'distanceRange', 'error')} ">
	<label for="distanceRange">
		<g:message code="modelSpec.distanceRange.label" default="Distance Range" />
		
	</label>
	<g:textField name="distanceRange" value="${modelSpecInstance?.distanceRange}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: modelSpecInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="modelSpec.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${modelSpecInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: modelSpecInstance, field: 'powerOutlet', 'error')} ">
	<label for="powerOutlet">
		<g:message code="modelSpec.powerOutlet.label" default="Power Outlet" />
		
	</label>
	<g:textField name="powerOutlet" value="${modelSpecInstance?.powerOutlet}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: modelSpecInstance, field: 'trimLevel', 'error')} ">
	<label for="trimLevel">
		<g:message code="modelSpec.trimLevel.label" default="Trim Level" />
		
	</label>
	<g:textField name="trimLevel" value="${modelSpecInstance?.trimLevel}"/>
</div>

