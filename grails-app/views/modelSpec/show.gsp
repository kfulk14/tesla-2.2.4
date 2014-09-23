
<%@ page import="teslaV2.ModelSpec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'modelSpec.label', default: 'ModelSpec')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-modelSpec" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-modelSpec" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list modelSpec">
			
				<g:if test="${modelSpecInstance?.additionalCost}">
				<li class="fieldcontain">
					<span id="additionalCost-label" class="property-label"><g:message code="modelSpec.additionalCost.label" default="Additional Cost" /></span>
					
						<span class="property-value" aria-labelledby="additionalCost-label"><g:fieldValue bean="${modelSpecInstance}" field="additionalCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${modelSpecInstance?.distanceRange}">
				<li class="fieldcontain">
					<span id="distanceRange-label" class="property-label"><g:message code="modelSpec.distanceRange.label" default="Distance Range" /></span>
					
						<span class="property-value" aria-labelledby="distanceRange-label"><g:fieldValue bean="${modelSpecInstance}" field="distanceRange"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${modelSpecInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="modelSpec.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${modelSpecInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${modelSpecInstance?.powerOutlet}">
				<li class="fieldcontain">
					<span id="powerOutlet-label" class="property-label"><g:message code="modelSpec.powerOutlet.label" default="Power Outlet" /></span>
					
						<span class="property-value" aria-labelledby="powerOutlet-label"><g:fieldValue bean="${modelSpecInstance}" field="powerOutlet"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${modelSpecInstance?.trimLevel}">
				<li class="fieldcontain">
					<span id="trimLevel-label" class="property-label"><g:message code="modelSpec.trimLevel.label" default="Trim Level" /></span>
					
						<span class="property-value" aria-labelledby="trimLevel-label"><g:fieldValue bean="${modelSpecInstance}" field="trimLevel"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${modelSpecInstance?.id}" />
					<g:link class="edit" action="edit" id="${modelSpecInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
