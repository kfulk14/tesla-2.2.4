<%@ page import="teslaV2.Comparison" %>



<div class="fieldcontain ${hasErrors(bean: comparisonInstance, field: 'buyerId', 'error')} required">
	<label for="buyerId">
		<g:message code="comparison.buyerId.label" default="Buyer Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buyerId" type="number" value="${comparisonInstance.buyerId}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: comparisonInstance, field: 'modelId', 'error')} required">
	<label for="modelId">
		<g:message code="comparison.modelId.label" default="Model Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="modelId" type="number" value="${comparisonInstance.modelId}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: comparisonInstance, field: 'specId', 'error')} required">
	<label for="specId">
		<g:message code="comparison.specId.label" default="Spec Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="specId" type="number" value="${comparisonInstance.specId}" required=""/>
</div>

