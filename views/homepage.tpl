(** plate: minimalist > home page view **)

{{include garnish-jquery-nivo-slider}}

<div class="headline-break">
	<div class="z-row">
		<div class="col-4/5">
			<h4 class="headline">{{thispage.opening_header_text}}</h4>
		</div>
		<div class="col-1/5">
			<div class="link-wrapper">
				<a href="{{truePath({thispage.button_link})}}" class="button" title="Contact {{clippings.site_name}}">{{thispage.button_text}}</a>
			</div>
		</div>
		
	</div>
</div>

<div class="squares">
	{{include garnish-info-squares-snippet}}
</div>

<div class="headline-break">
	<div class="z-row">
		<div class="col-3/4">
			<h4>{{thispage.view_portfolio_text}}</h4>
		</div>
		<div class="col-1/4">
			<div class="link-wrapper">
				<a href="{{truePath({thispage.second_button_link})}}" class="button" title="{{thispage.button_text}}">{{thispage.second_button_text}}</a>
			</div>
		</div>
	</div>
</div>

<div class="z-row">
	{{each portfolio_item as port sort by port.zid desc limit 6}}
	<div class="col-1/3">
		<a href="{{port.getUrl()}}">
			<img class="z-responsive-width" src="{{port.main_image.getImage(300,335,crop)}}" alt="{{port.name}} Image">
		</a>
	</div>
	
		(** logic to create perfect columns and rows **)
		{{if {index} % 3 == 0 }}
</div><div class="z-row">
		{{end-if}}

{{end-each}}
</div>



