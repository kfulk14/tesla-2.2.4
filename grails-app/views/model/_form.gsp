<%@ page import="teslaV2.Model" %>



<div class="fieldcontain ${hasErrors(bean: modelInstance, field: 'modelSpecs', 'error')} ">
	<label for="modelSpecs">
		<g:message code="model.modelSpecs.label" default="Model Spec" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${modelInstance?.modelSpecs?}" var="m">
    <li><g:link controller="modelSpec" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="modelSpec" action="create" params="['model.id': modelInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'modelSpecs.label', default: 'ModelSpec')])}</g:link>
</li>
</ul>

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

<div class="fieldcontain ${hasErrors(bean: modelInstance, field: 'imageUrl', 'error')} ">
	<label for="imageUrl">
		<g:message code="model.imageUrl.label" default="Image" />
		
	</label>
	<g:textField name="Image" value="${modelInstance?.imageUrl}"/>
</div>


