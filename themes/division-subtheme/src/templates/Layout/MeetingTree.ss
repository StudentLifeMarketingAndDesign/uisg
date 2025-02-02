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
	    <article role="main" class="main-content main-content--with-padding <% if $SiteConfig.ShowExitButton %>main-content--with-exit-button-padding<% end_if %> <% if $Children || $Menu(2) || $SidebarArea.Elements ||  $SidebarView.Widgets %>main-content--with-sidebar<% else %>main-content--full-width<% end_if %>">
	    	$BlockArea(BeforeContentConstrained)
			<div class="main-content__text">
			<% loop AllChildren %>
				<h2> $Title </h2>
					$Content
				<table>

				<tr>
					<th>Meeting Date</th>
					<th>Available Documents</th>
				</tr>
				    <tbody>
					  <% loop Meetings.Limit(5) %>
						  <% if $MultipleOf(10) %>
							</tbody>
					        <tbody>
						  <% end_if %>
						<tr class="$EvenOdd">
						<td><a href="$Link">$Date.Nice $Time </a>
						</td>
						<td>
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
						</td>
					</tr>
					<% end_loop %>
					</tbody>
			   </table>
			   <p><a href="$Link">Previous meetings &rarr;</a></p>
			<% end_loop %>
			</div>
			$BlockArea(AfterContentConstrained)
			$Form
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
