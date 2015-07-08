<% if $BackgroundImage %>
	<div class="img-container" style="background-image: url($BackgroundImage.URL);">
		<div class="img-fifty-top"></div>
	</div>
<% end_if %>
<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>
	    <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
	    $Breadcrumbs
		<h1>$Title</h1>
		<h2>Meeting Date</h2> <p>$Date.NiceUS at $Time</p>
		<h2>Location</h2><p>$Location</p>

		<h2>Meeting Documents</h2>
		<p>
		<% if Agenda %>
			<a href="$Agenda.URL" class="btn">Agenda <img src="$Agenda.Icon" /></a>
		<% end_if %>
		<% if MeetingNotes %>
			<a href="$MeetingNotes.URL" class="btn">Meeting Minutes <img src="$MeetingNotes.Icon" alt ="Image representing a Downloadable Document" /></a>
		<% end_if %>
		<% if Legislation1 %>
			<a href="$Legislation1.URL" class="btn">Legislation 1 <img src="$Legislation1.Icon" alt= "Image representing a Downloadable Document"/></a>
		<% end_if %>
		<% if Legislation2 %>
			<a href="$Legislation2.URL" class="btn">Legislation 2 <img src="$Legislation2.Icon" alt = "Image representing a Downloadable Document"/></a>
		<% end_if %>	
	</p>
	
		<% if Notes %>
			<h3>Additional Notes:</h3>
			$Notes
		<% end_if %>
	    </section>
	    <section class="sec-content hide-print">

	    	<% include SideNav %>
	    </section>
	</div>
</div>
<%-- <% include TopicsAndNews %> --%>