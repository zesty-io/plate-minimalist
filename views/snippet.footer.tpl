(** plate: minimalist > footer snippet **)
<div class="footer">
	
	<div class="z-row">
		
		<div class="col-1/3">
			<div class="footer-navigation">
				<h5>Navigation</h5>
				{{site.navigation(1)}}
			</div>
		</div>
		
		<div class="col-1/3">
			<div class="about-footer">
				<h5>{{clippings.about_header}}</h5>
				<p>{{clippings.about_text}}</p>
			</div>
		</div>
		
		<div class="col-1/3">
			<div class="contact-footer">
				<h5>{{contact_page.first().title}}</h5>
				<p>
					{{contact_page.first().address}}<br />
					{{contact_page.first().city}}, {{contact_page.first().state}} {{contact_page.first().zip}}<br>
					<a href="mailto:{{contact_page.first().email.obfuscate()}}">{{contact_page.first().email}}</a><br />
					<a href="tel:{{contact_page.first().phone.obfuscate()}}">{{contact_page.first().phone}}</a>
				</p>
			</div>
		</div>
		
	</div>

</div>

<p class="copyright">{{clippings.copyright}}. {{clippings.site_name}}</p>