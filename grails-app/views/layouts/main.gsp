<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<div id="nav">
				
				<ul>
					<g:each in="${teslaV2.Model.list()}" var="modelInstance">
						<li><g:link controller="model" action="show" id="${modelInstance.id}"> ${modelInstance.name}</g:link></li>
					</g:each>
				</ul>
				<ul>
					<li><g:link controller="user" action="show"> Users</g:link></li>
				</ul>
				<ul>
					<li><g:link controller="comparison" action="show"> Comparison</g:link></li>	
				</ul>
			
		</div>
		<div id="grailsLogo" role="banner"><a href="/tesla-2.2.4" style="margin-left: 0px; margin-top:0px;"><img src="${resource(dir: 'images', file: 'tesla.jpeg')}" alt="tesla logo" style="width:85px; height: 105px; position:absolute"/></a></div>
		
		<g:layoutBody/>
		
		
		<g:javascript library="application"/>
		<r:layoutResources />
	
		<div class="footer" role="contentinfo"> <li> <g:link controller="admin" action="index">Admin Page</g:link></li></div>
	</body>
</html>
 