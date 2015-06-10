<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>
	    <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
	    	$Breadcrumbs
	    	<% if $MainImage %>
			<div>
			<img data-src="$MainImage.URL" src="<% include PlaceholderLargeSrc %>"alt="$Title" />
			</div>
			<% end_if %>
	    	<% if not $HideTextTitle %>
	    		<h1>$Title</h1>
	    	<% end_if %>
	    	$Content
	    </section>
	    <section class="sec-content hide-print">
	    	<% include SideNav %>
	    </section>
	</div>
</div>
<%-- <% include TopicsAndNews %> --%>
