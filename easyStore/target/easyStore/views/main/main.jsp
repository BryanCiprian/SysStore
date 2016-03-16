<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-us">
<head>
<meta name="viewport" http-equiv="Content-Type" charset="UTF-8">
<!-- meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" -->
<meta charset="utf-8">
<title>Store</title>
<meta name="description" content="">
<meta name="author" content="">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- #CSS Links -->
<!-- Basic Styles -->
<link rel="stylesheet" type="text/css" media="screen"
	href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="../css/font-awesome.min.css">

<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
<link rel="stylesheet" type="text/css" media="screen"
	href="../css/smartadmin-production-plugins.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="../css/smartadmin-production.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="../css/smartadmin-skins.min.css">

<!-- DEV links : turn this on when you like to develop directly -->
<!--<link rel="stylesheet" type="text/css" media="screen" href="../Source_UNMINIFIED_CSS/smartadmin-production.css">-->
<!--<link rel="stylesheet" type="text/css" media="screen" href="../Source_UNMINIFIED_CSS/smartadmin-skins.css">-->

<!-- SmartAdmin RTL Support -->
<link rel="stylesheet" type="text/css" media="screen"
	href="../css/smartadmin-rtl.min.css">

<!-- We recommend you use "your_style.css" to override SmartAdmin
		     specific styles this will also ensure you retrain your customization with each SmartAdmin update.
		<link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
<link rel="stylesheet" type="text/css" media="screen"
	href="../css/demo.min.css">

<!-- #FAVICONS -->
<link rel="shortcut icon" href="../img/favicon/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="../img/favicon/favicon.ico" type="image/x-icon">

<!-- #GOOGLE FONT -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

<!-- #APP SCREEN / ICONS -->
<!-- Specifying a Webpage Icon for Web Clip 
			 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
<link rel="apple-touch-icon"
	href="../img/splash/sptouch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="../img/splash/touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="../img/splash/touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="../img/splash/touch-icon-ipad-retina.png">

<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<!-- Startup image for web apps -->
<link rel="apple-touch-startup-image"
	href="../img/splash/ipad-landscape.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
<link rel="apple-touch-startup-image"
	href="../img/splash/ipad-portrait.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
<link rel="apple-touch-startup-image" href="../img/splash/iphone.png"
	media="screen and (max-device-width: 320px)">

</head>

<!--

	TABLE OF CONTENTS.
	
	Use search to find needed section.
	
	===================================================================
	
	|  01. #CSS Links                |  all CSS links and file paths  |
	|  02. #FAVICONS                 |  Favicon links and file paths  |
	|  03. #GOOGLE FONT              |  Google font link              |
	|  04. #APP SCREEN / ICONS       |  app icons, screen backdrops   |
	|  05. #BODY                     |  body tag                      |
	|  06. #HEADER                   |  header tag                    |
	|  07. #PROJECTS                 |  project lists                 |
	|  08. #TOGGLE LAYOUT BUTTONS    |  layout buttons and actions    |
	|  09. #MOBILE                   |  mobile view dropdown          |
	|  10. #SEARCH                   |  search field                  |
	|  11. #NAVIGATION               |  left panel & navigation       |
	|  12. #MAIN PANEL               |  main panel                    |
	|  13. #MAIN CONTENT             |  content holder                |
	|  14. #PAGE FOOTER              |  page footer                   |
	|  15. #SHORTCUT AREA            |  dropdown shortcuts area       |
	|  16. #PLUGINS                  |  all scripts and plugins       |
	
	===================================================================
	
	-->

<!-- #BODY -->
<!-- Possible Classes

		* 'smart-style-{SKIN#}'
		* 'smart-rtl'         - Switch theme mode to RTL
		* 'menu-on-top'       - Switch to top navigation (no DOM change required)
		* 'no-menu'			  - Hides the menu completely
		* 'hidden-menu'       - Hides the main menu but still accessable by hovering over left edge
		* 'fixed-header'      - Fixes the header
		* 'fixed-navigation'  - Fixes the main menu
		* 'fixed-ribbon'      - Fixes breadcrumb
		* 'fixed-page-footer' - Fixes footer
		* 'container'         - boxed layout mode (non-responsive: will not work with fixed-navigation & fixed-ribbon)
	-->





</head>
<c:if test="${configMenuBody!=null}">
	<body id="body-main" class="${configMenuBody}">
</c:if>
<c:if test="${configMenuBody==null}">
	<body id="body-main" class="smart-style-1 fixed-page-footer">
</c:if>

<!--CABEZA-->
<jsp:include page="header.jsp" />
<!--PRINCIPAL-->
<div id="main" role="main">
	<!-- RIBBON -->
	<!-- RIBBON -->
	<div id="ribbon">
		<span class="ribbon-button-alignment"> <span id="refresh"
			class="btn btn-ribbon" data-action="resetWidgets"
			data-title="refresh" rel="tooltip" data-placement="bottom"
			data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings."
			data-html="true"
			data-reset-msg="Would you like to RESET all your saved widgets and clear LocalStorage?"><i
				class="fa fa-refresh"></i></span>
		</span>
		<!-- breadcrumb -->
		<ol class="breadcrumb">
			<!-- This is auto generated -->
		</ol>
		<!-- end breadcrumb -->

		<!-- You can also add more buttons to the
				ribbon for further usability

				Example below:

				<span class="ribbon-button-alignment pull-right" style="margin-right:25px">
					<a href="#" id="search" class="btn btn-ribbon hidden-xs" data-title="search"><i class="fa fa-grid"></i> Change Grid</a>
					<span id="add" class="btn btn-ribbon hidden-xs" data-title="add"><i class="fa fa-plus"></i> Add</span>
					<button id="search" class="btn btn-ribbon" data-title="search"><i class="fa fa-search"></i> <span class="hidden-mobile">Search</span></button>
				</span> -->

	</div>
	<!-- END RIBBON -->

	<!-- #MAIN CONTENT -->
	<div id="content"></div>

	<!-- END #MAIN CONTENT -->
</div>
<!-- #PAGE FOOTER -->
<div class="page-footer">
	<div class="row">
		<div class="col-xs-12 col-sm-6">
			<span class="txt-color-white">It Skill <span class="hidden-xs">
					Consulting</span> Â© 2014-2016
			</span>
		</div>

		<div class="col-xs-6 col-sm-6 text-right hidden-xs">
			<div class="txt-color-white inline-block">
				<i class="txt-color-blueLight hidden-mobile">Last account
					activity <i class="fa fa-clock-o"></i> <strong>52 mins ago
						&nbsp;</strong>
				</i>
				<div class="btn-group dropup">
					<button
						class="btn btn-xs dropdown-toggle bg-color-blue txt-color-white"
						data-toggle="dropdown">
						<i class="fa fa-link"></i> <span class="caret"></span>
					</button>
					<ul class="dropdown-menu pull-right text-left">
						<li>
							<div class="padding-5">
								<p class="txt-color-darken font-sm no-margin">Download
									Progress</p>
								<div class="progress progress-micro no-margin">
									<div class="progress-bar progress-bar-success"
										style="width: 50%;"></div>
								</div>
							</div>
						</li>
						<li class="divider"></li>
						<li>
							<div class="padding-5">
								<p class="txt-color-darken font-sm no-margin">Server Load</p>
								<div class="progress progress-micro no-margin">
									<div class="progress-bar progress-bar-success"
										style="width: 20%;"></div>
								</div>
							</div>
						</li>
						<li class="divider"></li>
						<li>
							<div class="padding-5">
								<p class="txt-color-darken font-sm no-margin">
									Memory Load <span class="text-danger">*critical*</span>
								</p>
								<div class="progress progress-micro no-margin">
									<div class="progress-bar progress-bar-danger"
										style="width: 70%;"></div>
								</div>
							</div>
						</li>
						<li class="divider"></li>
						<li>
							<div class="padding-5">
								<button class="btn btn-block btn-default">refresh</button>
							</div>
						</li>
					</ul>
				</div>
				<!-- end btn-group-->
			</div>
			<!-- end div-->
		</div>
		<!-- end col -->
	</div>
	<!-- end row -->
</div>
<!-- END FOOTER -->

<!-- #SHORTCUT AREA : With large tiles (activated via clicking user name tag)
			 Note: These tiles are completely responsive, you can add as many as you like -->
<div id="shortcut">
	<ul>
		<li><a href="#ajax/inbox.html"
			class="jarvismetro-tile big-cubes bg-color-blue"> <span
				class="iconbox"> <i class="fa fa-envelope fa-4x"></i> <span>Mail
						<span class="label pull-right bg-color-darken">14</span>
				</span>
			</span>
		</a></li>
		<li><a href="#ajax/calendar.html"
			class="jarvismetro-tile big-cubes bg-color-orangeDark"> <span
				class="iconbox"> <i class="fa fa-calendar fa-4x"></i> <span>Calendar</span>
			</span>
		</a></li>
		<li><a href="#ajax/gmap-xml.html"
			class="jarvismetro-tile big-cubes bg-color-purple"> <span
				class="iconbox"> <i class="fa fa-map-marker fa-4x"></i> <span>Maps</span>
			</span>
		</a></li>
		<li><a href="#ajax/invoice.html"
			class="jarvismetro-tile big-cubes bg-color-blueDark"> <span
				class="iconbox"> <i class="fa fa-book fa-4x"></i> <span>Invoice
						<span class="label pull-right bg-color-darken">99</span>
				</span>
			</span>
		</a></li>
		<li><a href="#ajax/gallery.html"
			class="jarvismetro-tile big-cubes bg-color-greenLight"> <span
				class="iconbox"> <i class="fa fa-picture-o fa-4x"></i> <span>Gallery
				</span>
			</span>
		</a></li>
		<li><a href="#ajax/profile.html"
			class="jarvismetro-tile big-cubes selected bg-color-pinkDark"> <span
				class="iconbox"> <i class="fa fa-user fa-4x"></i> <span>My
						Profile </span>
			</span>
		</a></li>
	</ul>
</div>
<!-- END SHORTCUT AREA -->

<!--================================================== -->

<!--================================================== -->

<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)
		<script data-pace-options='{ "restartOnRequestAfter": true }' src="js/plugin/pace/pace.min.js"></script>-->


<!-- #PLUGINS -->
<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
	if (!window.jQuery) {
		document
				.write('<script src="../js/libs/jquery-2.1.1.min.js"><\/script>');
	}
</script>

<script
	src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<script>
	if (!window.jQuery.ui) {
		document
				.write('<script src="../js/libs/jquery-ui-1.10.3.min.js"><\/script>');
	}
</script>

<!-- IMPORTANT: APP CONFIG -->
<script src="../js/app.config.js"></script>

<!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
<script src="../js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script>

<!-- BOOTSTRAP JS -->
<script src="../js/bootstrap/bootstrap.min.js"></script>

<!-- CUSTOM NOTIFICATION -->
<script src="../js/notification/SmartNotification.min.js"></script>

<!-- JARVIS WIDGETS -->
<script src="../js/smartwidgets/jarvis.widget.min.js"></script>

<!-- EASY PIE CHARTS -->
<script src="../js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

<!-- SPARKLINES -->
<script src="../js/plugin/sparkline/jquery.sparkline.min.js"></script>

<!-- JQUERY VALIDATE -->
<script src="../js/plugin/jquery-validate/jquery.validate.min.js"></script>

<!-- JQUERY MASKED INPUT -->
<script src="../js/plugin/masked-input/jquery.maskedinput.min.js"></script>

<!-- JQUERY SELECT2 INPUT -->
<script src="../js/plugin/select2/select2.min.js"></script>

<!-- JQUERY UI + Bootstrap Slider -->
<script src="../js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

<!-- browser msie issue fix -->
<script src="../js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

<!-- FastClick: For mobile devices: you can disable this in app.js -->
<script src="../js/plugin/fastclick/fastclick.min.js"></script>

<!--[if IE 8]>
			<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>
		<![endif]-->

<!-- Demo purpose only -->
<script src="../js/demo.min.js"></script>

<!-- MAIN APP JS FILE -->
<script src="../js/app.min.js"></script>

<!-- ENHANCEMENT PLUGINS : NOT A REQUIREMENT -->
<!-- Voice command : plugin -->
<script src="../js/speech/voicecommand.min.js"></script>

<!-- SmartChat UI : plugin -->
<script src="../js/smart-chat-ui/smart.chat.ui.min.js"></script>
<script src="../js/smart-chat-ui/smart.chat.manager.min.js"></script>

<!-- Your GOOGLE ANALYTICS CODE Below -->
<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'UA-XXXXXXXX-X' ]);
	_gaq.push([ '_trackPageview' ]);

	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();
</script>
 
<script type="text/javascript">
$.sound_path = "../sound/", $.sound_on = !0, jQuery(document).ready(function () {
    $("body").append("<div id='divSmallBoxes'></div>"), $("body").append("<div id='divMiniIcons'></div><div id='divbigBoxes'></div>")
});
</script>
</body>
</html>
