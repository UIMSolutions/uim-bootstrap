module uim.bootstrap.bs5.demos.examples.cover;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/cover", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Starter Page - Bootstrap 5 Demo",
          ])
          .styles(`/* Custom default button */
.btn-secondary,
.btn-secondary:hover,
.btn-secondary:focus {
  color: #333;
  text-shadow: none; /* Prevent inheritance from body */
}


/*
 * Base structure
 */

body {
  text-shadow: 0 .05rem .1rem rgba(0, 0, 0, .5);
  box-shadow: inset 0 0 5rem rgba(0, 0, 0, .5);
}

.cover-container {
  max-width: 42em;
}


/*
 * Header
 */

.nav-masthead .nav-link {
  padding: .25rem 0;
  font-weight: 700;
  color: rgba(255, 255, 255, .5);
  background-color: transparent;
  border-bottom: .25rem solid transparent;
}

.nav-masthead .nav-link:hover,
.nav-masthead .nav-link:focus {
  border-bottom-color: rgba(255, 255, 255, .25);
}

.nav-masthead .nav-link + .nav-link {
  margin-left: 1rem;
}

.nav-masthead .active {
  color: #fff;
  border-bottom-color: #fff;
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
      }`).styles(["href":"cover.css", "rel":"stylesheet"]);
		} 
			
    override string content(string[string] someParameters = null) {  
//  <body class="d-flex h-100 text-center text-white bg-dark">

      return 
H5Header(["container d-flex w-100 h-100 p-3 mx-auto flex-column"], 
  H5Header(["mb-auto"], 
    H5Div(
      H5H3(["float-md-start mb-0"], "Cover"),
      H5Header(["nav-masthead justify-content-center float-md-end"], 
        BS5NavLink(["active"], ["aria-current":"page", "href":"#"], "Home"),
        BS5NavLink(["href":"#"], "Features"),
        BS5NavLink(["href":"#"], "Contact")
      )
    )
  ),
  H5Header([""], 
    H5H1("Cover your page."),
    H5P(["lead"], "Cover is a one-page template for building simple and beautiful home pages. Download, edit the text, and add your own fullscreen background photo to make it your own."),
    H5Header( 
      H5A(["btn btn-lg btn-secondary fw-bold border-white bg-white"], ["href":"#"], "Learn more"),
    )
  ),
  H5Header(["auto text-white-50"], 
    H5P("Cover template")
  )
).toString;

    }
  });
}
 
