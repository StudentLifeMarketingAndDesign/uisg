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
					  <% loop Meetings.Limit(5) %>
						  <% if $MultipleOf(10) %>
							</tbody>				
					        <tbody class="table-page">
						  <% end_if %>
						<tr class="$EvenOdd">
						<td><a href="$Link">$Date.Format("F d, Y") $Time &rarr;</a>
						</td>
						<td class="documents">
							<% if Agenda %>
								<a href="$Agenda.URL" class="btn">Agenda <img src="$Agenda.Icon" class="show-for-large-up" alt="Agenda Icon"/></a>
							<% end_if %>
							<% if MeetingNotes %>
								<a href="$MeetingNotes.URL" class="btn">Meeting Minutes <img src="$MeetingNotes.Icon" class="show-for-large-up"  alt="Meeting Notes Icons"/></a> 
							<% end_if %>
							<% if Legislation1 %>
								<a href="$Legislation1.URL" class="btn">Legislation 1 <img src="$Legislation1.Icon" class="show-for-large-up"  alt ="Legislation Icon" /></a>
							<% end_if %>
							<% if Legislation2 %>
								<a href="$Legislation2.URL" class="btn">Legislation 2 <img src="$Legislation2.Icon" class="show-for-large-up" alt ="Legislation Icon"/></a>
							<% end_if %>			
						</td>
					</tr>
					<% end_loop %>
					</tbody>
			   </table>
			   <div class="showMore">
			   <li><a href="$Link" class="$LinkingMode">All $Title</a></li>
			   </div>	
			<% end_loop %>
	    </section>
	    <section class="sec-content hide-print">
	    	<% include SideContact %>
	    	<% include SideNav %>
	    </section>
	</div>
</div>
