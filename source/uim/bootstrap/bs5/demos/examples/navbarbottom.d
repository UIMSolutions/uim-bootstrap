module uim.bootstrap.bs5.demos.examples.navbarbottom;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/navbarbottom", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Starter Page - Bootstrap 5 Demo",
          ]).styles(`.bd-placeholder-img {
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
      }`);
		} 
			
    override string content(string[string] someParameters = null) {  

      return 
H5Main(["container"], 
  H5Div(["bg-light p-5 rounded mt-3"],
    H5H1("Bottom Navbar example"),
    H5P(["lead"], "This example is a quick exercise to illustrate how the bottom navbar works."),
    H5A(["btn btn-lg btn-primary"], ["href":"../components/navbar/", "role":"button"], "View navbar docs &raquo;")
  )
).toString~
H5Nav(["navbar fixed-bottom navbar-expand-sm navbar-dark bg-dark"], 
  H5Div(["container-fluid"], 
    H5A(["navbar-brand"], ["href":"#"], "Bottom navbar"),
    H5Button(["navbar-toggler"], ["type":"button", "data-bs-toggle":"collapse", "data-bs-target":"#navbarCollapse", "aria-controls":"navbarCollapse", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
      H5Span(["navbar-toggler-icon"])
    ),
    H5Div("navbarCollapse", ["collapse navbar-collapse"], 
      H5Ul(["navbar-nav"], 
        BS5NavItem(["active"], 
          BS5NavLink(["aria-current":"page", "href":"#"], "Home")
        ),
        BS5NavItem(
          BS5NavLink(["href":"#"], "Link")
        ),
        BS5NavItem(
          BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")
        ),
        BS5NavItem(["dropup"],
          BS5NavLink("dropdown10", ["dropdown-toggle"], ["href":"#", "data-bs-toggle":"dropdown", "aria-expanded":"false"], "Dropup"),
          H5Ul(["dropdown-menu"], ["aria-labelledby":"dropdown10"],
            H5Li(BS5DropdownItem(["href":"#"], "Action")),
            H5Li(BS5DropdownItem(["href":"#"], "Another action")),
            H5Li(BS5DropdownItem(["href":"#"], "Something else here"))
          )
        )
      )
    )
  )
).toString;

    }
  });
}
 
