<%@ page import="teslaV2.Model" %>



<div class="fieldcontain ${hasErrors(bean: modelInstance, field: 'modelSpecs', 'error')} required">
	<label for="modelSpecs">
		<g:message code="model.modelSpecs.label" default="Model Specs" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modelSpecs" name="modelSpecs.id" from="${teslaV2.ModelSpec.list()}" optionKey="id" required="" value="${modelInstance?.modelSpecs?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: modelInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="model.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${modelInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: modelInstance, field: 'startingCost', 'error')} required">
	<label for="startingCost">
		<g:message code="model.startingCost.label" default="Starting Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="startingCost" value="${fieldValue(bean: modelInstance, field: 'startingCost')}" required=""/>
</div>

