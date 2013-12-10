<% if $BackgroundImage %>
	<div class="img-container" style="background-image: url($BackgroundImage.URL);">
		<div class="img-fifty-top"></div>
	</div>
<% end_if %>
<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>
	    <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
	    	$Form
	    	$Content
			<ul class="initiatives-list">
                  <% loop $Children %>
                        <li>
                              <% if $Photo %>
                              <a href="$Link" class="initiatives-link">
                                    
                                    <img src="$Photo.CroppedImage(350,234).URL" alt="$FirstName $LastName" class="initiatives-img">
                              </a>
                              <% else %>
                              <a href="$Link" class="initiatives-link">
                                    
                                    <img src="division-project/images/dosl.png" alt="$FirstName $LastName" class="initiatives-img">
                              </a>
                              <% end_if %>
                              <p class="initiatives-name">
                                    <a href="$Link">$Title</a>
                                
                              </p>
                        </li>
                  <% end_loop %>
                        <li class="filler"></li>
                        <li class="filler"></li>
                  </ul>
                  
	    </section>
	    <section class="sec-content hide-print">
	    	<% include SideNav %>
	    </section>
	</div>
</div>
<%-- <% include TopicsAndNews %> --%>