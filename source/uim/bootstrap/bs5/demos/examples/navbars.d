module uim.bootstrap.bs5.demos.examples.navbars;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/navbars", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Starter Page - Bootstrap 5 Demo",
          ]).styles(`      
body {
  padding-bottom: 20px;
}
.navbar {
  margin-bottom: 20px;
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
  .styles(["href":"navbar.css", "rel":"stylesheet"]);
		} 
			
    override string content(string[string] someParameters = null) {  

      return 
`
<main>
  H5Nav(["navbar navbar-dark bg-dark", "aria-label":"First navbar example"], 
    H5Div(["container-fluid"], 
      H5A(["navbar-brand"], ["href":"#"], Never expand"),
      H5Button(["navbar-toggler" "type":"button" data-bs-toggle="collapse" data-bs-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false", "aria-label":"Toggle navigation">
        H5Span(["navbar-toggler-icon"])
      )

      H5Div("navbarsExample01", ["collapse navbar-collapse"], 
        BS5NavbarNav(["me-auto mb-2"], 
          BS5NavItem(["active"], 
            BS5NavLink( aria-current="page"], ["href":"#"], Home"),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], Link"),
          ),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#" tabindex="-1" aria-disabled="true">Disabled"),
          ),
          BS5NavItem(["dropdown"], 
            BS5NavLink("dropdown01", ["dropdown-toggle"], ["href":"#", "data-bs-toggle":"dropdown", "aria-expanded":"false"], "Dropdown"),
            BS5Dropdownmenu(["aria-labelledby":"dropdown01"], 
              H5Li(BS5DropdownItem(["href":"#"], Action")),
              H5Li(BS5DropdownItem(["href":"#"], Another action")),
              H5Li(BS5DropdownItem(["href":"#"], Something else here"))
            )
          ),
        ),
        <form>
          <input class="form-control" "type":"text" "placeholder":"Search", "aria-label":"Search">
        )
      ),
    ),
  ),

  H5Nav(["navbar navbar-expand navbar-dark bg-dark", "aria-label":"Second navbar example"], 
    H5Div(["container-fluid"], 
      H5A(["navbar-brand"], ["href":"#"], Always expand"),
      H5Button(["navbar-toggler" "type":"button" data-bs-toggle="collapse" data-bs-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false", "aria-label":"Toggle navigation">
        H5Span(["navbar-toggler-icon"])
      )

      H5Div(["collapse navbar-collapse" id="navbarsExample02"], 
        BS5NavbarNav(["me-auto"], 
          BS5NavItem(["active"], 
            BS5NavLink( aria-current="page"], ["href":"#"], Home"),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], Link"),
          ),
        ),
        <form>
          <input class="form-control" "type":"text" "placeholder":"Search", "aria-label":"Search">
        )
      ),
    ),
  ),

  H5Nav(["navbar navbar-expand-sm navbar-dark bg-dark", "aria-label":"Third navbar example"], 
    H5Div(["container-fluid"], 
      H5A(["navbar-brand"], ["href":"#"], Expand at sm"),
      H5Button(["navbar-toggler" "type":"button" data-bs-toggle="collapse" data-bs-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false", "aria-label":"Toggle navigation">
        H5Span(["navbar-toggler-icon"])
      )

      H5Div(["collapse navbar-collapse" id="navbarsExample03"], 
        BS5NavbarNav(["me-auto mb-2 mb-sm-0"], 
          BS5NavItem(["active"], 
            BS5NavLink( aria-current="page"], ["href":"#"], Home"),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], Link"),
          ),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#" tabindex="-1" aria-disabled="true">Disabled"),
          ),
          BS5NavItem(["dropdown"], 
            BS5NavLink(["dropdown-toggle"], ["href":"#" id="dropdown03" data-bs-toggle="dropdown" aria-expanded="false">Dropdown"),
            H5Ul(["dropdown-menu" aria-labelledby="dropdown03"], 
              H5Li("BS5DropdownItem(["href":"#"], Action")),
              H5Li("BS5DropdownItem(["href":"#"], Another action")),
              H5Li("BS5DropdownItem(["href":"#"], Something else here")),
            ),
          ),
        ),
        <form>
          <input class="form-control" "type":"text" "placeholder":"Search", "aria-label":"Search">
        )
      ),
    ),
  ),

  H5Nav(["navbar navbar-expand-md navbar-dark bg-dark", "aria-label":"Fourth navbar example"], 
    H5Div(["container-fluid"], 
      H5A(["navbar-brand"], ["href":"#"], Expand at md"),
      H5Button(["navbar-toggler" "type":"button" data-bs-toggle="collapse" data-bs-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false", "aria-label":"Toggle navigation">
        H5Span(["navbar-toggler-icon"])
      )

      H5Div(["collapse navbar-collapse" id="navbarsExample04"], 
        BS5NavbarNav(["me-auto mb-2 mb-md-0"], 
          BS5NavItem(["active"], 
            BS5NavLink( aria-current="page"], ["href":"#"], Home"),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], Link"),
          ),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#" tabindex="-1" aria-disabled="true">Disabled"),
          ),
          BS5NavItem(["dropdown"], 
            BS5NavLink(["dropdown-toggle"], ["href":"#" id="dropdown04" data-bs-toggle="dropdown" aria-expanded="false">Dropdown"),
            H5Ul(["dropdown-menu" aria-labelledby="dropdown04"], 
              H5Li("BS5DropdownItem(["href":"#"], Action")),
              H5Li("BS5DropdownItem(["href":"#"], Another action")),
              H5Li("BS5DropdownItem(["href":"#"], Something else here")),
            ),
          ),
        ),
        <form>
          <input class="form-control" "type":"text" "placeholder":"Search", "aria-label":"Search">
        )
      ),
    ),
  ),

  H5Nav(["navbar navbar-expand-lg navbar-dark bg-dark", "aria-label":"Fifth navbar example">
    H5Div(["container-fluid">
      H5A(["navbar-brand"], ["href":"#"], Expand at lg"),
      H5Button(["navbar-toggler" "type":"button" data-bs-toggle="collapse" data-bs-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false", "aria-label":"Toggle navigation">
        H5Span(["navbar-toggler-icon"])
      )

      H5Div(["collapse navbar-collapse" id="navbarsExample05">
        BS5NavbarNav(["me-auto mb-2 mb-lg-0">
          BS5NavItem(["active"], 
            BS5NavLink( aria-current="page"], ["href":"#"], Home"),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], Link"),
          ),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#" tabindex="-1" aria-disabled="true">Disabled"),
          ),
          BS5NavItem(["dropdown">
            BS5NavLink(["dropdown-toggle"], ["href":"#" id="dropdown05" data-bs-toggle="dropdown" aria-expanded="false">Dropdown"),
            H5Ul(["dropdown-menu" aria-labelledby="dropdown05">
              H5Li("BS5DropdownItem(["href":"#"], Action")),
              H5Li("BS5DropdownItem(["href":"#"], Another action")),
              H5Li("BS5DropdownItem(["href":"#"], Something else here")),
            ),
          ),
        ),
        <form>
          <input class="form-control" "type":"text" "placeholder":"Search", "aria-label":"Search">
        )
      ),
    ),
  ),

  H5Nav(["navbar navbar-expand-xl navbar-dark bg-dark", "aria-label":"Sixth navbar example">
    H5Div(["container-fluid">
      H5A(["navbar-brand"], ["href":"#"], Expand at xl"),
      H5Button(["navbar-toggler" "type":"button" data-bs-toggle="collapse" data-bs-target="#navbarsExample06" aria-controls="navbarsExample06" aria-expanded="false", "aria-label":"Toggle navigation"], 
        H5Span(["navbar-toggler-icon"])
      )

      H5Div(["collapse navbar-collapse" id="navbarsExample06"], 
        BS5NavbarNav(["me-auto mb-2 mb-xl-0">
          BS5NavItem(["active"], 
            BS5NavLink( aria-current="page"], ["href":"#"], Home"),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], Link"),
          ),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#" tabindex="-1" aria-disabled="true">Disabled"),
          ),
          BS5NavItem(["dropdown">
            BS5NavLink(["dropdown-toggle"], ["href":"#" id="dropdown06" data-bs-toggle="dropdown" aria-expanded="false">Dropdown"),
            H5Ul(["dropdown-menu" aria-labelledby="dropdown06">
              H5Li("BS5DropdownItem(["href":"#"], Action")),
              H5Li("BS5DropdownItem(["href":"#"], Another action")),
              H5Li("BS5DropdownItem(["href":"#"], Something else here")),
            ),
          ),
        ),
        <form>
          <input class="form-control" "type":"text" "placeholder":"Search", "aria-label":"Search">
        )
      ),
    ),
  ),

  H5Nav(["navbar navbar-expand-xxl navbar-dark bg-dark", "aria-label":"Seventh navbar example"], 
    H5Div(["container-fluid"], 
      H5A(["navbar-brand"], ["href":"#"], Expand at xxl"),
      H5Button(["navbar-toggler" "type":"button" data-bs-toggle="collapse" data-bs-target="#navbarsExampleXxl" aria-controls="navbarsExampleXxl" aria-expanded="false", "aria-label":"Toggle navigation">
        H5Span(["navbar-toggler-icon"])
      )

      H5Div(["collapse navbar-collapse" id="navbarsExampleXxl"], 
        BS5NavbarNav(["me-auto mb-2 mb-xl-0"], 
          BS5NavItem(["active"], 
            BS5NavLink( aria-current="page"], ["href":"#"], Home"),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], Link"),
          ),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#" tabindex="-1" aria-disabled="true">Disabled"),
          ),
          BS5NavItem(["dropdown"], 
            BS5NavLink(["dropdown-toggle"], ["href":"#" id="dropdownXxl" data-bs-toggle="dropdown" aria-expanded="false">Dropdown"),
            H5Ul(["dropdown-menu" aria-labelledby="dropdownXxl"], 
              H5Li("BS5DropdownItem(["href":"#"], Action")),
              H5Li("BS5DropdownItem(["href":"#"], Another action")),
              H5Li("BS5DropdownItem(["href":"#"], Something else here")),
            ),
          ),
        ),
        <form>
          <input class="form-control" "type":"text" "placeholder":"Search", "aria-label":"Search">
        )
      ),
    ),
  ),

  H5Nav(["navbar navbar-expand-lg navbar-dark bg-dark", "aria-label":"Eighth navbar example"], 
    H5Div(["container"], 
      H5A(["navbar-brand"], ["href":"#"], Container"),
      H5Button(["navbar-toggler" "type":"button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false", "aria-label":"Toggle navigation">
        H5Span(["navbar-toggler-icon"])
      )

      H5Div(["collapse navbar-collapse" id="navbarsExample07"], 
        BS5NavbarNav(["me-auto mb-2 mb-lg-0"], 
          BS5NavItem(["active"], 
            BS5NavLink( aria-current="page"], ["href":"#"], Home"),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], Link"),
          ),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#" tabindex="-1" aria-disabled="true">Disabled"),
          ),
          BS5NavItem(["dropdown"], 
            BS5NavLink(["dropdown-toggle"], ["href":"#" id="dropdown07" data-bs-toggle="dropdown" aria-expanded="false">Dropdown"),
            H5Ul(["dropdown-menu" aria-labelledby="dropdown07"], 
              H5Li("BS5DropdownItem(["href":"#"], Action")),
              H5Li("BS5DropdownItem(["href":"#"], Another action")),
              H5Li("BS5DropdownItem(["href":"#"], Something else here")),
            ),
          ),
        ),
        <form>
          <input class="form-control" "type":"text" "placeholder":"Search", "aria-label":"Search">
        )
      ),
    ),
  ),

  H5Nav(["navbar navbar-expand-lg navbar-dark bg-dark", "aria-label":"Ninth navbar example"], 
    H5Div(["container-xl"], 
      H5A(["navbar-brand"], ["href":"#"], Container XL"),
      H5Button(["navbar-toggler" "type":"button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07XL" aria-controls="navbarsExample07XL" aria-expanded="false", "aria-label":"Toggle navigation">
        H5Span(["navbar-toggler-icon"])
      )

      H5Div(["collapse navbar-collapse" id="navbarsExample07XL"], 
        BS5NavbarNav(["me-auto mb-2 mb-lg-0"], 
          BS5NavItem(["active"], 
            BS5NavLink( aria-current="page"], ["href":"#"], Home"),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], Link"),
          ),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#" tabindex="-1" aria-disabled="true">Disabled"),
          ),
          BS5NavItem(["dropdown">
            BS5NavLink(["dropdown-toggle"], ["href":"#" id="dropdown07XL" data-bs-toggle="dropdown" aria-expanded="false">Dropdown"),
            H5Ul(["dropdown-menu" aria-labelledby="dropdown07XL"], 
              H5Li("BS5DropdownItem(["href":"#"], Action")),
              H5Li("BS5DropdownItem(["href":"#"], Another action")),
              H5Li("BS5DropdownItem(["href":"#"], Something else here")),
            ),
          ),
        ),
        <form>
          <input class="form-control" "type":"text" "placeholder":"Search", "aria-label":"Search">
        )
      ),
    ),
  ),

  H5Div(["container-xl mb-4">
    H5P("Matching .container-xl...")
  ),

  H5Nav(["navbar navbar-expand-lg navbar-dark bg-dark", "aria-label":"Tenth navbar example"], 
    H5Div(["container-fluid"], 
      H5Button(["navbar-toggler" "type":"button" data-bs-toggle="collapse" data-bs-target="#navbarsExample08" aria-controls="navbarsExample08" aria-expanded="false", "aria-label":"Toggle navigation">
        H5Span(["navbar-toggler-icon"])
      )

      H5Div(["collapse navbar-collapse justify-content-md-center" id="navbarsExample08"], 
        H5Ul(["navbar-nav"], 
          BS5NavItem(["active"], 
            BS5NavLink( aria-current="page"], ["href":"#"], Centered nav only"),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], Link"),
          ),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#" tabindex="-1" aria-disabled="true">Disabled"),
          ),
          BS5NavItem(["dropdown"], 
            BS5NavLink(["dropdown-toggle"], ["href":"#" id="dropdown08" data-bs-toggle="dropdown" aria-expanded="false">Dropdown"),
            H5Ul(["dropdown-menu" aria-labelledby="dropdown08"], 
              H5Li("BS5DropdownItem(["href":"#"], Action")),
              H5Li("BS5DropdownItem(["href":"#"], Another action")),
              H5Li("BS5DropdownItem(["href":"#"], Something else here")),
            ),
          ),
        ),
      ),
    ),
  ),

  H5Div(["container"], 
    H5Nav(["navbar navbar-expand-lg navbar-light bg-light rounded", "aria-label":"Eleventh navbar example"], 
      H5Div(["container-fluid"], 
        H5A(["navbar-brand"], ["href":"#"], Navbar"),
        H5Button(["navbar-toggler" "type":"button" data-bs-toggle="collapse" data-bs-target="#navbarsExample09" aria-controls="navbarsExample09" aria-expanded="false", "aria-label":"Toggle navigation">
          H5Span(["navbar-toggler-icon"])
        )

        H5Div(["collapse navbar-collapse" id="navbarsExample09"], 
          BS5NavbarNav(["me-auto mb-2 mb-lg-0"], 
            BS5NavItem(["active"], 
              BS5NavLink( aria-current="page"], ["href":"#"], Home"),
            ),
            BS5NavItem(
              BS5NavLink( "href":"#"], Link"),
            ),
            BS5NavItem(
              BS5NavLink(["disabled"], ["href":"#" tabindex="-1" aria-disabled="true">Disabled"),
            ),
            BS5NavItem(["dropdown"], 
              BS5NavLink(["dropdown-toggle"], ["href":"#" id="dropdown09" data-bs-toggle="dropdown" aria-expanded="false">Dropdown"),
              H5Ul(["dropdown-menu" aria-labelledby="dropdown09"], 
                H5Li("BS5DropdownItem(["href":"#"], Action")),
                H5Li("BS5DropdownItem(["href":"#"], Another action")),
                H5Li("BS5DropdownItem(["href":"#"], Something else here")),
              ),
            ),
          ),
          <form>
            <input class="form-control" "type":"text" "placeholder":"Search", "aria-label":"Search">
          )
        ),
      ),
    ),

    H5Nav(["navbar navbar-expand-lg navbar-light bg-light rounded", "aria-label":"Twelfth navbar example"], 
      H5Div(["container-fluid"], 
        H5Button(["navbar-toggler" "type":"button" data-bs-toggle="collapse" data-bs-target="#navbarsExample10" aria-controls="navbarsExample10" aria-expanded="false", "aria-label":"Toggle navigation">
          H5Span(["navbar-toggler-icon"])
        )

        H5Div(["collapse navbar-collapse justify-content-md-center" id="navbarsExample10">
          H5Ul(["navbar-nav">
            BS5NavItem(["active"], 
              BS5NavLink( aria-current="page"], ["href":"#"], Centered nav only"),
            ),
            BS5NavItem(
              BS5NavLink( "href":"#"], Link"),
            ),
            BS5NavItem(
              BS5NavLink(["disabled"], ["href":"#" tabindex="-1" aria-disabled="true">Disabled"),
            ),
            BS5NavItem(["dropdown"], 
              BS5NavLink(["dropdown-toggle"], ["href":"#" id="dropdown10" data-bs-toggle="dropdown" aria-expanded="false">Dropdown"),
              H5Ul(["dropdown-menu" aria-labelledby="dropdown10"], 
                H5Li("BS5DropdownItem(["href":"#"], Action")),
                H5Li("BS5DropdownItem(["href":"#"], Another action")),
                H5Li("BS5DropdownItem(["href":"#"], Something else here")),
              ),
            ),
          ),
        ),
      ),
    ),

    H5Div(
      H5Div(["bg-light p-5 rounded"], 
        H5Div(["col-sm-8 mx-auto"], 
          H5H1("Navbar examples"),
          H5P("This example is a quick exercise to illustrate how the navbar and its contents work. Some navbars extend the width of the viewport, others are confined within a <code>.container</code>. For positioning of navbars, checkout the H5A(["../examples/navbar-static/">top"), and H5A(["../examples/navbar-fixed/">fixed top"), examples.")
          H5P("At the smallest breakpoint, the collapse plugin is used to hide the links and show a menu button to toggle the collapsed content.")
          H5P("
            H5A(["btn btn-primary" href="../components/navbar/" "role":"button">View navbar docs &raquo;"),
          ")
        ),
      ),
    ),
  ),
)
`;

    }
  });
}
 
