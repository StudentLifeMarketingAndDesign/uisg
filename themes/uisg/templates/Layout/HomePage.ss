<style>
.hero {
  border-bottom: 5px solid #ffce39;
  position: relative;
  padding: 2em 0;
  background-color: #FFF;
}
@media screen and (min-width: 480px) and (max-width: 768px) {
  .hero {
    background: black url({$ThemeDir}/images/hero-image-md.jpg) no-repeat center top;
    padding: 4em 0;
  }
}
@media screen and (min-width: 768px) {
  .hero {
    background: black url({$ThemeDir}/images/hero-image.jpg) no-repeat center top;
    padding: 0;
    height: 665px;
  }
}
</style>
<div class="hero">
        <div class="container clearfix">

        <% if HomePageHeroFeatures.limit(2) %>
            <div class="hero-article-wrapper">

                <% loop HomePageHeroFeatures %>
                <div class="hero-article clearfix">
                    <% if $Image %>
                    	<% if $UseExternalLink %>
                    		<a href="$ExternalLink" target="_blank"><img src="$Image.URL" alt=""></a>
                    	<% else %>
                        	<a href="$AssociatedPage.Link"><img src="$Image.URL" alt=""></a>
                        <% end_if %>
                    <% end_if %>
                    <h3 class="hero-title">
	                    <% if $UseExternalLink %>
	                    	<a href="$ExternalLink" target="_blank">$Title</a>
	                    <% else %>
	                    	<a href="$AssociatedPage.Link">$Title</a>
	                    <% end_if %>
                    </h3>
                    <div class="hero-content">$Content</div>
                    <% if $UseExternalLink %>
                    	<a href="$ExternalLink" target="_blank" class="hero-link">Read More</a>
                    <% else %>
                    	<a href="$AssociatedPage.Link" class="hero-link">Read More</a>
                    <% end_if %>
                </div>
              <% end_loop %>


	          </div>
         <% end_if %>

         <% include HomePageHeroText %>

        </div>

    </div>
<section class="home-highlights">
        <div class="container clearfix">
          <div class="module facebook">   
            <iframe src="//www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fuistudentgov&amp;width&amp;height=395&amp;colorscheme=light&amp;show_faces=false&amp;header=false&amp;stream=true&amp;show_border=false&amp;appId=127918570561161" scrolling="no" frameborder="0" style="border:none; overflow:hidden; height:395px;" allowTransparency="true"></iframe>
          </div>
          <div class="module question-box">
            <div class="inner">
              <h3>Questions or Comments for UISG?</h3>
              $ContactForm
            </div>
          </div>
          <div class="module latest-post">
            <div class="inner">
              <h3>Latest Posts</h3>
              <% with $Page("news") %>
                <% loop Entries(5) %>
                <article>
                  <h4><a href="$Link">$Title</a></h4>
                </article>
                <hr />
                <% end_loop %>
              <% end_with %>
            </div>
          </div>
         </div><!-- end .container -->
    </section>



    <%-- <% include TopicsAndNews %> --%>
