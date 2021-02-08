module uim.bootstrap.bs5.demos.components.navbars;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/components/navbars", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Navbars - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
auto linkExample = demoBs5Example("link", "With Link",
  BS5Navbar(["navbar-light", "bg-light"], 
    BS5Container(
      BS5NavbarBrand(["href":"#"], "Navbar"))
  ), ``, ``);

auto headingExample = demoBs5Example("heading", "With Heading",
  BS5Navbar(["navbar-light", "bg-light"], 
    BS5Container(
      BS5NavbarBrand(["h1", "mb-0"], ["href":"#"], "Navbar"))), ``, ``);

auto imageExample = demoBs5Example("image", "With Image",
  BS5Navbar(["navbar-light", "bg-light"], 
    BS5Container(
      BS5NavbarBrand(["href":"#"], 
        H5Img(["src":"/img/50x50.png", "alt":""])))), ``, ``);

auto imageTextExample = demoBs5Example("image", "With Image and Text",
  BS5Navbar(["navbar-light", "bg-light"], 
    BS5Container(
      BS5NavbarBrand(["href":"#"], 
        H5Img(["src":"/img/50x50.png", "alt":""]), 
        H5Span(["align-middle"], "Navbar")))), ``, ``);

auto ulistTextExample = demoBs5Example("ulist", "With Unordered list",
  BS5Navbar(["navbar-light", "bg-light", "navbar-expand"], 
    BS5Container(
      BS5NavbarBrand(["href":"#"]),
      BS5NavbarCollapse(
        BS5NavbarNav(
          BS5NavItem(
            BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
          BS5NavItem(
            BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
          BS5NavItem(
            BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link")))))), ``, ``);

auto formsExample = demoBs5Example("forms", "With Forms",
  BS5Navbar(["navbar-light", "bg-light"], 
    BS5Container(
      BS5NavbarBrand(["href":"#"], "Navbar"),
      H5Form(
        BS5InputGroup(
          BS5InputSearch(["placeholder":"Search text here", "aria-label":"Search input"],
            H5Button(["btn", "btn-secondary"], ["type":"submit"], "Search")))))), ``, ``);

auto textExample = demoBs5Example("text", "Text",
  BS5Navbar(["navbar-light", "bg-light"], 
    BS5Container(
      H5Div(["navbar-text"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit."))), ``, ``);

auto colorsExample = demoBs5Example("colors", "Colors",
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Dark navbar"),
    BS5Navbar(["navbar-dark", "bg-primary"], 
      BS5Container(
        BS5NavbarBrand(["href":"#"], "Primary"))), 
    BS5Navbar(["navbar-dark", "bg-secondary"], 
      BS5Container(
        BS5NavbarBrand(["href":"#"], "Secondary"))),
    BS5Navbar(["navbar-dark", "bg-success"], 
      BS5Container(
        BS5NavbarBrand(["href":"#"], "Success"))),
    BS5Navbar(["navbar-dark", "bg-danger"], 
      BS5Container(
        BS5NavbarBrand(["href":"#"], "Danger"))),
    BS5Navbar(["navbar-dark", "bg-warning"], 
      BS5Container(
        BS5NavbarBrand(["href":"#"], "Warning"))),
    BS5Navbar(["navbar-dark", "bg-info"], 
      BS5Container(
        BS5NavbarBrand(["href":"#"], "Info"))),
    BS5Navbar(["navbar-dark", "bg-dark"], 
      BS5Container(
        BS5NavbarBrand(["href":"#"], "Dark"))),
    H5H4(["h5", "text-muted", "mt-3"], "Light navbar"),
    BS5Navbar(["navbar-light", "bg-light"], 
      BS5Container(
        BS5NavbarBrand(["href":"#"], "Light"))),
    BS5Navbar(["navbar-light", "bg-white"], 
      BS5Container(
        BS5NavbarBrand(["href":"#"], "White"))),
    BS5Navbar(["navbar-light", "bg-transparent"], 
      BS5Container(
        BS5NavbarBrand(["href":"#"], "Transparent")))), ``, ``);

auto togglerExample = demoBs5Example("toggler", "Toggler",
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Left-aligned toggler"),
    BS5Navbar(["navbar-light", "bg-light navbar-expand-lg"], 
      BS5Container(
        BS5Button(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarResponsiveLeft", "aria-controls":"navbarResponsiveLeft", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
          H5Span(["navbar-toggler-icon"])),
        BS5NavbarBrand(["href":"#"], "Navbar"),
        BS5NavbarCollapse("navbarResponsiveLeft", 
          BS5Navbar(
            BS5NavItem(
            BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
          BS5NavItem(
            BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
          BS5NavItem(
            BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link")))))),
    H5H4(["h5", "text-muted", "mt-3"], "Right-aligned toggler"),
    BS5Navbar(["navbar-light", "bg-light navbar-expand-lg"],
      BS5Container(
        BS5NavbarBrand(["href":"#"], "Navbar"),
        BS5Button(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarResponsiveRight", 
        "aria-controls":"navbarResponsiveRight", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
          H5Span(["navbar-toggler-icon"])), 
        BS5NavbarCollapse("navbarResponsiveRight", 
          BS5Navbar(
            BS5NavItem(
              BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
            BS5NavItem(
              BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
            BS5NavItem(
              BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
            BS5NavItem(
              BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link")))
              )))), ``, ``);

auto responsiveExample = demoBs5Example("responsive", "Responsive",
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Small"),
    BS5Navbar(["navbar-light", "bg-light navbar-expand-sm"], 
        BS5Container(
          BS5NavbarBrand(["href":"#"], "Navbar"),
          BS5Button(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarResponsiveSmall", 
          "aria-controls":"navbarResponsiveSmall", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
            H5Span(["navbar-toggler-icon"])),
          BS5NavbarCollapse("navbarResponsiveSmall", 
            BS5Navbar(
              BS5NavItem(
                BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
              BS5NavItem(
                BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
              BS5NavItem(
                BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
              BS5NavItem(
                BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link")))))),

    H5H4(["h5", "text-muted", "mt-3"], "Medium"),
    BS5Navbar(["navbar-light", "bg-light navbar-expand-md"], 
        BS5Container(
          BS5NavbarBrand(["href":"#"], "Navbar"),
          BS5Button(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarResponsiveMedium", 
          "aria-controls":"navbarResponsiveMedium", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
            H5Span(["navbar-toggler-icon"])),
          BS5NavbarCollapse("navbarResponsiveMedium", 
            BS5Navbar(
              BS5NavItem(
                BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
              BS5NavItem(
                BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
              BS5NavItem(
                BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
              BS5NavItem(
                BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link")))))),

    H5H4(["h5", "text-muted", "mt-3"], "Large"),
    BS5Navbar(["navbar-light", "bg-light navbar-expand-lg"], 
        BS5Container(
          BS5NavbarBrand(["href":"#"], "Navbar"),
          BS5Button(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarResponsiveLarge", 
          "aria-controls":"navbarResponsiveLarge", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
            H5Span(["navbar-toggler-icon"])),
          BS5NavbarCollapse("navbarResponsiveLarge", 
            BS5Navbar(
              BS5NavItem(
                BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
              BS5NavItem(
                BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
              BS5NavItem(
                BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
              BS5NavItem(
                BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link")))))),

     H5H4(["h5", "text-muted", "mt-3"], "Extra Large"),
    BS5Navbar(["navbar-light", "bg-light navbar-expand-xl"], 
        BS5Container(
          BS5NavbarBrand(["href":"#"], "Navbar"),
          BS5Button(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarResponsiveExtraLarge", 
          "aria-controls":"navbarResponsiveExtraLarge", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
            H5Span(["navbar-toggler-icon"])),
          BS5NavbarCollapse("navbarResponsiveExtraLarge", 
            BS5Navbar(
              BS5NavItem(
                BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
              BS5NavItem(
                BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
              BS5NavItem(
                BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
              BS5NavItem(
                BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link")))))),

    H5H4(["h5", "text-muted", "mt-3"], "Extra extra large"),
    BS5Navbar(["navbar-light", "bg-light navbar-expand-xxl"], 
        BS5Container(
          BS5NavbarBrand(["href":"#"], "Navbar"),
          BS5Button(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarResponsiveExtraExtraLarge", 
          "aria-controls":"navbarResponsiveExtraExtraLarge", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
            H5Span(["navbar-toggler-icon"])),
          BS5NavbarCollapse("navbarResponsiveExtraExtraLarge", 
            BS5Navbar(
              BS5NavItem(
                BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
              BS5NavItem(
                BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
              BS5NavItem(
                BS5NavLink(["href":"#", "aria-current":"page"], "Link")),
              BS5NavItem(
                BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link"))))))
  ), ``, ``);

auto externalExample = demoBs5Example("external", "External content",
  H5Div(
    BS5Collapse("navbarExternalContent", 
      H5Div(["p-4"], 
        H5H5("Collapsed content"),
        H5P(["mb-0"], "Toggleable via the navbar toggler.")
      )),
    BS5Navbar(["navbar-light", "bg-light"], 
      BS5Container(
        BS5Button(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarExternalContent", 
        "aria-controls":"navbarExternalContent", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
          H5Span(["navbar-toggler-icon"]))))
  ), ``, ``);

auto advancedExample = demoBs5Example("advanced", "Advanced example",
  H5Div(
    BS5Navbar(["navbar-light", "bg-light navbar-expand-lg"], 
      BS5Container(
        BS5NavbarBrand(["href":"#"], "Navbar"),
        BS5Button(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarAdvanced", 
        "aria-controls":"navbarAdvanced", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
          H5Span(["navbar-toggler-icon"])), 
        BS5NavbarCollapse("navbarAdvanced", 
          BS5NavbarNav(["mb-2", "mb-lg-0", "me-auto"],
            BS5NavItem(
              BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")), 
            BS5NavItem(["dropdown"], 
              BS5NavLink("navbarAdvancedDropdown", ["dropdown-toggle"], ["href":"#", "data-bs-toggle":"dropdown",
               "role":"button", "aria-expanded":"false"], "Dropdown"),
              BS5DropdownMenu(["aria-labelledby":"navbarAdvancedDropdown"], 
                H5Li(
                  BS5DropdownItem(["href":"#"], "First item")),
                H5Li(
                  BS5DropdownItem(["href":"#"], "Second item")), 
                H5Li(
                  BS5DropdownItem(["href":"#"], "Third item"))
                  )),
            BS5NavItem(
              BS5NavLink(["href":"#"], "Link")),
            BS5NavItem(
              BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))),
          H5Form(
            BS5InputGroup(
              BS5InputSearch(["placeholder":"Search text here", "aria-label":"Search input"]),
              H5Button(["btn btn-secondary"], ["type":"submit"], "Search")))
        )))), ``, ``);

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/basic", "/demos/uim-bootstrap/5/basic/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Basic", "Components"], "Navbars")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "components"),
      listSections("basic", "components", "navbars")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      dateInfo(created, changed),
      H5H2(["display-4"], "Navbars"),
      H5Hr,

      linkExample,
      headingExample,
      imageExample,
      imageTextExample,
      ulistTextExample,
      // linksExample,
      formsExample,
      textExample,
      colorsExample,
      togglerExample,
      responsiveExample,
      advancedExample

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}