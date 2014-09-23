
<%@ page import="teslaV2.Model" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'model.label', default: 'Model')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-model" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link controller="model" action="create">New Model</g:link></li>
				<li><g:link controller="ModelSpec" action="create">New SPEC</g:link></li>
			</ul>
		</div>
		<!--  DISPLAYS ALL MODELS CREATED -->	
		<div id="list-model" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="model.modelSpecs.label" default="Model Specs" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'model.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="startingCost" title="${message(code: 'model.startingCost.label', default: 'Starting Cost')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${modelInstanceList}" status="i" var="modelInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link controller="model" action="show" id="${modelInstance.id}">${fieldValue(bean: modelInstance, field: "modelSpecs")}</g:link></td>
					
						<td>${fieldValue(bean: modelInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: modelInstance, field: "startingCost")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${modelInstanceTotal}" />
			</div>
		</div>
		
		<!-- DOISPLAYS ALL DIFFERNT MODEL SPECS -->
		<div id="list-modelSpec" class="content scaffold-list" role="main">
			<h1>Spec List</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="id" title="${message(code: 'modelSpec.id.label', default: 'ID')}" />
					
						<g:sortableColumn property="additionalCost" title="${message(code: 'modelSpec.additionalCost.label', default: 'Additional Cost')}" />
					
						<g:sortableColumn property="distanceRange" title="${message(code: 'modelSpec.distanceRange.label', default: 'Distance Range')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'modelSpec.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="powerOutlet" title="${message(code: 'modelSpec.powerOutlet.label', default: 'Power Outlet')}" />
					
						<g:sortableColumn property="trimLevel" title="${message(code: 'modelSpec.trimLevel.label', default: 'Trim Level')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${modelSpecInstanceList}" status="i" var="modelSpecInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td>${fieldValue(bean: modelSpecInstance, field: "id")}</td>
						
						<td><g:link controller="ModelSpec", action="show" id="${modelSpecInstance.id}">${fieldValue(bean: modelSpecInstance, field: "additionalCost")}</g:link></td>
					
						<td>${fieldValue(bean: modelSpecInstance, field: "distanceRange")}</td>
					
						<td>${fieldValue(bean: modelSpecInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: modelSpecInstance, field: "powerOutlet")}</td>
					
						<td>${fieldValue(bean: modelSpecInstance, field: "trimLevel")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
		
		
		
		
		
	</body>
</html>
