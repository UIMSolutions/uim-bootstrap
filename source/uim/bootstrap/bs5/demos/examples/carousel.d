module uim.bootstrap.bs5.demos.examples.carousel;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/carousel", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Album Page - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

      return 
`

    <style>
    /* GLOBAL STYLES
-------------------------------------------------- */
/* Padding below the footer and lighter body text */

body {
  padding-top: 3rem;
  padding-bottom: 3rem;
  color: #5a5a5a;
}


/* CUSTOMIZE THE CAROUSEL
-------------------------------------------------- */

/* Carousel base class */
.carousel {
  margin-bottom: 4rem;
}
/* Since positioning the image, we need to help out the caption */
.carousel-caption {
  bottom: 3rem;
  z-index: 10;
}

/* Declare heights because of positioning of img element */
.carousel-item {
  height: 32rem;
}
.carousel-item > img {
  position: absolute;
  top: 0;
  left: 0;
  min-width: 100%;
  height: 32rem;
}


/* MARKETING CONTENT
-------------------------------------------------- */

/* Center align the text within the three columns below the carousel */
.marketing .col-lg-4 {
  margin-bottom: 1.5rem;
  text-align: center;
}
.marketing h2 {
  font-weight: 400;
}
/* rtl:begin:ignore */
.marketing .col-lg-4 p {
  margin-right: .75rem;
  margin-left: .75rem;
}
/* rtl:end:ignore */


/* Featurettes
------------------------- */

.featurette-divider {
  margin: 5rem 0; /* Space out the Bootstrap H5Hr, more */
}

/* Thin out the marketing headings */
.featurette-heading {
  font-weight: 300;
  line-height: 1;
  /* rtl:remove */
  letter-spacing: -.05rem;
}


/* RESPONSIVE CSS
-------------------------------------------------- */

@media (min-width: 40em) {
  /* Bump up size of carousel content */
  .carousel-caption p {
    margin-bottom: 1.25rem;
    font-size: 1.25rem;
    line-height: 1.4;
  }

  .featurette-heading {
    font-size: 50px;
  }
}

@media (min-width: 62em) {
  .featurette-heading {
    margin-top: 7rem;
  }
}

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

    
    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">

    
<header>
  H5Nav(["navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    H5Div(["container-fluid">
      H5A(["navbar-brand"], ["href":"#"], Carousel"),
      H5Button(["navbar-toggler" "type":"button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false", "aria-label":"Toggle navigation">
        H5Span(["navbar-toggler-icon"])
      )
      H5Div(["collapse navbar-collapse" id="navbarCollapse">
        BS5NavbarNav(["me-auto mb-2 mb-md-0">
          BS5NavItem(["active"], 
            BS5NavLink( aria-current="page"], ["href":"#"], Home"),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], Link"),
          ),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"),
          ),
        ),
        H5Form(["d-flex">
          <input class="form-control me-2" "type":"search" "placeholder":"Search", "aria-label":"Search">
          BS5ButtonSubmit(["btn-outline-success"], "Search")
        )
      ),
    ),
  ),
</header>

<main>

  <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
    <ol class="carousel-indicators">
      <li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active">),
      <li data-bs-target="#myCarousel" data-bs-slide-to="1">),
      <li data-bs-target="#myCarousel" data-bs-slide-to="2">),
    ),
    H5Div(["carousel-inner">
      H5Div(["carousel-item active">
        H5Svg(["bd-placeholder-img" "width":"100%" "height":"100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect "width":"100%" "height":"100%" fill="#777"/></svg>

        H5Div(["container">
          H5Div(["carousel-caption text-start">
            H5H1("Example headline."),
            H5P("Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.")
            H5P("H5A(["btn btn-lg btn-primary"], ["href":"#" "role":"button">Sign up today"),")
          ),
        ),
      ),
      H5Div(["carousel-item">
        H5Svg(["bd-placeholder-img" "width":"100%" "height":"100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect "width":"100%" "height":"100%" fill="#777"/></svg>

        H5Div(["container">
          H5Div(["carousel-caption">
            H5H1("Another example headline."),
            H5P("Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.")
            H5P("H5A(["btn btn-lg btn-primary"], ["href":"#" "role":"button">Learn more"),")
          ),
        ),
      ),
      H5Div(["carousel-item">
        H5Svg(["bd-placeholder-img" "width":"100%" "height":"100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect "width":"100%" "height":"100%" fill="#777"/></svg>

        H5Div(["container">
          H5Div(["carousel-caption text-end">
            H5H1("One more for good measure."),
            H5P("Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.")
            H5P("H5A(["btn btn-lg btn-primary"], ["href":"#" "role":"button">Browse gallery"),")
          ),
        ),
      ),
    ),
    H5A(["carousel-control-prev" href="#myCarousel" "role":"button" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true">"),
      <span class="visually-hidden">Previous"),
    "),
    H5A(["carousel-control-next" href="#myCarousel" "role":"button" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true">"),
      <span class="visually-hidden">Next"),
    "),
  ),


  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  H5Div(["container marketing">

    <!-- Three columns of text below the carousel -->
    H5Div(["row">
      H5Div(["col-lg-4">
        H5Svg(["bd-placeholder-img rounded-circle" "width":"140" "height":"140" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>

        H5H2("Heading")
        H5P("Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.")
        H5P("H5A(["btn btn-secondary"], ["href":"#" "role":"button">View details &raquo;"),")
      ),<!-- /.col-lg-4 -->
      H5Div(["col-lg-4">
        H5Svg(["bd-placeholder-img rounded-circle" "width":"140" "height":"140" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>

        H5H2("Heading")
        H5P("Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.")
        H5P("H5A(["btn btn-secondary"], ["href":"#" "role":"button">View details &raquo;"),")
      ),<!-- /.col-lg-4 -->
      H5Div(["col-lg-4">
        H5Svg(["bd-placeholder-img rounded-circle" "width":"140" "height":"140" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>

        H5H2("Heading")
        H5P("Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.")
        H5P("H5A(["btn btn-secondary"], ["href":"#" "role":"button">View details &raquo;"),")
      ),<!-- /.col-lg-4 -->
    ),<!-- /.row -->


    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    H5Div(["row featurette">
      H5Div(["col-md-7">
        H5H2(["featurette-heading">First featurette heading. <span class="text-muted">It’ll blow your mind."),")
        H5P(["lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.")
      ),
      H5Div(["col-md-5">
        H5Svg(["bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" "width":"500" "height":"500" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

      ),
    ),

    <hr class="featurette-divider">

    H5Div(["row featurette">
      H5Div(["col-md-7 order-md-2">
        H5H2(["featurette-heading">Oh yeah, it’s that good. <span class="text-muted">See for yourself."),")
        H5P(["lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.")
      ),
      H5Div(["col-md-5 order-md-1">
        H5Svg(["bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" "width":"500" "height":"500" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

      ),
    ),

    <hr class="featurette-divider">

    H5Div(["row featurette">
      H5Div(["col-md-7">
        H5H2(["featurette-heading">And lastly, this one. <span class="text-muted">Checkmate."),")
        H5P(["lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.")
      ),
      H5Div(["col-md-5">
        H5Svg(["bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" "width":"500" "height":"500" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

      ),
    ),

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

  ),<!-- /.container -->


  <!-- FOOTER -->
  H5Footer(["container">
    H5P(["float-end">H5A(["href":"#"], Back to top"),")
    H5P("&copy; 2017-2020 Company, Inc. &middot; H5A(["href":"#"], Privacy"), &middot; H5A(["href":"#"], Terms"),")
  )
)

`;

    }
  });
}
 
