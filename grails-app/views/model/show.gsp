
<%@ page import="teslaV2.Model" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'model.label', default: 'Model')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<style>
			#model-name{
				position: absolute;
				margin-left: 40px;
				margin-top: 60px;
				color: black;
				font-weight: bold;
				}
			#price{
				position:absolute;
				margin-top: 100px;
				margin-left: 40px;
				color: black;
				font-weight: bold;
			}
		
		</style>
	</head>
	<body>
		<div id="mainBody">
			
			<h1 id="model-name">Model name: ${modelInstance.name }</h1>
			<h1 id="price">Price: $ ${modelInstance.startingCost }</h1>
			<g:img uri="${modelInstance.imageUrl }" />
		</div>
		
		<div id="modelSpecs">
			<g:each in="${modelSpecsOrder}" var="spec">
				<div>
					<g:render template="/modelSpec/display" model="[modelSpec: spec]" />
				</div>
			</g:each>
		</div>
		
		
	</body>
</html>
