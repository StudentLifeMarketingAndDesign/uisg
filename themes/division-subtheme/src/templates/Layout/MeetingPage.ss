$Header
<main class="main-content__container" id="main-content__container">

	<!-- Background Image Feature -->
	<% if $BackgroundImage %>
		<% include FeaturedImage %>
	<% end_if %>
	$Breadcrumbs
	<%-- 	<% include MainContentBody %>   --%>
	<% if not $BackgroundImage %>
		<div class="column row">
			<div class="main-content__header">
				<h1>$Title</h1>
			</div>
		</div>
	<% end_if %>

	$BlockArea(BeforeContent)

	<div class="row">
	<article role="main" class="main-content main-content--with-padding <% if $SiteConfig.ShowExitButton %>main-content--with-exit-button-padding<% end_if %> <% if $Children || $Menu(2) || $SidebarBlocks ||  $SidebarView.Widgets %>main-content--with-sidebar<% else %>main-content--full-width<% end_if %>">
		$BlockArea(BeforeContentConstrained)
			<div class="main-content__text">

			<h2>Meeting Date</h2> <p>$Date.NiceUS at $Time</p>
			<h2>Location</h2><p>$Location</p>

			<h2>Meeting Documents</h2>
			<p>
				<% if $Agenda || $MeetingNotes || $Legislation1 || $Legislation2 %>
					<% if Agenda %>
						<a href="$Agenda.URL" class="btn">Agenda</a>
					<% end_if %>
					<% if MeetingNotes %>
						<a href="$MeetingNotes.URL" class="btn"> Meeting Minutes</a>
					<% end_if %>
					<% if Legislation1 %>
						<a href="$Legislation1.URL" class="btn"> Legislation 1</a>
					<% end_if %>
					<% if Legislation2 %>
						<a href="$Legislation2.URL" class="btn"> Legislation 2</a>
					<% end_if %>
				<% else %>
					There are no documents listed for this meeting.
				<% end_if %>
			</p>
		
			<% if Notes %>
				<h3>Additional Notes:</h3>
				$Notes
			<% end_if %>
		    

			</div>
		</article>
		<aside class="sidebar dp-sticky">
			<% include SideNav %>
			<% if $SideBarView %>
				$SideBarView
			<% end_if %>
			$BlockArea(Sidebar)
		</aside>
	</div>
$BlockArea(AfterContent)
</main>
