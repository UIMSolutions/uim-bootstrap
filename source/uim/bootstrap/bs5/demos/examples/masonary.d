module uim.bootstrap.bs5.demos.examples.masonary;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/masonary", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Starter Page - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

      return 
`style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
  </head>
  <body>
    
<main class="container py-5">
  <h1>Bootstrap and Masonry</h1>
  H5P(["lead">Integrate H5A(["https://masonry.desandro.com/">Masonry"), with the Bootstrap grid system and cards component.")

  H5P("Masonry is not included in Bootstrap. Add it by including the JavaScript plugin manually, or using a CDN like so:")

  <pre><code>
&lt;script src=&quot;https://cdn.jsdelivr.net/npm/masonry-layout@4.2.2/dist/masonry.pkgd.min.js&quot; integrity=&quot;sha384-GNFwBvfVxBkLMJpYMOABq3c+d3KnQxudP/mGPkzpZSTYykLBNsZEnG2D9G/X/+7D&quot; crossorigin=&quot;anonymous&quot; async&gt;&lt;/script&gt;
  </code></pre>

  H5P("By adding <code>data-masonry='{"percentPosition": true }'</code> to the <code>.row</code> wrapper, we can combine the powers of Bootstrap's responsive grid and Masonry's positioning.")

  <hr class="my-5">

  H5Div(["row" data-masonry='{"percentPosition": true }'>
    H5Div(["col-sm-6 col-lg-4 mb-4">
      H5Div(["card">
        H5Svg(["bd-placeholder-img card-img-top" "width":"100%" "height":"200" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#868e96"/><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>

        H5Div(["card-body">
          <h5 class="card-title">Card title that wraps to a new line</h5>
          H5P(["card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.")
        ),
      ),
    ),
    H5Div(["col-sm-6 col-lg-4 mb-4">
      H5Div(["card p-3">
        <figure class="p-3 mb-0">
          <blockquote class="blockquote">
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.")
          </blockquote>
          <figcaption class="blockquote-footer mb-0 text-muted">
            Someone famous in <cite title="Source Title">Source Title</cite>
          </figcaption>
        </figure>
      ),
    ),
    H5Div(["col-sm-6 col-lg-4 mb-4">
      H5Div(["card">
        H5Svg(["bd-placeholder-img card-img-top" "width":"100%" "height":"200" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#868e96"/><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
        H5Div(["card-body">
          <h5 class="card-title">Card title</h5>
          H5P(["card-text">This card has supporting text below as a natural lead-in to additional content.")
          H5P(["card-text"><small class="text-muted">Last updated 3 mins ago</small>")
        ),
      ),
    ),
    H5Div(["col-sm-6 col-lg-4 mb-4">
      H5Div(["card bg-primary text-white text-center p-3">
        <figure class="mb-0">
          <blockquote class="blockquote">
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat.")
          </blockquote>
          <figcaption class="blockquote-footer mb-0 text-white">
            Someone famous in <cite title="Source Title">Source Title</cite>
          </figcaption>
        </figure>
      ),
    ),
    H5Div(["col-sm-6 col-lg-4 mb-4">
      H5Div(["card text-center">
        H5Div(["card-body">
          <h5 class="card-title">Card title</h5>
          H5P(["card-text">This card has a regular title and short paragraph of text below it.")
          H5P(["card-text"><small class="text-muted">Last updated 3 mins ago</small>")
        ),
      ),
    ),
    H5Div(["col-sm-6 col-lg-4 mb-4">
      H5Div(["card">
        H5Svg(["bd-placeholder-img card-img" "width":"100%" "height":"260" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: Card image" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#868e96"/><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Card image</text></svg>
      ),
    ),
    H5Div(["col-sm-6 col-lg-4 mb-4">
      H5Div(["card p-3 text-end">
        <figure class="mb-0">
          <blockquote class="blockquote">
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.")
          </blockquote>
          <figcaption class="blockquote-footer mb-0 text-muted">
            Someone famous in <cite title="Source Title">Source Title</cite>
          </figcaption>
        </figure>
      ),
    ),
    H5Div(["col-sm-6 col-lg-4 mb-4">
      H5Div(["card">
        H5Div(["card-body">
          <h5 class="card-title">Card title</h5>
          H5P(["card-text">This is another card with title and supporting text below. This card has some additional content to make it slightly taller overall.")
          H5P(["card-text"><small class="text-muted">Last updated 3 mins ago</small>")
        ),
      ),
    ),
  ),
</main>
`;

    }
  });
}
 
