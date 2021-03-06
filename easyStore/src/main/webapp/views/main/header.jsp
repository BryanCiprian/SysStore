<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header id="header">
	<div id="logo-group">

		<!-- PLACE YOUR LOGO HERE -->
		<span id="logo"> <img src="../img/logo-white.png"
			alt="SmartAdmin">
		</span>
		<!-- END LOGO PLACEHOLDER -->

		<!-- Note: The activity badge color changes when clicked and resets the number to 0
					 Suggestion: You may want to set a flag when this happens to tick off all checked messages / notifications -->
		<span id="activity" class="activity-dropdown"> <i
			class="fa fa-user"></i> <b class="badge"> 21 </b>
		</span>

		<!-- AJAX-DROPDOWN : control this dropdown height, look and feel from the LESS variable file -->
		<div class="ajax-dropdown">

			<!-- the ID links are fetched via AJAX to the ajax container "ajax-notifications" -->
			<div class="btn-group btn-group-justified" data-toggle="buttons">
				<label class="btn btn-default"> <input type="radio"
					name="activity" id="ajax/notify/mail.html"> Msgs (14)
				</label> <label class="btn btn-default"> <input type="radio"
					name="activity" id="ajax/notify/notifications.html"> notify
					(3)
				</label> <label class="btn btn-default"> <input type="radio"
					name="activity" id="ajax/notify/tasks.html"> Tasks (4)
				</label>
			</div>

			<!-- notification content -->
			<div class="ajax-notifications custom-scroll">

				<div class="alert alert-transparent">
					<h4>Click a button to show messages here</h4>
					This blank page message helps protect your privacy, or you can show
					the first message here automatically.
				</div>

				<i class="fa fa-lock fa-4x fa-border"></i>

			</div>
			<!-- end notification content -->

			<!-- footer: refresh area -->
			<span> Last updated on: 12/12/2013 9:43AM
				<button type="button"
					data-loading-text="<i class='fa fa-refresh fa-spin'></i> Loading..."
					class="btn btn-xs btn-default pull-right">
					<i class="fa fa-refresh"></i>
				</button>
			</span>
			<!-- end footer -->

		</div>
		<!-- END AJAX-DROPDOWN -->
	</div>

	<!-- #PROJECTS: projects dropdown -->
	<div class="project-context hidden-xs">

		<span class="label">Projects:</span> <span
			class="project-selector dropdown-toggle" data-toggle="dropdown">Recent
			projects <i class="fa fa-angle-down"></i>
		</span>

		<!-- Suggestion: populate this list with fetch and push technique -->
		<ul class="dropdown-menu">
			<li><a href="javascript:void(0);">Online e-merchant
					management system - attaching integration with the iOS</a></li>
			<li><a href="javascript:void(0);">Notes on pipeline upgradee</a>
			</li>
			<li><a href="javascript:void(0);">Assesment Report for
					merchant account</a></li>
			<li class="divider"></li>
			<li><a href="javascript:void(0);"><i class="fa fa-power-off"></i>
					Clear</a></li>
		</ul>
		<!-- end dropdown-menu-->

	</div>
	<!-- end projects dropdown -->

	<!-- #TOGGLE LAYOUT BUTTONS -->
	<!-- pulled right: nav area -->
	<div class="pull-right">

		<!-- collapse menu button -->
		<div id="hide-menu" class="btn-header pull-right">
			<span> <a href="javascript:void(0);" data-action="toggleMenu"
				title="Collapse Menu"><i class="fa fa-reorder"></i></a>
			</span>
		</div>
		<!-- end collapse menu -->

		<!-- #MOBILE -->
		<!-- Top menu profile link : this shows only when top menu is active -->
		<ul id="mobile-profile-img"
			class="header-dropdown-list hidden-xs padding-5">
			<li class=""><a href="#"
				class="dropdown-toggle no-margin userdropdown"
				data-toggle="dropdown"> <img src="../img/avatars/sunny.png"
					alt="John Doe" class="online" />
			</a>
				<ul class="dropdown-menu pull-right">
					<li><a href="javascript:void(0);"
						class="padding-10 padding-top-0 padding-bottom-0"><i
							class="fa fa-cog"></i> Setting</a></li>
					<li class="divider"></li>
					<li><a href="#ajax/profile.html"
						class="padding-10 padding-top-0 padding-bottom-0"> <i
							class="fa fa-user"></i> <u>P</u>rofile
					</a></li>
					<li class="divider"></li>
					<li><a href="javascript:void(0);"
						class="padding-10 padding-top-0 padding-bottom-0"
						data-action="toggleShortcut"><i class="fa fa-arrow-down"></i>
							<u>S</u>hortcut</a></li>
					<li class="divider"></li>
					<li><a href="javascript:void(0);"
						class="padding-10 padding-top-0 padding-bottom-0"
						data-action="launchFullscreen"><i class="fa fa-arrows-alt"></i>
							Full <u>S</u>creen</a></li>
					<li class="divider"></li>
					<li><a href="../views/seguridad/cerrarSesion.htm"
						class="padding-10 padding-top-5 padding-bottom-5"
						data-action="userLogout"><i class="fa fa-sign-out fa-lg"></i>
							<strong><u>L</u>ogout</strong></a></li>
				</ul></li>
		</ul>

		<!-- logout button -->
		<div id="logout" class="btn-header transparent pull-right">
			<span> <a href="../seguridad/cerrarSesion.htm"
				title="Sign Out" data-action="userLogout"
				data-logout-msg="You can improve your security further after logging out by closing this opened browser"><i
					class="fa fa-sign-out"></i></a>
			</span>
		</div>
		<!-- end logout button -->

		<!-- search mobile button (this is hidden till mobile view port) -->
		<div id="search-mobile" class="btn-header transparent pull-right">
			<span> <a href="javascript:void(0)" title="Search"><i
					class="fa fa-search"></i></a>
			</span>
		</div>
		<!-- end search mobile button -->

		<!-- #SEARCH -->
		<!-- input: search field -->
		<form action="#ajax/search.html" class="header-search pull-right">
			<input id="search-fld" type="text" name="param"
				placeholder="Find reports and more">
			<button type="submit">
				<i class="fa fa-search"></i>
			</button>
			<a href="javascript:void(0);" id="cancel-search-js"
				title="Cancel Search"><i class="fa fa-times"></i></a>
		</form>
		<!-- end input: search field -->

		<!-- fullscreen button -->
		<div id="fullscreen" class="btn-header transparent pull-right">
			<span> <a href="javascript:void(0);"
				data-action="launchFullscreen" title="Full Screen"><i
					class="fa fa-arrows-alt"></i></a>
			</span>
		</div>
		<!-- end fullscreen button -->

		<!-- #Voice Command: Start Speech -->
		<!-- NOTE: Voice command button will only show in browsers that support it. Currently it is hidden under mobile browsers. 
						   You can take off the "hidden-sm" and "hidden-xs" class to display inside mobile browser-->
		<div id="speech-btn"
			class="btn-header transparent pull-right hidden-sm hidden-xs">
			<div>
				<a href="javascript:void(0)" title="Voice Command"
					data-action="voiceCommand"><i class="fa fa-microphone"></i></a>
				<div class="popover bottom">
					<div class="arrow"></div>
					<div class="popover-content">
						<h4 class="vc-title">
							Voice command activated <br> <small>Please speak
								clearly into the mic</small>
						</h4>
						<h4 class="vc-title-error text-center">
							<i class="fa fa-microphone-slash"></i> Voice command failed <br>
							<small class="txt-color-red">Must <strong>"Allow"</strong>
								Microphone
							</small> <br> <small class="txt-color-red">Must have <strong>Internet
									Connection</strong></small>
						</h4>
						<a href="javascript:void(0);" class="btn btn-success"
							onclick="commands.help()">See Commands</a> <a
							href="javascript:void(0);"
							class="btn bg-color-purple txt-color-white"
							onclick="$('#speech-btn .popover').fadeOut(50);">Close Popup</a>
					</div>
				</div>
			</div>
		</div>
		<!-- end voice command -->

		<!-- multiple lang dropdown : find all flags in the flags page -->
		<ul class="header-dropdown-list hidden-xs">
			<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<img src="../img/blank.gif" class="flag flag-us"
					alt="United States"> <span> US</span> <i
					class="fa fa-angle-down"></i>
			</a>
				<ul class="dropdown-menu pull-right">
					<li class="active"><a href="javascript:void(0);"><img
							src="../img/blank.gif" class="flag flag-us" alt="United States">
							English (US)</a></li>
					<li><a href="javascript:void(0);"><img
							src="../img/blank.gif" class="flag flag-fr" alt="France">
							Français</a></li>
					<li><a href="javascript:void(0);"><img
							src="../img/blank.gif" class="flag flag-es" alt="Spanish">
							Español</a></li>
					<li><a href="javascript:void(0);"><img
							src="../img/blank.gif" class="flag flag-de" alt="German">
							Deutsch</a></li>
					<li><a href="javascript:void(0);"><img
							src="../img/blank.gif" class="flag flag-jp" alt="Japan">
							日本語</a></li>
					<li><a href="javascript:void(0);"><img
							src="../img/blank.gif" class="flag flag-cn" alt="China"> 中文</a></li>
					<li><a href="javascript:void(0);"><img
							src="../img/blank.gif" class="flag flag-it" alt="Italy">
							Italiano</a></li>
					<li><a href="javascript:void(0);"><img
							src="../img/blank.gif" class="flag flag-pt" alt="Portugal">
							Portugal</a></li>
					<li><a href="javascript:void(0);"><img
							src="../img/blank.gif" class="flag flag-ru" alt="Russia">
							Русский язык</a></li>
					<li><a href="javascript:void(0);"><img
							src="../img/blank.gif" class="flag flag-kr" alt="Korea">
							한국어</a></li>

				</ul></li>
		</ul>
		<!-- end multiple lang -->

	</div>
	<!-- end pulled right: nav area -->

</header>

<aside id="left-panel">
	<!-- User info -->
	<div class="login-info">
		<span> <!-- User image size is adjusted inside CSS, it should stay as is -->
			<a href="javascript:void(0);" id="show-shortcut"
			data-action="toggleShortcut"> <img src="../img/avatars/sunny.png"
				alt="me" class="online" /> <span> ${usuario} </span> <i
				class="fa fa-angle-down"></i>
				 
		</a>

		</span>

	</div>
	<label class="login-info text-center"> ${nombres}</label>
	<!-- end user info -->

	<!-- NAVIGATION : This navigation is also responsive

			To make this navigation dynamic please make sure to link the node
			(the reference to the nav > ul) after page load. Or the navigation
			will not initialize.
			-->
	<nav>
		<!-- 
				NOTE: Notice the gaps after each icon usage <i></i>..
				Please note that these links work a bit different than
				traditional href="" links. See documentation for details.
				-->
		<ul>
			<c:forEach var="opcion" items="${vistas}">
				<li><a href="../${opcion.var_urlvista}"><i
						class="fa fa-lg fa-fw ${opcion.var_icon}"></i> <span
						class="menu-item-parent"> ${opcion.var_labelvista} </span> </a>
					<ul>
						<c:forEach var="opcionMenu" items="${vistasMenu}">
							<c:if test="${opcionMenu.id_padre == opcion.id_vista}">
								<li class=""><a href="../${opcionMenu.var_urlvista}"
									title="Dashboard"> <i
										class="fa fa-lg fa-fw ${opcionMenu.var_icon}"></i> <span
										class="menu-item-parent">${opcionMenu.var_labelvista}</span></a></li>
							</c:if>
						</c:forEach>
					</ul></li>
			</c:forEach>
			<li class=""><a href="#" title="Dashboard"><i
					class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">Configuracion
						Inicial</span></a>
				<ul>
					<li class=""><a href="../main/config.htm" title="Dashboard"><span
							class="menu-item-parent">Configuracion</span></a></li>

				</ul></li>

			<li class=""><a href="#" title="Dashboard"><i
					class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">Dashboard</span></a>
				<ul>
					<li class=""><a href="../ajax/dashboard.html"
						title="Dashboard"><span class="menu-item-parent">Analytics
								Dashboard</span></a></li>
					<li class=""><a href="../ajax/dashboard-social.html"
						title="Dashboard"><span class="menu-item-parent">Social
								Wall</span></a></li>
				</ul></li>
			<li class="top-menu-invisible"><a href="#"><i
					class="fa fa-lg fa-fw fa-cube txt-color-blue"></i> <span
					class="menu-item-parent">SmartAdmin Intel</span></a>
				<ul>
					<li class=""><a href="../ajax/layouts.html" title="Dashboard"><i
							class="fa fa-lg fa-fw fa-gear"></i> <span
							class="menu-item-parent">App Layouts</span></a></li>
					<li class=""><a href="../ajax/skins.html" title="Dashboard"><i
							class="fa fa-lg fa-fw fa-picture-o"></i> <span
							class="menu-item-parent">Prebuilt Skins</span></a></li>
					<li><a href="../ajax/difver.html"><i
							class="fa fa-stack-overflow"></i> App Variations</a></li>
					<li><a href="../ajax/applayout.html"><i class="fa fa-cube"></i>
							App Settings</a></li>
				</ul></li>
			<li><a href="../ajax/inbox.html"><i
					class="fa fa-lg fa-fw fa-inbox"></i> <span class="menu-item-parent">Outlook</span>
					<span class="badge pull-right inbox-badge margin-right-13">14</span></a>
				<ul>
					<li><a href="../ajax/inbox.html">Inbox </a></li>
					<li><a href="../ajax/inbox-email-view.html">Email view </a></li>
					<li><a href="../ajax/inbox-email-compose.html">Compose </a></li>
					<li><a href="../ajax/inbox-email-reply.html">Reply </a></li>
					<li><a href="../ajax/email-template.html">Email Templates
					</a></li>
				</ul></li>
			<li><a href="#"><i class="fa fa-lg fa-fw fa-bar-chart-o"></i>
					<span class="menu-item-parent">Graphs</span></a>
				<ul>
					<li><a href="../ajax/flot.html">Flot Chart</a></li>
					<li><a href="../ajax/morris.html">Morris Charts</a></li>
					<li><a href="../ajax/sparkline-charts.html">Sparklines</a></li>
					<li><a href="../ajax/easypie-charts.html">EasyPieCharts</a></li>
					<li><a href="../ajax/dygraphs.html">Dygraphs</a></li>
					<li><a href="../ajax/chartjs.html">Chart.js</a></li>
					<li><a href="../ajax/hchartable.html">HighchartTable <span
							class="badge pull-right inbox-badge bg-color-yellow">new</span></a></li>
				</ul></li>
			<li><a href="#"><i class="fa fa-lg fa-fw fa-table"></i> <span
					class="menu-item-parent">Tables</span></a>
				<ul>
					<li><a href="../ajax/table.html">Normal Tables</a></li>
					<li><a href="../ajax/datatables.html">Data Tables <span
							class="badge inbox-badge bg-color-greenLight hidden-mobile">responsive</span></a>
					</li>
					<li><a href="../ajax/jqgrid.html">Jquery Grid</a></li>
				</ul></li>
			<li><a href="#"><i class="fa fa-lg fa-fw fa-pencil-square-o"></i>
					<span class="menu-item-parent">Forms</span></a>
				<ul>
					<li><a href="../ajax/form-elements.html">Smart Form
							Elements</a></li>
					<li><a href="../ajax/form-templates.html">Smart Form
							Layouts</a></li>
					<li><a href="../ajax/validation.html">Smart Form
							Validation</a></li>
					<li><a href="../ajax/bootstrap-forms.html">Bootstrap Form
							Elements</a></li>
					<li><a href="../ajax/bootstrap-validator.html">Bootstrap
							Form Validation</a></li>
					<li><a href="../ajax/plugins.html">Form Plugins</a></li>
					<li><a href="../ajax/wizard.html">Wizards</a></li>
					<li><a href="../ajax/other-editors.html">Bootstrap Editors</a>
					</li>
					<li><a href="../ajax/dropzone.html">Dropzone</a></li>
					<li><a href="../ajax/image-editor.html">Image Cropping</a></li>
					<li><a href="../ajax/ckeditor.html">CK Editor</a></li>
				</ul></li>
			<li><a href="#"><i class="fa fa-lg fa-fw fa-desktop"></i> <span
					class="menu-item-parent">UI Elements</span></a>
				<ul>
					<li><a href="../ajax/general-elements.html">General
							Elements</a></li>
					<li><a href="../ajax/buttons.html">Buttons</a></li>
					<li><a href="#">Icons</a>
						<ul>
							<li><a href="../ajax/fa.html"><i class="fa fa-plane"></i>
									Font Awesome</a></li>
							<li><a href="../ajax/glyph.html"><i
									class="glyphicon glyphicon-plane"></i> Glyph Icons</a></li>
							<li><a href="../ajax/flags.html"><i class="fa fa-flag"></i>
									Flags</a></li>
						</ul></li>
					<li><a href="../ajax/grid.html">Grid</a></li>
					<li><a href="../ajax/treeview.html">Tree View</a></li>
					<li><a href="../ajax/nestable-list.html">Nestable Lists</a></li>
					<li><a href="../ajax/jqui.html">JQuery UI</a></li>
					<li><a href="../ajax/typography.html">Typography</a></li>
					<li><a href="#">Six Level Menu</a>
						<ul>
							<li><a href="#"><i class="fa fa-fw fa-folder-open"></i>
									Item #2</a>
								<ul>
									<li><a href="#"><i class="fa fa-fw fa-folder-open"></i>
											Sub #2.1 </a>
										<ul>
											<li><a href="#"><i class="fa fa-fw fa-file-text"></i>
													Item #2.1.1</a></li>
											<li><a href="#"><i class="fa fa-fw fa-plus"></i>
													Expand</a>
												<ul>
													<li><a href="#"><i class="fa fa-fw fa-file-text"></i>
															File</a></li>
												</ul></li>
										</ul></li>
								</ul></li>
							<li><a href="#"><i class="fa fa-fw fa-folder-open"></i>
									Item #3</a>

								<ul>
									<li><a href="#"><i class="fa fa-fw fa-folder-open"></i>
											3ed Level </a>
										<ul>
											<li><a href="#"><i class="fa fa-fw fa-file-text"></i>
													File</a></li>
											<li><a href="#"><i class="fa fa-fw fa-file-text"></i>
													File</a></li>
										</ul></li>
								</ul></li>
							<li><a href="#" class="inactive"><i
									class="fa fa-fw fa-folder-open"></i> Item #4 (disabled)</a></li>

						</ul></li>
				</ul></li>
			<li><a href="../ajax/widgets.html"><i
					class="fa fa-lg fa-fw fa-list-alt"></i> <span
					class="menu-item-parent">Widgets</span></a></li>
			<li><a href="#"><i class="fa fa-lg fa-fw fa-cloud"><em>3</em></i>
					<span class="menu-item-parent">Cool Features!</span></a>
				<ul>
					<li><a href="../ajax/calendar.html"><i
							class="fa fa-lg fa-fw fa-calendar"></i> <span
							class="menu-item-parent">Calendar</span></a></li>
					<li><a href="../ajax/gmap-xml.html"><i
							class="fa fa-lg fa-fw fa-map-marker"></i> <span
							class="menu-item-parent">GMap Skins</span><span
							class="badge bg-color-greenLight pull-right inbox-badge">9</span></a>
					</li>
				</ul></li>
			<li><a href="#"><i class="fa fa-lg fa-fw fa-puzzle-piece"></i>
					<span class="menu-item-parent">App Views</span></a>
				<ul>
					<li><a href="../ajax/projects.html"><i
							class="fa fa-file-text-o"></i> Projects</a></li>
					<li><a href="../ajax/blog.html"><i class="fa fa-paragraph"></i>
							Blog</a></li>
					<li><a href="../ajax/gallery.html"><i
							class="fa fa-picture-o"></i> Gallery</a></li>
					<li><a href="#"><i class="fa fa-comments"></i> Forum
							Layout</a>
						<ul>
							<li><a href="../ajax/forum.html">General View</a></li>
							<li><a href="../ajax/forum-topic.html">Topic View</a></li>
							<li><a href="../ajax/forum-post.html">Post View</a></li>
						</ul></li>
					<li><a href="../ajax/profile.html"><i class="fa fa-group"></i>
							Profile</a></li>
					<li><a href="../ajax/timeline.html"><i
							class="fa fa-clock-o"></i> Timeline</a></li>
					<li><a href="../ajax/search.html"><i class="fa fa-search"></i>
							Search Page</a></li>
				</ul></li>
			<li><a href="#"><i class="fa fa-lg fa-fw fa-shopping-cart"></i>
					<span class="menu-item-parent">E-Commerce</span></a>
				<ul>
					<li><a href="../ajax/orders.html">Orders</a></li>
					<li><a href="../ajax/products-view.html">Products View</a></li>
					<li><a href="../ajax/products-detail.html">Products Detail</a></li>
				</ul></li>
			<li><a href="#"><i class="fa fa-lg fa-fw fa-windows"></i> <span
					class="menu-item-parent">Miscellaneous</span></a>
				<ul>
					<li><a href="../Landing_Page/" target="_blank">Landing
							Page <i class="fa fa-external-link"></i>
					</a></li>
					<li><a href="../ajax/pricing-table.html">Pricing Tables</a></li>
					<li><a href="../ajax/invoice.html">Invoice</a></li>
					<li><a href="../login.html" target="_top">Login</a></li>
					<li><a href="../register.html" target="_top">Register</a></li>
					<li><a href="../forgotpassword.html" target="_top">Forgot
							Password</a></li>
					<li><a href="../lock.html" target="_top">Locked Screen</a></li>
					<li><a href="../ajax/error404.html">Error 404</a></li>
					<li><a href="../ajax/error500.html">Error 500</a></li>
					<li><a href="../ajax/blank_.html">Blank Page</a></li>
				</ul></li>
			<li class="chat-users top-menu-invisible"><a href="#"><i
					class="fa fa-lg fa-fw fa-comment-o"><em
						class="bg-color-pink flash animated">!</em></i> <span
					class="menu-item-parent">Smart Chat API <sup>beta</sup></span></a>
				<ul>
					<li>
						<!-- DISPLAY USERS -->
						<div class="display-users">

							<input class="form-control chat-user-filter" placeholder="Filter"
								type="text"> <a href="#" class="usr" data-chat-id="cha1"
								data-chat-fname="Sadi" data-chat-lname="Orlaf"
								data-chat-status="busy"
								data-chat-alertmsg="Sadi Orlaf is in a meeting. Please do not disturb!"
								data-chat-alertshow="true" data-rel="popover-hover"
								data-placement="right" data-html="true"
								data-content="
											<div class='usr-card'>
												<img src='img/avatars/5.png' alt='Sadi Orlaf'>
												<div class='usr-card-content'>
													<h3>Sadi Orlaf</h3>
													<p>Marketing Executive</p>
												</div>
											</div>
										">
								<i></i>Sadi Orlaf
							</a> <a href="#" class="usr" data-chat-id="cha2"
								data-chat-fname="Jessica" data-chat-lname="Dolof"
								data-chat-status="online" data-chat-alertmsg=""
								data-chat-alertshow="false" data-rel="popover-hover"
								data-placement="right" data-html="true"
								data-content="
											<div class='usr-card'>
												<img src='img/avatars/1.png' alt='Jessica Dolof'>
												<div class='usr-card-content'>
													<h3>Jessica Dolof</h3>
													<p>Sales Administrator</p>
												</div>
											</div>
										">
								<i></i>Jessica Dolof
							</a> <a href="#" class="usr" data-chat-id="cha3"
								data-chat-fname="Zekarburg" data-chat-lname="Almandalie"
								data-chat-status="online" data-rel="popover-hover"
								data-placement="right" data-html="true"
								data-content="
											<div class='usr-card'>
												<img src='img/avatars/3.png' alt='Zekarburg Almandalie'>
												<div class='usr-card-content'>
													<h3>Zekarburg Almandalie</h3>
													<p>Sales Admin</p>
												</div>
											</div>
										">
								<i></i>Zekarburg Almandalie
							</a> <a href="#" class="usr" data-chat-id="cha4"
								data-chat-fname="Barley" data-chat-lname="Krazurkth"
								data-chat-status="away" data-rel="popover-hover"
								data-placement="right" data-html="true"
								data-content="
											<div class='usr-card'>
												<img src='img/avatars/4.png' alt='Barley Krazurkth'>
												<div class='usr-card-content'>
													<h3>Barley Krazurkth</h3>
													<p>Sales Director</p>
												</div>
											</div>
										">
								<i></i>Barley Krazurkth
							</a> <a href="#" class="usr offline" data-chat-id="cha5"
								data-chat-fname="Farhana" data-chat-lname="Amrin"
								data-chat-status="incognito" data-rel="popover-hover"
								data-placement="right" data-html="true"
								data-content="
											<div class='usr-card'>
												<img src='img/avatars/female.png' alt='Farhana Amrin'>
												<div class='usr-card-content'>
													<h3>Farhana Amrin</h3>
													<p>Support Admin <small><i class='fa fa-music'></i> Playing Beethoven Classics</small></p>
												</div>
											</div>
										">
								<i></i>Farhana Amrin (offline)
							</a> <a href="#" class="usr offline" data-chat-id="cha6"
								data-chat-fname="Lezley" data-chat-lname="Jacob"
								data-chat-status="incognito" data-rel="popover-hover"
								data-placement="right" data-html="true"
								data-content="
											<div class='usr-card'>
												<img src='img/avatars/male.png' alt='Lezley Jacob'>
												<div class='usr-card-content'>
													<h3>Lezley Jacob</h3>
													<p>Sales Director</p>
												</div>
											</div>
										">
								<i></i>Lezley Jacob (offline)
							</a> <a href="ajax/chat.html"
								class="btn btn-xs btn-default btn-block sa-chat-learnmore-btn">About
								the API</a>

						</div> <!-- END DISPLAY USERS -->
					</li>
				</ul></li>
		</ul>
	</nav>
	<a href="#ajax/difver.html" class="btn btn-primary nav-demo-btn"><i
		class="fa fa-info-circle"></i> SmartAdmin Package (187 MB)</a> <span
		class="minifyme" data-action="minifyMenu"> <i
		class="fa fa-arrow-circle-left hit"></i>
	</span>

</aside>
<!-- END NAVIGATION -->





