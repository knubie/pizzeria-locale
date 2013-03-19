# Pizzeria Locale

### Asset precompilation
Use Foreman to compile the Slim, Sass and Coffeescript: `foreman start`. Tasks can be modified or augmented with in the Procfile.* 

### Sass

Use the media-query mixins found in `css/sass/_media-queries.scss`.

	.my-class {
		background-color: red;
		@include tablet-landscape-and-up { width: 960px; }
		@include tablet-portrait-and-only { width: 768px; }
	}

Use prefix mixins to avoid spaming style sheets with redundant properties.

	.my-class {
		background-color: red;
		@include transform(rotate(45deg));
	}
