
<div class="gradient">
      <div class="container clearfix">
            <div class="white-cover"></div>
          <section class="main-content staff-content">
<h1>$Title</h1>
            $Form
            $Content
            <% loop Teams %>
                  <h2 class="staff-title">$Title</h2>
                  <% if $GroupImage %>
                        <img src="$GroupImage.SetWidth(800).URL" alt="Group Photo of $Title" class="group-image" />
                  <% end_if %>
                  <ul class="staff-list">
                  <% loop $SortedStaffPages %>
                    <% include StaffPageListItem %>
                  <% end_loop %>
                        <li class="filler"></li>
                        <li class="filler"></li>
                  </ul>
                  
            <% end_loop %>
          </section>
          <section class="sec-content hide-print">
            <% include SideContact %>
            <% include SideNav %>
          </section>
      </div>
</div>
 <% include TopicsAndNews %>
