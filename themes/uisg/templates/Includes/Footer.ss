<% include TopicsAndNews %>
<footer class="footer clearfix" role="contentinfo">
    <div class="container">
        <div class="colgroup">
			<div class="col-1-2">
				<a href="http://studentlife.uiowa.edu" class="hide-print"><img src="division-project/images/dosl-uiowa.png" alt="Division Of Student Life" style="margin-top: -20px;"></a><br>
				<p>The Division of Student Life fosters student success by creating and promoting inclusive educationally purposeful services and activities within and beyond the classroom.</p>
				<p>249 Iowa Memorial Union, Iowa City, IA 52242<br>
					Phone: 319-335-3557</p>
			</div>
			<div class="col-1-4 hide-print">
				<div class="colgroup">
					<ul class="footer-nav">
						<li><a href="http://www.facebook.com/uistudentlife" target="_blank"><i class="icon-facebook"></i> Facebook</a></li>
						<li><a href="http://twitter.com/VPStudentLifeUI" target="_blank"><i class="icon-twitter"></i> Twitter</a></li>
					</ul>
					<ul class="footer-nav">
						<% loop Menu(1) %>
							<li><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
					</ul>
				</div>
			</div>
			<div class="col-1-4 hide-print">
				<h4>Support The Division</h4>
				<a href="https://www.givetoiowa.org/GiveToIowa/WebObjects/GiveToIowa.woa/wa/goTo?area=studentlife" class="appt-btn">Give Online Now</a>
			</div>
        </div>
        <hr>
        <p>&copy; $Now.Year <a href="http://www.uiowa.edu/" target="_blank">The University of Iowa</a>. All Rights Reserved.</p>
    </div>
</footer>