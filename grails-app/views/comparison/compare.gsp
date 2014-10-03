<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Tesla</title>
		<style type="text/css" media="screen">
			#center{
				margin-left: 100px;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
	
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		
		<div id="page-body" role="main">
		
		
		
		
		<div id="center">User: 
			${c.buyer.firstName}
		</div>
		<br/>
		<div id="center">Spec name: 
			${c.spec.name}
		</div><br>
		<div id="center">Model Name: 
			${model.name}
		</div><br>
		

		
			
		
	
         
		
			
			<div style="background-color: silver;"></div>
			
		
		

			
				
			
		</div>
		<!--  <footer><li> <g:link controller="buyer" action="buyerAdd">Test add Buyer</g:link></li></footer>-->
	</body>
</html>
