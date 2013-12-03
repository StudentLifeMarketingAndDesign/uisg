<div id="content1"  class="typography padding">
	<div id="content">
		<div class="innerContent">
			<h1>$Title</h1>
			$Content
			<hr/>
			<% loop Children %>
				<h2> $Title </h2>
					$Content
				<table class="meetings">
			
				<tr>
					<th>Meeting Date</th>
					<th>Available Documents</th>
				</tr>
				<% loop Meetings %>
				<tr class="$EvenOdd">
					<td><a href="$Link">$Date.Format("F d, Y") $Time</a>
					</td>
					<td>
						<% if Agenda %>
							<a href="$Agenda.URL">Agenda</a>, 
						<% end_if %>
						<% if MeetingNotes %>
							<a href="$MeetingNotes.URL">Meeting Minutes</a>, 
						<% end_if %>
						<% if Legislation1 %>
							<a href="$Legislation1.URL">Legislation 1</a>, 
						<% end_if %>
						<% if Legislation2 %>
							<a href="$Legislation2.URL">Legislation 2</a>
						<% end_if %>
						
					</td>
				</tr>
				<% end_loop %>
		</table>
				
			<% end_loop %>
			
			$Form
		</div>
	</div>
</div>

