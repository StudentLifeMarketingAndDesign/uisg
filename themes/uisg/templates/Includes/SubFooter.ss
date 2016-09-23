<footer class="subfooter clearfix" role="contentinfo">
	<div class="row">
		<div class="medium-6 large-5 columns">

			<% with Page("calendar") %>
		<div class="large-8 columns mod mod-events">
			<h2 class="mod-title text-center">Upcoming events</h2>
			<% if $EventList %>
				
				<ul class="large-block-grid-3 event-list">
					
						<% loop EventList.Limit(6) %>
							<% include HomePageEvent %>
						<% end_loop %>
					
				</ul>

				<p class="text-center"><a href="http://events.uiowa.edu/search/events/1?event_types%5B%5D=32570" target="_blank">See all Center For Student Involvement &amp; Leadership events &rarr;</a></p>
			<% else %>
				<p class="text-center"><a href="http://events.uiowa.edu/" target="_blank" data-icon="&#x23;">See all events happening on campus &rarr;</a></p>

			<% end_if %>
		</div>
		<% end_with %>

		</div>
	</div>
</footer>