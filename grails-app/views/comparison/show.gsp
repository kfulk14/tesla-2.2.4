
<%@ page import="teslaV2.Comparison" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comparison.label', default: 'Comparison')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<style>
			#details{
				width:470px;
			}
		</style>
		
		
		
	</head>
	<body>
		<div style="margin-left: 100px;">
			<h1>Show All Comparisons for ${buyer.firstName}  </h1>
				<g:each in="${c}" var="list">
					<div id="details">
						CarName: "name of particular CarModel" "${modelName.name }"<br>
						SpecModel: ${list.spec.name} <br>
						Distance Range: ${list.spec.distanceRange } <br>
						Power Outlet: ${list.spec.powerOutlet }
					</div>
						<g:form>	
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${list.id}" />
<%--								<g:link class="edit" action="edit" id="${list.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--%>
								<g:actionSubmit class="delete" action="delete" value="Remove" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
							</fieldset>
						</g:form>
				</g:each>
		</div>
		
		
		<div id="modelSpecs">
			<g:each in="${c}" var="list">
				<div>
					<g:render template="/comparison/display" var="${ c}" />
				</div>
			</g:each>
		</div>


	</body>
</html>
