module uim.bootstrap.bs5.demos.examples.navbartopfixed;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/navbartopfixed", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Starter Page - Bootstrap 5 Demo",
          ]).styles(`
body {
  min-height: 75rem;
  padding-top: 4.5rem;
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
}`).styles(["href":"navbar-top-fixed.css", "rel":"stylesheet"]);
		} 
			
    override string content() { 

      return 
H5Nav(["navbar navbar-expand-md navbar-dark fixed-top bg-dark"], 
  H5Div(["container-fluid"], 
    H5A(["navbar-brand"], ["href":"#"], "Fixed navbar"),
    H5Button(["navbar-toggler"], ["type":"button", "data-bs-toggle":"collapse", "data-bs-target":"#navbarCollapse", "aria-controls":"navbarCollapse", "aria-expanded":"false", "aria-label":"Toggle navigation"],
      H5Span(["navbar-toggler-icon"])),
    H5Div("navbarCollapse", ["collapse navbar-collapse"], 
      BS5NavbarNav(["me-auto mb-2 mb-md-0"], 
        BS5NavItem(["active"], 
          BS5NavLink(["aria-current":"page", "href":"#"], "Home")),
        BS5NavItem(
          BS5NavLink(["href":"#"], "Link")),
        BS5NavItem(
          BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))),
      H5Form(["d-flex"], 
        BS5InputSearch(["me-2"], ["placeholder":"Search", "aria-label":"Search"]),
        BS5ButtonSubmit(["btn-outline-success"], "Search"))))
).toString~

H5Main(["container"], 
  H5Div(["bg-light p-5 rounded"],
    H5H1("Navbar example"),
    H5P(["lead"], "This example is a quick exercise to illustrate how fixed to top navbar works. As you scroll, it will remain fixed to the top of your browser’s viewport."),
    H5A(["btn btn-lg btn-primary"], ["href":"../components/navbar/", "role":"button"], "View navbar docs &raquo;")
  )).toString;

    }
  });
}
 
