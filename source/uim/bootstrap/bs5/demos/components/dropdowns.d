module uim.bootstrap.bs5.demos.components.dropdowns;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/dropdowns", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Dropdowns - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto buttonExample = demoBs5Example("button", "Button", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownButton", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownButton"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item")))), ``, ``);

auto linkExample = demoBs5Example("link", "Link", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggleLink("dropdownLink", ["btn-secondary"], ["href":"#", "data-bs-toggle":"dropdown"], "Dropdown Link"),
      BS5DropdownMenu(["aria-labelledby":"dropdownLink"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item")))), ``, ``);

auto splitExample = demoBs5Example("split", "Split button", 
  H5Div(
    BS5ButtonGroup(
      BS5Button(["btn-secondary"], "Dropdown split button"),
      BS5DropdownToggle("dropdownSplit", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown"], H5Span(["visually-hidden"],"Toggle dropdown")),
      BS5DropdownMenu(["aria-labelledby":"dropdownSplit"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item")))), ``, ``);

auto sizingExample = demoBs5Example("sizing", "Sizing", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownSmall", ["btn-secondary", "btn-sm"], ["data-bs-toggle":"dropdown"], "Small button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownSmall"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item"))
    ),
    H5Br,
    BS5Dropdown(
      BS5DropdownToggle("dropdownMedium", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Medium button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownMedium"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item"))
    ),
    H5Br,
    BS5Dropdown(
      BS5DropdownToggle("dropdownLarge", ["btn-secondary", "btn-lg"], ["data-bs-toggle":"dropdown"], "Large button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownLarge"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item"))
    )), ``, ``);

auto darkExample = demoBs5Example("dark", "Dark", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownDark", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown dark"),
      BS5DropdownMenu(["aria-labelledby":"dropdownDark"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item")))), ``, ``);

auto navbarExample = demoBs5Example("navbar", "Navbar component", 
  H5Div(
    BS5Navbar(["navbar-dark", "bg-dark", "navbar-expand"], 
      BS5Container, 
        BS5NavbarBrand(["href":"#"], "Navbar"),
        BS5NavbarCollapse(
          BS5NavbarNav(
            BS5NavItem(["dropdown"], 
              BS5NavLink("navbarDropdownDark", ["dropdown-toggle"], ["href":"#", "data-bs-toggle":"dropdown", "role":"button", "aria-expanded":"false"], "Dropdown dark"),
              BS5DropdownMenu(["dropdown-menu-dark"], ["aria-labelledby":"navbarDropdownDark"], 
                H5Li(BS5DropdownLink(["href":"#"], "First item")),
                H5Li(BS5DropdownLink(["href":"#"], "Second item")),
                H5Li(BS5DropdownLink(["href":"#"], "Third item")))))))), ``, ``);

auto directionExample = demoBs5Example("direction", "Direction", 
  H5Div(
    BS5ButtonGroup(["dropup"],
      BS5DropdownToggle("dropup", ["btn-secondary"], "Dropup"),
      BS5DropdownMenu(["aria-labelledby":"dropup"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item"))),
    H5Br,
    H5Br,
    BS5ButtonGroup(["dropstart"],
      BS5DropdownToggle("dropstart", ["btn-secondary"], "Dropstart"),
      BS5DropdownMenu(["aria-labelledby":"dropstart"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item"))),
    H5Br,
    H5Br,
    BS5ButtonGroup(["dropend"],
      BS5DropdownToggle("dropend", ["btn-secondary"], "Dropend"),
      BS5DropdownMenu(["aria-labelledby":"dropend"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item")))), ``, ``);

auto alignmentExample = demoBs5Example("alignment", "Alignment", 
  H5Div(
    BS5ButtonGroup(
      BS5DropdownToggle("dropdownResponsive", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown responsive alignment"),
        BS5DropdownMenu(["dropdown-menu-lg-end"], ["aria-labelledby":"dropdownResponsive"],
          BS5DropdownLink(["href":"#"], "First item"),
          BS5DropdownLink(["href":"#"], "Second item"),
          BS5DropdownLink(["href":"#"], "Third item"))),
    H5Br,
    H5Br,
    BS5ButtonGroup(
      BS5DropdownToggle("dropdownResponsive", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown responsive alignment"),
        BS5DropdownMenu(["dropdown-menu-end", "dropdown-menu-lg-start"], ["aria-labelledby":"dropdownResponsive"],
          BS5DropdownLink(["href":"#"], "First item"),
          BS5DropdownLink(["href":"#"], "Second item"),
          BS5DropdownLink(["href":"#"], "Third item"))))
    , ``, ``);
    
auto buttonsExample = demoBs5Example("buttons", "Button items", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownButtonItems", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownButtonItems"],
        BS5Button(["dropdown-item"], "First item"),
        BS5Button(["dropdown-item"], "Second item"),
        BS5Button(["dropdown-item"], "Third item")))), ``, ``);

auto activeExample = demoBs5Example("active", "Active item", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownActive", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownActive"],
        BS5DropdownLink(["dropdown-item", "active"], ["href":"#"], "First item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Third item")))), ``, ``);

auto disabledExample = demoBs5Example("disabled", "Disabled item", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownDisabled", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownDisabled"],
        BS5DropdownLink(["dropdown-item", "disabled"], ["href":"#"], "First item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Third item")))), ``, ``);

auto headerExample = demoBs5Example("header", "Header", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownHeader", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownHeader"],
        BS5DropdownHeader("Dropdown header"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "First item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Third item")))), ``, ``);

auto dividerExample = demoBs5Example("divider", "Divider", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownDivider", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownDivider"],
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "First item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
        BS5DropdownDivider,
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Third item")))), ``, ``);

auto textExample = demoBs5Example("text", "Text item", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownText", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownText"],
        H5Span(["dropdown-item-text"], "Dropdown text item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
        BS5DropdownDivider,
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Third item")))), ``, ``);

auto referenceExample = demoBs5Example("reference", "Reference", 
  H5Div(
    BS5ButtonGroup(
      BS5Button(["btn-secondary"], "Dropdown split button"),
      BS5DropdownToggle("dropdownReference", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown", "data-bs-reference":"parent"], H5Span(["visually-hidden"],"Toggle dropdown")),
      BS5DropdownMenu(["aria-labelledby":"dropdownReference"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item")))), ``, ``);

      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Components"], "Dropdowns")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Dropdowns"),
      H5Hr,

      buttonExample, 
      linkExample, 
      splitExample, 
      sizingExample, 
      darkExample, 
      navbarExample, 
      directionExample, 
      alignmentExample, 
      buttonsExample, 
      activeExample, 
      disabledExample, 
      headerExample, 
      dividerExample, 
      textExample, 
      referenceExample 

    ))).toString;
    }
  });
}