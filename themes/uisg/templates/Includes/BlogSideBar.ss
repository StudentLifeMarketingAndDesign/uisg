<aside>
	<% include SideBarSearch %>
	<div id="blog-sidebar">
		$Parent.SideBarView
	</div>
	<% if ClassName == 'BlogEntry' %><div class="mod"><p><a href="$BlogHolder.Link">View all entries</a></p></div><% end_if %>
	  
	<% if SidebarItems %>
			<% loop SidebarItems %>
				<% include SidebarItem %>
			<% end_loop %>
	<% end_if %>
</aside>