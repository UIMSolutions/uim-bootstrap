module uim.bootstrap.bs5.demos.examples.offcanvas;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/starter", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Starter Page - Bootstrap 5 Demo",
      ])
      .styles(`
html,
body {
  overflow-x: hidden; /* Prevent scroll on narrow devices */
}

body {
  padding-top: 56px;
}

@media (max-width: 991.98px) {
  .offcanvas-collapse {
    position: fixed;
    top: 56px; /* Height of navbar */
    bottom: 0;
    left: 100%;
    width: 100%;
    padding-right: 1rem;
    padding-left: 1rem;
    overflow-y: auto;
    visibility: hidden;
    background-color: #343a40;
    transition: transform .3s ease-in-out, visibility .3s ease-in-out;
  }
  .offcanvas-collapse.open {
    visibility: visible;
    transform: translateX(-100%);
  }
}

.nav-scroller {
  position: relative;
  z-index: 2;
  height: 2.75rem;
  overflow-y: hidden;
}

.nav-scroller .nav {
  display: flex;
  flex-wrap: nowrap;
  padding-bottom: 1rem;
  margin-top: -1px;
  overflow-x: auto;
  color: rgba(255, 255, 255, .75);
  text-align: center;
  white-space: nowrap;
  -webkit-overflow-scrolling: touch;
}

.nav-underline .nav-link {
  padding-top: .75rem;
  padding-bottom: .75rem;
  font-size: .875rem;
  color: #6c757d;
}

.nav-underline .nav-link:hover {
  color: #007bff;
}

.nav-underline .active {
  font-weight: 500;
  color: #343a40;
}

.text-white-50 { color: rgba(255, 255, 255, .5); }

.bg-purple { background-color: #6f42c1; }
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
      }`)
      .libraries(`
(function () {
  'use strict'

  document.querySelector('[data-bs-toggle="offcanvas"]').addEventListener('click', function () {
    document.querySelector('.offcanvas-collapse').classList.toggle('open')
  })
})()`);
		} 
			
    override string content() { 

      return 
/*     <link href="offcanvas.css" rel="stylesheet">
  </head>
  <body class="bg-light">
 */    
BS5Navbar(["navbar-expand-lg fixed-top navbar-dark bg-dark"], ["aria-label":"Main navigation"],
  H5Div(["container-fluid"], 
    BS5NavbarBrand(["href":"#"], "Offcanvas navbar"),
    H5Button(["navbar-toggler p-0 border-0"], ["type":"button", "data-bs-toggle":"offcanvas", "aria-label":"Toggle navigation"], H5Span(["navbar-toggler-icon"])),

    H5Div("navbarsExampleDefault", ["navbar-collapse offcanvas-collapse"], 
      BS5NavbarNav(["me-auto mb-2 mb-lg-0"], 
        BS5NavItem(["active"], 
          BS5NavLink(["aria-current":"page", "href":"#"], "Dashboard")
        ),
        BS5NavItem(BS5NavLink(["href":"#"], "Notifications")),
        BS5NavItem(BS5NavLink(["href":"#"], "Profile")),
        BS5NavItem(
          BS5NavLink(["href":"#"], "Switch account")
        ),
        BS5NavItem(["dropdown"], 
          BS5NavLink("dropdown01", ["dropdown-toggle"], ["href":"#", "data-bs-toggle":"dropdown", "aria-expanded":"false"], "Settings"),
          BS5DropdownMenu(["aria-labelledby":"dropdown01BS5DropdownMenu"],
            H5Li(BS5DropdownItem(["href":"#"], "ActionBS5DropdownMenu(")),
            H5Li(BS5DropdownItem(["href":"#"], "Another action")),
            H5Li(BS5DropdownItem(["href":"#"], "Something else here")),
          )
        )
      ),
      H5Form(["d-flex"], 
        BS5InputSearch(["me-2"], ["placeholder":"Search", "aria-label":"Search"]),
        H5Button(["btn btn-outline-success"], ["type":"submit"], "Search")
      )
    )
  )
).toString~

H5Div(["nav-scroller bg-white shadow-sm"], 
  BS5Nav(["nav-underline"], ["aria-label":"Secondary navigation"], 
    BS5NavLink(["active"], ["aria-current":"page", "href":"#"], "Dashboard"),
    BS5NavLink(["href":"#"], 
      H5String("Friends"),
      H5Span(["badge bg-light text-dark rounded-pill align-text-bottom"], "27")),
    BS5NavLink(["href":"#"], "Explore"),
    BS5NavLink(["href":"#"], "Suggestions"),
    BS5NavLink(["href":"#"], "Link"),
    BS5NavLink(["href":"#"], "Link"),
    BS5NavLink(["href":"#"], "Link"),
    BS5NavLink(["href":"#"], "Link"),
    BS5NavLink(["href":"#"], "Link")
  )
).toString~

H5Main(["container"], 
  H5Div(["d-flex align-items-center p-3 my-3 text-white bg-purple rounded shadow-sm"],
    H5Img(["me-3"], ["src":"../assets/brand/bootstrap-logo-white.svg", "alt":"", "width":"48", "height":"38"]),
    H5Div(["lh-1"], 
      H5H1(["h6 mb-0 text-white lh-1"], "Bootstrap"),
      H5Small("Since 2011"))),

  H5Div(["my-3 p-3 bg-white rounded shadow-sm"], 
    H5H6(["border-bottom pb-2 mb-0"], "Recent updates"),
    H5Div(["d-flex text-muted pt-3"],
      H5Svg(["bd-placeholder-img flex-shrink-0 me-2 rounded"], ["width":"32", "height":"32", "xmlns":"http://www.w3.org/2000/svg", "role":"img", "aria-label":"Placeholder: 32x32", "preserveAspectRatio":"xMidYMid slice", "focusable":"false"], 
/*         H5Title("Placeholder"),
        H5Rect(["width":"100%", "height":"100%", "fill":"#007bff"]), 
        H5Text(["x":"50%", "y":"50%", "fill":"#007bff", "dy":".3em"], "32x32")
 */        ),
      H5P(["pb-3 mb-0 small lh-sm border-bottom"], 
        H5Strong(["d-block text-gray-dark"], "@username"),
        H5String("Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus."))),

    H5Div(["d-flex text-muted pt-3"],
      H5Svg(["bd-placeholder-img flex-shrink-0 me-2 rounded"], ["width":"32", "height":"32", "xmlns":"http://www.w3.org/2000/svg", "role":"img", "aria-label":"Placeholder: 32x32", "preserveAspectRatio":"xMidYMid slice", "focusable":"false"], 
        /* H5Title("Placeholder"), 
        H5Rect(["width":"100%", "height":"100%", "fill":"#e83e8c"]),
        H5Text(["x":"50%", "y":"50%", "fill":"#e83e8c", "dy":".3em"], "32x32") */
      ), 
      H5P(["pb-3 mb-0 small lh-sm border-bottom"], 
        H5Strong(["d-block text-gray-dark"], "@username"),
        H5String("Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus."))),

    H5Div(["d-flex text-muted pt-3"],
      H5Svg(["bd-placeholder-img flex-shrink-0 me-2 rounded"], ["width":"32", "height":"32", "xmlns":"http://www.w3.org/2000/svg", "role":"img", "aria-label":"Placeholder: 32x32", "preserveAspectRatio":"xMidYMid slice" ,"focusable":"false"],
        /* H5Title("Placeholder"),
        H5Rect(["width":"100%", "height":"100%", "fill":"#6f42c1"]),
        H5Text(["x":"50%", "y":"50%", "fill":"#6f42c1", "dy":".3em"], "32x32") */        
        ),
      H5P(["pb-3 mb-0 small lh-sm border-bottom"],
        H5Strong(["d-block text-gray-dark"], "@username"),
        H5String("Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. "))),

    H5Small(["d-block text-end mt-3"], H5A(["href":"#"], "All updates"))
  ),

  H5Div(["my-3 p-3 bg-white rounded shadow-sm"],
    H5H6(["border-bottom pb-2 mb-0"], "Suggestions"),
    H5Div(["d-flex text-muted pt-3"], 
      H5Svg(["bd-placeholder-img flex-shrink-0 me-2 rounded"], ["width":"32", "height":"32", "xmlns":"http://www.w3.org/2000/svg", "role":"img", "aria-label":"Placeholder: 32x32", "preserveAspectRatio":"xMidYMid slice", "focusable":"false"]), 
/*         H5Title("Placeholder"), 
        H5Rect(["width":"100%", "height":"100%", "fill":"#007bff"]),
        H5Text(["x":"50%", "y":"50%", "fill":"#007bff", "dy":".3em"], "32x32") */
        ),
      H5Div(["pb-3 mb-0 small lh-sm border-bottom w-100"],
        H5Div(["d-flex justify-content-between"],
          H5Strong(["text-gray-dark"], "Full Name"),
          H5A(["href":"#"], "Follow")),
        H5Span(["d-block"], "@username"))
    ),

    H5Div(["d-flex text-muted pt-3"],
      H5Svg(["bd-placeholder-img flex-shrink-0 me-2 rounded"], ["width":"32", "height":"32", "xmlns":"http://www.w3.org/2000/svg", "role":"img", "aria-label":"Placeholder: 32x32", "preserveAspectRatio":"xMidYMid slice", "focusable":"false"], 
/*         H5Title("Placeholder"),
        H5Rect(["width":"100%", "height":"100%", "fill":"#007bff"]),
        H5Text(["x":"50%", "y":"50%", "fill":"#007bff", "dy":".3em"], "32x32") */
        ),
      H5Div(["pb-3 mb-0 small lh-sm border-bottom w-100"],
        H5Div(["d-flex justify-content-between"],
          H5Strong(["text-gray-dark"], "Full Name"),
          H5A(["href":"#"], "Follow")),
        H5Span(["d-block"], "@username"))
    ),

    H5Div(["d-flex text-muted pt-3"], 
      H5Svg(["bd-placeholder-img flex-shrink-0 me-2 rounded"], ["width":"32", "height":"32", "xmlns":"http://www.w3.org/2000/svg", "role":"img", "aria-label":"Placeholder: 32x32", "preserveAspectRatio":"xMidYMid slice", "focusable":"false"],
/*         H5Title("Placeholder"),
        H5Rect(["width":"100%", "height":"100%", "fill":"#007bff"]),
        H5Text(["x":"50%", "y":"50%", "fill":"#007bff", "dy":".3em"], "32x32") */
        ),

      H5Div(["pb-3 mb-0 small lh-sm border-bottom w-100"],
        H5Div(["d-flex justify-content-between"],
          H5Strong(["text-gray-dark"], "Full Name"),
          H5A(["href":"#"], "Follow")
        ),
        H5Span(["d-block"], "@username"))
          ),
    H5Small(["d-block text-end mt-3"], 
      H5A(["href":"#"], "All suggestions"))).toString;

    }
  });
}
  