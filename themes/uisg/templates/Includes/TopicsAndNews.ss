  		<section class="hide-print">
            <div class="container">
                <div class="colgroup">
                    <div class="col-1-2 mod">
                        <h3 class="mod-title">Initiatives</h3>
                        <ul class="grid-justify">
                        	<% loop ChildrenOf(initiatives) %>
                        	<li><a href="{$Link}">$Title</a></li>
                        	<% end_loop %>
                        </ul>
                    </div>
                    <div class="col-1-2 mod mod-news">
                    	<% with Page(news) %>
							<% if $BlogPosts %>
						        <h3 class="mod-title">News</h3>
						        <ul class="unstyled">
						        	<% loop $BlogPosts.Limit(3) %>
							        	<li><a href="$Link">$MenuTitle</a>
							        		<% if $Date %><small>$Date.Format('M. j')</small><% end_if %>
							        	</li>
						        	<% end_loop %>
						        	<li><hr /><a href="$Link">View all news &rarr;</a></li>
						        </ul>
							<% end_if %>
						<% end_with %>
                    </div>
                    
            </div>
        </section>
