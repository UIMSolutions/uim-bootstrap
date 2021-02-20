module uim.bootstrap.bs5.demos.examples.starter;

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
body {
  padding-top: 5rem;
}

`);
		} 
			
    override string content() { 

      return  
H5Nav(["navbar navbar-expand-md navbar-dark bg-dark fixed-top"], 
  H5Div(["container-fluid"], 
    H5A(["navbar-brand"], ["href":"#"], "Navbar"),
    H5Button(["navbar-toggler"], ["type":"button", "data-bs-toggle":"collapse", "data-bs-target":"#navbarsExampleDefault", "aria-controls":"navbarsExampleDefault", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
      H5Span(["navbar-toggler-icon"])
    ),
    H5Div("navbarsExampleDefault", ["collapse navbar-collapse"], 
      BS5NavbarNav(["me-auto mb-2 mb-md-0"], 
        BS5NavItem(["active"], 
          BS5NavLink(["aria-current":"page", "href":"#"], "Home")
        ),
        BS5NavItem(
          BS5NavLink(["href":"#"], "Link")
        ),
        BS5NavItem(
          BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")
        ),
        BS5NavItem(["dropdown"], 
          BS5NavLink("dropdown01", ["dropdown-toggle"], ["href":"#", "data-bs-toggle":"dropdown", "aria-expanded":"false"], "Dropdown"),
          H5Ul(["dropdown-menu"], ["aria-labelledby":"dropdown01"], 
            H5Li(BS5DropdownItem(["href":"#"], "Action")),
            H5Li(BS5DropdownItem(["href":"#"], "Another action")),
            H5Li(BS5DropdownItem(["href":"#"], "Something else here"))
          )
        )
      ),
      H5Form(["d-flex"], 
        BS5InputSearch(["me-2"], ["placeholder":"Search", "aria-label":"Search"]),
        BS5ButtonSubmit(["btn-outline-success"], "Search")
      )
    )
  )
).toString~
H5Main(["container"], 
  H5Div(["starter-template text-center py-5 px-3"],
    H5H1("Bootstrap starter template"),
    H5P(["lead"], "Use this document as a way to quickly start any new project.<br> All you get is this text and a mostly barebones HTML document.")
  )
).toString;

    }
  });
}
 
