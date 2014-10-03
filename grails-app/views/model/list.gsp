
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
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-model" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'model.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="startingCost" title="${message(code: 'model.startingCost.label', default: 'Starting Cost')}" />
					
						<g:sortableColumn property="imageUrl" title="${message(code: 'model.imageUrl.label', default: 'Image Url')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${modelInstanceList}" status="i" var="modelInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${modelInstance.id}">${fieldValue(bean: modelInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: modelInstance, field: "startingCost")}</td>
						
						<td>${fieldValue(bean: modelInstance, field: "imageUrl")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${modelInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
