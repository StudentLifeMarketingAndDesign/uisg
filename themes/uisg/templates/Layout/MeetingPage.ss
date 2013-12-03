<% if $BackgroundImage %>
	<div class="img-container" style="background-image: url($BackgroundImage.URL);">
		<div class="img-fifty-top"></div>
	</div>
<% end_if %>
<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>
	    <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
<h1>$Title</h1>
	
		<h2>Meeting Date:</h2> <p>$Date.NiceUS at $Time</p>
		<h2>Location:</h2><p>$Location</p>
		<h2>Meeting Downloads and Minutes:</h2>
		<ul>
		<% if Agenda %>
			<li><a href="$Agenda.URL">Agenda ({$Agenda.getExtension})</a></li>
		<% end_if %>
		<% if MeetingNotes %>
			<li><a href="$MeetingNotes.URL">Meeting Minutes ({$Agenda.getExtension})</a></li>
		<% end_if %>
		<% if Legislation1 %>
			<li><a href="$Legislation1.URL">Legislation 1 ({$Agenda.getExtension})</a></li>
		<% end_if %>
		<% if Legislation2 %>
			<li><a href="$Legislation2.URL">Legislation 2 ({$Agenda.getExtension})</a></li>
		<% end_if %>	
	</ul>
	
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