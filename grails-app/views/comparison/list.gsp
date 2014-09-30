
<%@ page import="teslaV2.Comparison" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comparison.label', default: 'Comparison')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-comparison" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-comparison" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="buyerId" title="${message(code: 'comparison.buyerId.label', default: 'Buyer Id')}" />
					
						<g:sortableColumn property="modelId" title="${message(code: 'comparison.modelId.label', default: 'Model Id')}" />
					
						<g:sortableColumn property="specId" title="${message(code: 'comparison.specId.label', default: 'Spec Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${comparisonInstanceList}" status="i" var="comparisonInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${comparisonInstance.id}">${fieldValue(bean: comparisonInstance, field: "buyerId")}</g:link></td>
					
						<td>${fieldValue(bean: comparisonInstance, field: "modelId")}</td>
					
						<td>${fieldValue(bean: comparisonInstance, field: "specId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${comparisonInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
