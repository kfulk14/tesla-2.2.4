
<%@ page import="teslaV2.ModelSpec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'modelSpec.label', default: 'ModelSpec')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-modelSpec" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-modelSpec" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
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
					
						<td><g:link action="show" id="${modelSpecInstance.id}">${fieldValue(bean: modelSpecInstance, field: "additionalCost")}</g:link></td>
					
						<td>${fieldValue(bean: modelSpecInstance, field: "distanceRange")}</td>
					
						<td>${fieldValue(bean: modelSpecInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: modelSpecInstance, field: "powerOutlet")}</td>
					
						<td>${fieldValue(bean: modelSpecInstance, field: "trimLevel")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${modelSpecInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
