<div style="background: #fafafa;position: relative;" class="news">
    <div class="img-fifty"></div>
      <section class="container content-wrapper clearfix">
            <!-- $Breadcrumbs -->
            <section class="main-content">

            	<h1>$Title</h1>

            	<% if $Photo %>
            		<img src="$Photo.CroppedImage(765,512).URL" alt="$FirstName $LastName">
            	<% end_if %>
            	
            	$Content

            </section>
            <section class="sec-content">
            	<% include SideNav %>
            </section>
      </section>
</div>
<%-- <% include TopicsAndNews %> --%>
