<%--<%@ page import="teslaV2.ModelSpec" %>--%>
		
		
			<div>
				<table id="specTable">
					<tr style="text-align:center;">
						<td id="title"> ${modelSpec.name } </td>
						<td></td>	
					</tr>
					<tr>
						<td>Distance Range</td>
						<td>${modelSpec.distanceRange} </td>
					</tr>
					<tr>
						<td>Power Outlet</td>
						<td>${modelSpec.powerOutlet }</td>
					</tr>
					<tr>
						<td>Trim Level</td>
						<td>${modelSpec.trimLevel }</td>
					</tr>
					<tr>
						<td>Additional Cost</td>
						<td>${modelSpec.additionalCost } </td>
						
					</tr>
					
					<tr>
						<td><g:link controller="comparison" action="compare" id="${modelSpec.id}">Compare model</g:link></td>
						<td></td>
					</tr>
				</table>
			</div>
	