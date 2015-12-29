<style>
.hero {
  border-bottom: 5px solid #ffce39;
  position: relative;
  padding: 2em 0;
  background-color: #FFF;
}
@media screen and (min-width: 480px) and (max-width: 768px) {
  .hero {
  <% if $BackgroundFeature %>
    background: black url({$BackgroundFeature.Image.URL}) no-repeat center top;
  <% else %>
    background: black url({$ThemeDir}/images/hero-image-md.jpg) no-repeat center top;
  <% end_if %>
    padding: 4em 0;
  }
}
@media screen and (min-width: 768px) {
  .hero {
  <% if $BackgroundFeature %>
    background: black url({$BackgroundFeature.Image.URL}) no-repeat center top;
  <% else %>
    background: black url({$ThemeDir}/images/hero-image.jpg) no-repeat center top;
  <% end_if %>
    padding: 0;
    height: 665px;
  }
}
</style>
<div class="hero">
        <div class="container clearfix">

        <% if HomePageHeroFeatures.Limit(2) %>
            <div class="hero-article-wrapper">

              <% loop HomePageHeroFeatures.Limit(2) %>
                <% include HomePageHeroFeature %>
              <% end_loop %>


            </div>
         <% end_if %>

         <% include HomePageHeroText %>

        </div>

    </div>
<section class="home-highlights">
        <div class="container clearfix">
          <div class="module facebook">   
            <% include FbPageBox %>
          </div>
          <div class="module question-box">
            <div class="inner">
              <h3>Questions or Comments for UISG?</h3>
                <a href="contact/" class="btn">View our contact form</a>
                <hr />
                University of Iowa Student Government <br />
                260B Iowa Memorial Union <br />
                Phone: 319-335-3860 <br />
                Email: <a href="mailto:uisg@uiowa.edu">uisg@uiowa.edu</a>
            </div>
          </div>
          <div class="module latest-post">
            <div class="inner">
              <h3>Latest Posts</h3>
              <% with $Page("news") %>
                <% loop BlogPosts.Limit(3) %>
                <article>
                  <h4><a href="$Link">$Title</a></h4>
                 	 <p>$Content.LimitCharacters(60) <a href="$Link" title="Read more on &quot;{$Title}&quot;">Continue Reading</a></p>
                </article>
                <hr />
                <% end_loop %>
                <p><a href="$Link">View all news &rarr;</a></p>
              <% end_with %>
            </div>
          </div>
         </div><!-- end .container -->
    </section>



     <% include TopicsAndNews %> 
