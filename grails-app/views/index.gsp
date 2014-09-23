<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Tesla</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			

			#page-body {
				margin: 1.5em 0em 0em 0em;
				background-image: url('${resource(dir: "images", file: "model-s.png")}');
				 height: 540px;
				
				}
					 
				#page-body img{
					 
					 width:960px; 
					 height: 444px;
					}
			

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}
			
			#production{
				li{
				float:left;
				}
			}
			
			#war{
				padding-left: 100px;
				padding-top: 340px;
				font-size: 35px;
				color: white;
				text-decoration: underline;	
				}
				
				#text{
				padding-left: 98px;
				font-size: 15px;
				color: white;
					
				}
				
			#welcome{
				padding-top: 40px;
				padding-left: 40px;
				font-size: 40px;
			}
			
			#div1{
			background-image: url('${resource(dir: "images", file: "supers.png")}');"
			 	border-style: solid;
				border-color: black;
				width: 300px;
				margin-left: 10px;
				margin-top: 20px;
				margin-bottom: 15px;
				box-shadow: 4px 4px 5px #888888;
				float:left;
				height: 200px;
			 }
			 #div2{
			background-image: url('${resource(dir: "images", file: "customers.png")}');"
			 	border-style: solid;
				border-color: black;
				width: 300px;
				margin-left: 10px;
				margin-top: 20px;
				margin-bottom: 15px;
				box-shadow: 4px 4px 5px #888888;
				float:left;
				height: 200px;
			 }
			 #div3{
			background-image: url('${resource(dir: "images", file: "order.png")}');"
			 	border-style: solid;
				border-color: black;
				width: 300px;
				margin-right: 20px;
				margin-top: 20px;
				margin-bottom: 15px;
				box-shadow: 4px 4px 5px #888888;
				float:right;
				height: 200px;
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
		
		<div id="welcome">Welcome to Tesla</div>
		
			
			<div id="war">INFINITE MILE WARRANTY</div>
			<div id="text">8 year mile warranty on Model S 85kWh battery and drive unit</div>
			
			
           <div style="background-color: silver; height: 250px;">
           	<table id="div1">
					<tr style="text-align:center;">
				</tr>
				</table>
			
			
			<table id="div2">
					<tr style="text-align:center;">
				</tr>
				</table>
			
	
       
       
       	<table id="div3">
					<tr style="text-align:center;">
				</tr>
				</table>
			
			
			</div>
	
         
		
			
			<div style="background-color: silver;"></div>
			
		
		

			
				
			
		</div>
		<!--  <footer><li> <g:link controller="buyer" action="buyerAdd">Test add Buyer</g:link></li></footer>-->
	</body>
</html>
