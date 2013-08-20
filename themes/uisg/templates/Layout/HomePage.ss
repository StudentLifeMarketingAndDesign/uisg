<div class="slider-container">
  <div class="container">
  <div class="flexslider">
           <!-- <div class="hero-text">
                <ul>
                    <li><a href="manage-your-org/">See all of our initiatives</a></li>
                    <li><a href="services/">Get Involved with YOUR Student Government</a></li>
                </ul>
            </div>--><!-- end hero-text -->
      <ul class="slides">
        <%--
        <% loop Slides %>
        <li>
          <a href="$Link" target="_blank"><img src="$ImageURL" alt="Slideshow Photo $Pos" /></a>
          <p class="flex-caption"><a href="$Link" class="full-desc" target="_blank">$Description</a><a class="mobile-desc">$Description.LimitCharacters(60)</a></p>
        </li>

        <% end_loop %> --%>
        <li>
          <a href="#" target="_blank"><img src="{$ThemeDir}/images/slide_1.jpg" alt="Slideshow Photo 1" /></a>
          <p class="flex-caption"><a href="$Link" class="full-desc" target="_blank">UISG and CAB present: Glow and Mingle</a><a class="mobile-desc">$Description.LimitCharacters(60)</a></p>
        </li>
        <li>
          <a href="#" target="_blank"><img src="{$ThemeDir}/images/slide_2.jpg" alt="Slideshow Photo 2" /></a>
          <p class="flex-caption"><a href="$Link" class="full-desc" target="_blank">SafeRide: A Free Taxi Service For Students in an Emergency Situation</a><a class="mobile-desc">$Description.LimitCharacters(60)</a></p>
        </li>

       </ul><!-- end slides -->
  </div><!-- end container -->
  </div><!-- end flexslider -->
</div><!-- end slider-container -->
    <section class="home-highlights">
        <div class="container clearfix">
            <% loop HomePageFeatures.limit(3) %>
                <% include HomePageFeature %>
            <% end_loop %>
         </div><!-- end .container -->
    </section>

    <section class="home-highlights">
        <div class="container clearfix">
            <% loop HomePageFeatures.limit(3,3) %>
                <% include HomePageFeature %>
            <% end_loop %>
         </div><!-- end .container -->
    </section>
    <% include TopicsAndNews %>
