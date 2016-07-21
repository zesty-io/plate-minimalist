<!-- The loader has content that is in between the <body> tags and that is consistent across all the pages of your site. For example, you probably have the same header, footer, and navigation bar on each page. Therefore those elements of your page would go here.  -->

<div class="z-container">

	{{ include header }}

	<div class="structure content">
		{{ current_view }}

		<div class="clear"></div>
	</div>

	{{ include footer }}

</div>
