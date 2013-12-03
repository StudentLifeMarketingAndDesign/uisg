<div class="staff-container">
<div class="container clearfix">
      <section class="staff-content">
      	$Form
      	$Content
      	<% loop Teams %>
                  <h2 class="staff-title">$Title</h2>
                  <% if $GroupImage %>
                        <img src="$GroupImage.URL" alt="Group Photo of $Title" />
                  <% end_if %>
                  <ul class="staff-list">
                  <% loop $SortedStaffPages %>
                        <li>
                              <p class="staff-name">
                                    <a href="$Link">$FirstName $LastName</a>
                                    <% if $Position %><small class="staff-position">$Position</small><% end_if %>
                              </p>
                        </li>
                  <% end_loop %>
                        <li class="filler"></li>
                        <li class="filler"></li>
                  </ul>
                  
      	<% end_loop %>
      	
      </section>
</div>
</div>
<%-- <% include TopicsAndNews %> --%>
