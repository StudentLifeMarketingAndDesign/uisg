<footer class="subfooter clearfix" role="contentinfo">
	<div class="row">
		<div class="large-12 columns">
			<% cached %>
				<% with Page("calendar") %>
				
					<h2 class="mod-title text-center">Upcoming events</h2>
					<% if $EventList %>
						<ul class="large-block-grid-3 event-list">
					
						<% loop EventListRandom.Limit(3) %>
						<li>
						<a href="$AfterClassLink" target="_blank"><img data-src="$Image.URL" alt="Image representing the event: $Title" src="ac-json-events/images/LocalistEventPlaceholder.jpg" /></a>
						<h3><a href="$AfterClassLink" target="_blank">$Title</a></h3>
						<% include LocalistDatesNoLinks %>
						</li>					
						<% end_loop %>
					
						</ul>
						<p class="text-center"><a href="http://afterclass.uiowa.edu" target="_blank">See more events happening on campus &rarr;</a></p>
					<% else %>
						<p class="text-center"><a href="http://afterclass.uiowa.edu" target="_blank" data-icon="&#x23;">Find events happening on campus &rarr;</a></p>
					<% end_if %>
			
				<% end_with %>
			<% end_cached %>

		</div>
</footer>