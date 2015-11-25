<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>SeguriDog</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width">
		<link rel="shortcut icon" href="${assetPath(src: 'dog.png')}" type="image/x-icon">
		<link rel="stylesheet" href="${request.contextPath}/purpose/css/bootstrap.min.css">
		<link rel="stylesheet" href="${request.contextPath}/purpose/css/icomoon-social.css">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>

		<link rel="stylesheet" href="${request.contextPath}/purpose/css/leaflet.css" />
		<!--[if lte IE 8]>
			<link rel="stylesheet" href="${request.contextPath}/purpose/css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href="${request.contextPath}/purpose/css/main.css">
		<script src="${request.contextPath}/purpose/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>

		<link rel="stylesheet" href="${request.contextPath}/purpose/css/style.css" type="text/css" media="screen"/>
        <script type="text/javascript">

        (function() {
        			var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        			var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

        </script>

        <style>
        			body{
        				background: #333 url("${request.contextPath}/purpose/img/bg.png") repeat top left;
        				font-family:Arial;
        			}
        			ul.sdt_menu{
                         margin: 0 auto;
        			}
        </style>

	</head>

	<body>
		<!--[if lt IE 7]>
        <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

		<!-- Navigation & Logo-->
		<img src="${request.contextPath}/purpose/img/SeguriDog-logo.png" alt=""/>

        		<div class="content">
        			<ul id="sdt_menu" class="sdt_menu">
        				<li>
        					<g:link uri="/">
        						<img src="${request.contextPath}/purpose/img/images_menu/inicio.png" alt=""/>
        						<span class="sdt_active"></span>
        						<span class="sdt_wrap">
        							<span class="sdt_link">Inicio</span>
        							<span class="sdt_descr">SeguriDog</span>
        						</span>
        					</g:link>
        				</li>
        				<li>
        					<g:link controller="k9User" action="information">
        						<img src="${request.contextPath}/purpose/img/images_menu/grupo.png" alt=""/>
        						<span class="sdt_active"></span>
        						<span class="sdt_wrap">
        							<span class="sdt_link">Acerca de</span>
        							<span class="sdt_descr">Conozca sobre nosotros</span>
        						</span>
        					</g:link>
        				</li>
        				<li>
        					<g:link controller="k9User" action="collaborators">
        						<img src="${request.contextPath}/purpose/img/images_menu/contactos.png" alt=""/>
        						<span class="sdt_active"></span>
        						<span class="sdt_wrap">
        							<span class="sdt_link">Contactos</span>
        							<span class="sdt_descr">Teléfonos, Correos</span>
        						</span>
        					</g:link>
        				</li>
        				<li>
        					<g:link controller="k9User" action="login">
        						<img src="${request.contextPath}/purpose/img/images_menu/login.png" alt=""/>
        						<span class="sdt_active"></span>
        						<span class="sdt_wrap">
        							<span class="sdt_link">Login</span>
        							<span class="sdt_descr">Ingrese al sistema</span>
        						</span>
        					</g:link>
        				</li>
        			</ul>
        		</div>

		<!--end Navigation & Logo-->


		<!-- main content -->
		<g:layoutBody/>
		<!-- end main content -->

		<!-- Footer -->
		<br>
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="footer-copyright">&copy; 2015 SeguriDog. All rights reserved.</div>
					</div>
				</div>
			</div>
		</div>


		<!-- Javascripts -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script>window.jQuery || document.write('<script src="${request.contextPath}/purpose/js/jquery-1.9.1.min.js"><\/script>')</script>
		<script src="${request.contextPath}/purpose/js/bootstrap.min.js"></script>
		<script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
		<script src="${request.contextPath}/purpose/js/jquery.fitvids.js"></script>
		<script src="${request.contextPath}/purpose/js/jquery.sequence-min.js"></script>
		<script src="${request.contextPath}/purpose/js/jquery.bxslider.js"></script>
		<script src="${request.contextPath}/purpose/js/main-menu.js"></script>
		<script src="${request.contextPath}/purpose/js/template.js"></script>

		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
        <script type="text/javascript" src="${request.contextPath}/purpose/js/jquery.easing.1.3.js"></script>
                <script type="text/javascript">
                    $(function() {
        				/**
        				* for each menu element, on mouseenter,
        				* we enlarge the image, and show both sdt_active span and
        				* sdt_wrap span. If the element has a sub menu (sdt_box),
        				* then we slide it - if the element is the last one in the menu
        				* we slide it to the left, otherwise to the right
        				*/
                        $('#sdt_menu > li').bind('mouseenter',function(){
        					var $elem = $(this);
        					$elem.find('img')
        						 .stop(true)
        						 .animate({
        							'width':'170px',
        							'height':'170px',
        							'left':'0px'
        						 },400,'easeOutBack')
        						 .andSelf()
        						 .find('.sdt_wrap')
        					     .stop(true)
        						 .animate({'top':'140px'},500,'easeOutBack')
        						 .andSelf()
        						 .find('.sdt_active')
        					     .stop(true)
        						 .animate({'height':'170px'},300,function(){
        						var $sub_menu = $elem.find('.sdt_box');
        						if($sub_menu.length){
        							var left = '170px';
        							if($elem.parent().children().length == $elem.index()+1)
        								left = '-170px';
        							$sub_menu.show().animate({'left':left},200);
        						}
        					});
        				}).bind('mouseleave',function(){
        					var $elem = $(this);
        					var $sub_menu = $elem.find('.sdt_box');
        					if($sub_menu.length)
        						$sub_menu.hide().css('left','0px');

        					$elem.find('.sdt_active')
        						 .stop(true)
        						 .animate({'height':'0px'},300)
        						 .andSelf().find('img')
        						 .stop(true)
        						 .animate({
        							'width':'0px',
        							'height':'0px',
        							'left':'85px'},400)
        						 .andSelf()
        						 .find('.sdt_wrap')
        						 .stop(true)
        						 .animate({'top':'25px'},500);
        				});
        				$('#relatedPosts').toggle(
        					function(){
        						$('#rp_list').animate({'bottom':'10px'},500);
        					},
        					function(){
        						$('#rp_list').animate({'bottom':'-50px'},500);
        					}
        				);
        				$('#rp_list a').tipsy({gravity: 's'});
                    });
                </script>

	</body>
</html>