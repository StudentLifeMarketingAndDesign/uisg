<section class="topics hide-print">
            <div class="row">
                
                    <div class="large-4 large-offset-1 columns mod">
                        <h3 class="mod-title">Initiatives</h3>
                        <ul class="topics-list">
                            <% loop ChildrenOf(initiatives) %>
                            <li><a href="{$Link}">$Title</a></li>
                            <% end_loop %>
                            <li><a href="initiatives/">View all initiatives &rarr;</a></li>
                        </ul>
                    </div>
                <div class="large-4 large-offset-2 end columns mod mod-news">
                    <% with Page("news") %>
                        <% if $BlogPosts %>
                            <h3 class="mod-title">News</h3>
                            <ul class="topics-list">
                                <% loop $BlogPosts.Limit(15) %>
                                    <li><a href="$Link">$MenuTitle</a>
                                        <% if $Date %><small>$Date.Format('M. j')</small><% end_if %>
                                    </li>
                                <% end_loop %>
                                <li><a href="$Link">View all news &rarr;</a></li>
                            </ul>
                        <% end_if %>
                    <% end_with %>
                </div>
            </div>
    </section>