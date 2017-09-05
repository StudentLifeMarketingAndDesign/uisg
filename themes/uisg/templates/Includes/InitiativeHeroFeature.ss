<% if $FeaturedInitiative %>
<% with $FeaturedInitiative %>
<div class="hero-article clearfix">
    <h3 class="hero-title">
        <a href="$Link">$Title.LimitCharacters(40)</a>
    </h3>
    <div class="hero-content">$Content.Summary(30)</div>
    <a href="$Link" class="hero-link">Read More</a>
</div>
<% end_with %>
<% end_if %>