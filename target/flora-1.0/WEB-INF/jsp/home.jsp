<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta name="viewport"
	content="width = device-width, initial-scale = 1, 
         maximum-scale = 1, minimum-scale = 1, user-scalable = no, minimal-ui" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<title>Flora</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/framework7/1.4.2/css/framework7.ios.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/framework7/1.4.2/css/framework7.ios.colors.min.css" />
</head>

<body>
	//you can control the background color of the Status bar
	<div class="statusbar-overlay"></div>
	<div class="panel-overlay"></div>

	<div class="panel panel-right panel-reveal">
		<div class="content-block">
			<p>Contents goes here...</p>
		</div>
	</div>

	<div class="views">
		<div class="view view-main">
			<div class="navbar">
				<div class="navbar-inner">
					<div class="center sliding">My App</div>
					<div class="right">
						<a href="#" class="link icon-only open-panel"> <i
							class="icon icon-bars"></i>
						</a>
					</div>
				</div>
			</div>

			<div class="pages navbar-through toolbar-through">
				<div data-page="index" class="page">
					<div class="page-content">
						<p>This is simple application...</p>
						<div class="list-block">
							<ul>
								<li><a href="envirmnt_about.html" class="">
										<div class="item-content">
											<div class="item-inner">
												<div class="item-title">Blog</div>
											</div>
										</div>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="toolbar">
				<div class="toolbar-inner">
					<a href="#" class="link">First Link</a> <a href="#" class="link">Second
						Link</a>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/framework7/1.4.2/js/framework7.min.js"></script>

	<script>
		// here initialize the app
		var myApp = new Framework7();

		// If your using custom DOM library, then save it to $$ variable
		var $$ = Dom7;

		// Add the view
		var mainView = myApp.addView('.view-main', {

			// enable the dynamic navbar for this view:
			dynamicNavbar : true
		});

		//use the 'pageInit' event handler for all pages
		$$(document).on('pageInit', function(e) {

			//get page data from event data
			var page = e.detail.page;

			if (page.name === 'blog') {

				// you will get below message in alert box when page with data-page attribute is equal to "about"
				myApp.alert('Here its your About page');
			}
		})
	</script>
</body>

</html>