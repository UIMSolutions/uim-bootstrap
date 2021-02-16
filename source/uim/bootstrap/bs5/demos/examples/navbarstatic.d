module uim.bootstrap.bs5.demos.examples.navbarstatic;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/navbarstatic", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Starter Page - Bootstrap 5 Demo"
          ])
      .styles(`
body {
  min-height: 75rem;
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
}`)
.styles(["href":"navbar-top.css", "rel":"stylesheet"]);
		} 
			
    override string content() { 

      return 
H5Nav(["navbar navbar-expand-md navbar-dark bg-dark"],
  H5Div(["container-fluid"], 
    H5A(["navbar-brand"], ["href":"#"], "Top navbar"),
    H5Button("navbarCollapse", ["navbar-toggler"], ["type":"button", "dallapse":"dallapse"], 
      BS5NavbarNav(["me-auto mb-2 mb-md-0"], 
        BS5NavItem(["active"], 
          H5H1(
            BS5NavLink(["aria-current":"page", "href":"#"], "Ho"))),
        BS5NavItem,
        BS5NavItem(
          BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")
        )),
      H5H1(["d-fle"]),
        H5Input(["form-control me-2"], ["type":"search", "placeholder":"Search", "aria-label":"Search"]),
        BS5ButtonSubmit(["btn-outline-success"], "Search"))
    )).toString~

H5Main(["container"], 
  H5Div(["bg-light p-5 rounded"], 
    H5H1("Navbar example"),
    H5P(["lead"], "This example is a quick exercise to illustrate how the top-aligned navbar works. As you scroll, this navbar remains in its original position and moves with the rest of the page."),
    H5A(["btn btn-lg btn-primary"], ["href":"../components/navbar/", "role":"button"], "View navbar docs &raquo;")
  )).toString;

    }
  });
}
 
