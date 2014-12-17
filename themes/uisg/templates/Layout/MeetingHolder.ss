<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>
	    <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">

	<h1>$Title</h1>
			$Content
			<% loop AllChildren %>
				<h2> $Title </h2>
					$Content
				<table class="meetings">
			
				<tr>
					<th>Meeting Date</th>
					<th>Available Documents</th>
				</tr>
				    <tbody class="table-page table-start">	
					  <% loop Meetings %>
						  <% if $MultipleOf(10) %>
							</tbody>				
					        <tbody class="table-page">
						  <% end_if %>
						<tr class="$EvenOdd">
						<td><a href="$Link" class="button">$Date.Format("F d, Y") $Time</a>
						</td>
						<td class="documents">
							<% if Agenda %>
								<a href="$Agenda.URL" class="button">Agenda <img src="$Agenda.Icon" alt="Agenda Icon"/></a>
							<% end_if %>
							<% if MeetingNotes %>
								<a href="$MeetingNotes.URL" class="button">Meeting Minutes <img src="$MeetingNotes.Icon" alt="Meeting Notes Icons"/></a> 
							<% end_if %>
							<% if Legislation1 %>
								<a href="$Legislation1.URL" class="button">Legislation 1 <img src="$Legislation1.Icon" alt ="Legislation Icon" /></a>
							<% end_if %>
							<% if Legislation2 %>
								<a href="$Legislation2.URL" class="button">Legislation 2 <img src="$Legislation2.Icon" alt ="Legislation Icon"/></a>
							<% end_if %>			
						</td>
					</tr>
					<% end_loop %>
					</tbody>
			   </table>
			   <div class="showMore"></div>	
			<% end_loop %>
	    </section>
	    <section class="sec-content hide-print">
	    	<% include SideContact %>
	    	<% include SideNav %>
	    </section>
	</div>
</div>
