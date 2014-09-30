
<%@ page import="teslaV2.Comparison" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comparison.label', default: 'Comparison')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

				<div style="margin-left: 100px;">
				<h1>Show All Comparisons for ${buyer.firstName}</h1>
					
					<g:each in="${c}" var="list">
<%--						<p>Buyer ID: ${list.buyer.firstName}</p>--%>
						<p>Model: ${list.spec.name}, Distance Range: ${list.spec.distanceRange }, Power Outlet: ${list.spec.powerOutlet }</p>
					</g:each>
				
				
				</div>


	</body>
</html>
