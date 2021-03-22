module uim.bootstrap.bs5.demos.components.dropdowns;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/components/dropdowns", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Dropdowns - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content(string[string] someParameters = null) {  

auto buttonExample = demoBs5Example("button", "Button", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownButton", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownButton"])
      .link(["href":"#"], "Item 1")
      .link(["href":"#"], "Item 2")
      .link(["href":"#"], "Item 3"))
        ), 
        `BS5Dropdown(
  BS5DropdownToggle("dropdownButton", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownButton"],
    BS5DropdownLink(["href":"#"], "Item 1"),
    BS5DropdownLink(["href":"#"], "Item 2"),
    BS5DropdownLink(["href":"#"], "Item 3")))

--- Compact version ---

BS5Dropdown(
  BS5DropdownToggle("dropdownButton", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownButton"])
  .link(["href":"#"], "Item 1")
  .link(["href":"#"], "Item 2")
  .link(["href":"#"], "Item 3"))

    `, 
        `<div class="dropdown">
  <button id="dropdownButton" class="btn btn-secondary dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownButton">
    <a class="dropdown-item" href="#">Item 1</a>
    <a class="dropdown-item" href="#">Item 2</a>
    <a class="dropdown-item" href="#">Item 3</a>
  </div>
</div>`);

auto linkExample = demoBs5Example("link", "Link", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggleLink("dropdownLink", ["btn-secondary"], ["href":"#", "data-bs-toggle":"dropdown"], "Dropdown Link"),
      BS5DropdownMenu(["aria-labelledby":"dropdownLink"])
      .link(["href":"#"], "Item 1")
      .link(["href":"#"], "Item 2")
      .link(["href":"#"], "Item 3"))
  ), 
`BS5Dropdown(
  BS5DropdownToggleLink("dropdownLink", ["btn-secondary"], ["href":"#", "data-bs-toggle":"dropdown"], "Dropdown Link"),
  BS5DropdownMenu(["aria-labelledby":"dropdownLink"],
    BS5DropdownLink(["href":"#"], "Item 1"),
    BS5DropdownLink(["href":"#"], "Item 2"),
    BS5DropdownLink(["href":"#"], "Item 3")))

--- Compact version ---

BS5Dropdown(
  BS5DropdownToggleLink("dropdownLink", ["btn-secondary"], ["href":"#", "data-bs-toggle":"dropdown"], "Dropdown Link"),
  BS5DropdownMenu(["aria-labelledby":"dropdownLink"])
  .link(["href":"#"], "Item 1")
  .link(["href":"#"], "Item 2")
  .link(["href":"#"], "Item 3"))
  `, 
        `H5Div(["dropdown"]
  <a ["btn btn-secondary dropdown-toggle" href="#" id="dropdownLink" data-bs-toggle="dropdown" aria-expanded="false"]Dropdown link</a>
  H5Div(["dropdown-menu" aria-labelledby="dropdownLink"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)`);

auto splitExample = demoBs5Example("split", "Split button", 
  H5Div(
    BS5ButtonGroup(
      BS5Button(["btn-secondary"], "Dropdown split button"),
      BS5DropdownToggle("dropdownSplit", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown"], H5Span(["visually-hidden"],"Toggle dropdown")),
      BS5DropdownMenu(["aria-labelledby":"dropdownSplit"])
      .link(["href":"#"], "Item 1")
      .link(["href":"#"], "Item 2")
      .link(["href":"#"], "Item 3"))
  ), 
        `BS5ButtonGroup(
  BS5Button(["btn-secondary"], "Dropdown split button"),
  BS5DropdownToggle("dropdownSplit", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown"], H5Span(["visually-hidden"],"Toggle dropdown")),
  BS5DropdownMenu(["aria-labelledby":"dropdownSplit"],
    BS5DropdownLink(["href":"#"], "Item 1"),
    BS5DropdownLink(["href":"#"], "Item 2"),
    BS5DropdownLink(["href":"#"], "Item 3")))
    
--- Compact version ---

BS5ButtonGroup(
  BS5Button(["btn-secondary"], "Dropdown split button"),
  BS5DropdownToggle("dropdownSplit", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown"], H5Span(["visually-hidden"],"Toggle dropdown")),
  BS5DropdownMenu(["aria-labelledby":"dropdownSplit"],
    .link(["href":"#"], "Item 1")
    .link(["href":"#"], "Item 2")
    .link(["href":"#"], "Item 3"))`, 
        `H5Div(["btn-group"]
  H5Button(["type":"button" ["btn btn-secondary"]Dropdown split button")
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle dropdown-toggle-split" id="dropdownSplit" data-bs-toggle="dropdown" aria-expanded="false"]H5Span(["visually-hidden"]Toggle dropdown")")
  H5Div(["dropdown-menu" aria-labelledby="dropdownSplit"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)`);

auto sizingExample = demoBs5Example("sizing", "Sizing", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownSmall", ["btn-secondary", "btn-sm"], ["data-bs-toggle":"dropdown"], "Small button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownSmall"],
        BS5DropdownLink(["href":"#"], "Item 1"),
        BS5DropdownLink(["href":"#"], "Item 2"),
        BS5DropdownLink(["href":"#"], "Item 3"))),
    H5Br,
    BS5Dropdown(
      BS5DropdownToggle("dropdownMedium", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Medium button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownMedium"],
        BS5DropdownLink(["href":"#"], "Item 1"),
        BS5DropdownLink(["href":"#"], "Item 2"),
        BS5DropdownLink(["href":"#"], "Item 3"))),
    H5Br,
    BS5Dropdown(
      BS5DropdownToggle("dropdownLarge", ["btn-secondary", "btn-lg"], ["data-bs-toggle":"dropdown"], "Large button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownLarge"],
        BS5DropdownLink(["href":"#"], "Item 1"),
        BS5DropdownLink(["href":"#"], "Item 2"),
        BS5DropdownLink(["href":"#"], "Item 3")))
  ), 
  `BS5Dropdown(
  BS5DropdownToggle("dropdownSmall", ["btn-secondary", "btn-sm"], ["data-bs-toggle":"dropdown"], "Small button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownSmall"],
    BS5DropdownLink(["href":"#"], "Item 1"),
    BS5DropdownLink(["href":"#"], "Item 2"),
    BS5DropdownLink(["href":"#"], "Item 3"))),
H5Br,
BS5Dropdown(
  BS5DropdownToggle("dropdownMedium", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Medium button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownMedium"],
    BS5DropdownLink(["href":"#"], "Item 1"),
    BS5DropdownLink(["href":"#"], "Item 2"),
    BS5DropdownLink(["href":"#"], "Item 3"))),
H5Br,
BS5Dropdown(
  BS5DropdownToggle("dropdownLarge", ["btn-secondary", "btn-lg"], ["data-bs-toggle":"dropdown"], "Large button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownLarge"],
    BS5DropdownLink(["href":"#"], "Item 1"),
    BS5DropdownLink(["href":"#"], "Item 2"),
    BS5DropdownLink(["href":"#"], "Item 3")))`, 
  `H5Div(["dropdown"]
  H5Button(["type":"button" ["btn btn-secondary btn-sm dropdown-toggle" id="dropdownSmall" data-bs-toggle="dropdown" aria-expanded="false"]Small button")
  H5Div(["dropdown-menu" aria-labelledby="dropdownSmall"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)
H5Br,
H5Div(["dropdown"]
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle" id="dropdownMedium" data-bs-toggle="dropdown" aria-expanded="false"]Medium button")
  H5Div(["dropdown-menu" aria-labelledby="dropdownMedium"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)
H5Br,
H5Div(["dropdown"]
  H5Button(["type":"button" ["btn btn-secondary btn-lg dropdown-toggle" id="dropdownLarge" data-bs-toggle="dropdown" aria-expanded="false"]Large button")
  H5Div(["dropdown-menu" aria-labelledby="dropdownLarge"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)`);

auto darkExample = demoBs5Example("dark", "Dark", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownDark", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown dark"),
      BS5DropdownMenu(["aria-labelledby":"dropdownDark"])
      .link(["href":"#"], "Item 1")
      .link(["href":"#"], "Item 2")
      .link(["href":"#"], "Item 3"))
  ), ``, ``);

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
                H5Li(BS5DropdownLink(["href":"#"], "Item 1")),
                H5Li(BS5DropdownLink(["href":"#"], "Item 2")),
                H5Li(BS5DropdownLink(["href":"#"], "Item 3")))))))
  ), 
  `BS5Navbar(["navbar-dark", "bg-dark", "navbar-expand"], 
  BS5Container, 
    BS5NavbarBrand(["href":"#"], "Navbar"),
    BS5NavbarCollapse(
      BS5NavbarNav(
        BS5NavItem(["dropdown"], 
          BS5NavLink("navbarDropdownDark", ["dropdown-toggle"], ["href":"#", "data-bs-toggle":"dropdown", "role":"button", "aria-expanded":"false"], "Dropdown dark"),
          BS5DropdownMenu(["dropdown-menu-dark"], ["aria-labelledby":"navbarDropdownDark"], 
            H5Li(BS5DropdownLink(["href":"#"], "Item 1")),
            H5Li(BS5DropdownLink(["href":"#"], "Item 2")),
            H5Li(BS5DropdownLink(["href":"#"], "Item 3")))))))`, 
  ``);

  /*

  `BS5Dropdown(
  BS5DropdownToggle("dropdownDark", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown dark"),
  BS5DropdownMenu(["aria-labelledby":"dropdownDark"],
    BS5DropdownLink(["href":"#"], "Item 1"),
    BS5DropdownLink(["href":"#"], "Item 2"),
    BS5DropdownLink(["href":"#"], "Item 3")))
    
--- Compact version ---

BS5Dropdown(
  BS5DropdownToggle("dropdownDark", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown dark"),
  BS5DropdownMenu(["aria-labelledby":"dropdownDark"],
  .link(["href":"#"], "Item 1")
  .link(["href":"#"], "Item 2")
  .link(["href":"#"], "Item 3"))`, 
  `H5Div(["dropdown"]
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle" id="dropdownDark" data-bs-toggle="dropdown" aria-expanded="false"]Dropdown dark")
  H5Div(["dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownDark"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)
H5H5(["text-muted", "mt-3"], "In navbar component")
<nav ["navbar navbar-dark bg-dark navbar-expand"]
  H5Div(["container"]
    <a href="#" ["navbar-brand"]Navbar</a>
    H5Div(["collapse navbar-collapse"]
      H5Ul(["navbar-nav"]
        H5Li(["nav-item dropdown"]
          <a href="#" ["nav-link dropdown-toggle" id="navbarDropdownDark" data-bs-toggle="dropdown" role="button" aria-expanded="false"]Dropdown dark</a>
          H5Ul(["dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDropdownDark"]
            H5Li("
              <a href="#" ["dropdown-item"]Item 1</a>
            ")
            H5Li("
              <a href="#" ["dropdown-item"]Item 2</a>
            ")
            H5Li("
              <a href="#" ["dropdown-item"]Item 3</a>
            ")
          )
        ")
      )
    )
  )
</nav>`
  */

auto directionExample = demoBs5Example("direction", "Direction", 
  H5Div(
    BS5ButtonGroup(["dropup"],
      BS5DropdownToggle("dropup", ["btn-secondary"], "Dropup"),
      BS5DropdownMenu(["aria-labelledby":"dropup"],
        BS5DropdownLink(["href":"#"], "Item 1"),
        BS5DropdownLink(["href":"#"], "Item 2"),
        BS5DropdownLink(["href":"#"], "Item 3"))),
    H5Br,
    H5Br,
    BS5ButtonGroup(["dropstart"],
      BS5DropdownToggle("dropstart", ["btn-secondary"], "Dropstart"),
      BS5DropdownMenu(["aria-labelledby":"dropstart"],
        BS5DropdownLink(["href":"#"], "Item 1"),
        BS5DropdownLink(["href":"#"], "Item 2"),
        BS5DropdownLink(["href":"#"], "Item 3"))),
    H5Br,
    H5Br,
    BS5ButtonGroup(["dropend"],
      BS5DropdownToggle("dropend", ["btn-secondary"], "Dropend"),
      BS5DropdownMenu(["aria-labelledby":"dropend"],
        BS5DropdownLink(["href":"#"], "Item 1"),
        BS5DropdownLink(["href":"#"], "Item 2"),
        BS5DropdownLink(["href":"#"], "Item 3")))
  ), 
  `BS5ButtonGroup(["dropup"],
  BS5DropdownToggle("dropup", ["btn-secondary"], "Dropup"),
  BS5DropdownMenu(["aria-labelledby":"dropup"],
    BS5DropdownLink(["href":"#"], "Item 1"),
    BS5DropdownLink(["href":"#"], "Item 2"),
    BS5DropdownLink(["href":"#"], "Item 3"))),
H5Br,
H5Br,
BS5ButtonGroup(["dropstart"],
  BS5DropdownToggle("dropstart", ["btn-secondary"], "Dropstart"),
  BS5DropdownMenu(["aria-labelledby":"dropstart"],
    BS5DropdownLink(["href":"#"], "Item 1"),
    BS5DropdownLink(["href":"#"], "Item 2"),
    BS5DropdownLink(["href":"#"], "Item 3"))),
H5Br,
H5Br,
BS5ButtonGroup(["dropend"],
  BS5DropdownToggle("dropend", ["btn-secondary"], "Dropend"),
  BS5DropdownMenu(["aria-labelledby":"dropend"],
    BS5DropdownLink(["href":"#"], "Item 1"),
    BS5DropdownLink(["href":"#"], "Item 2"),
    BS5DropdownLink(["href":"#"], "Item 3")))`, 
  `H5Div(["btn-group dropup"]
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle" id="dropup" data-bs-toggle="dropdown" aria-expanded="false"]Dropup")
  H5Div(["dropdown-menu" aria-labelledby="dropup"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)
H5Br,H5Br,
H5Div(["btn-group dropend"]
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle" id="dropend" data-bs-toggle="dropdown" aria-expanded="false"]Dropright")
  H5Div(["dropdown-menu" aria-labelledby="dropend"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)
H5Br,H5Br,
H5Div(["btn-group dropstart"]
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle" id="dropstart" data-bs-toggle="dropdown" aria-expanded="false"]Dropleft")
  H5Div(["dropdown-menu" aria-labelledby="dropstart"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)`);

auto alignmentExample = demoBs5Example("alignment", "Alignment", 
  H5Div(
    BS5ButtonGroup(
     BS5DropdownToggle("dropdownEndAligned", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown right-aligned"),
        BS5DropdownMenu(["dropdown-menu-end"], ["aria-labelledby":"dropdownEndAligned"],
          BS5DropdownLink(["href":"#"], "Item 1"),
          BS5DropdownLink(["href":"#"], "Item 2"),
          BS5DropdownLink(["href":"#"], "Item 3")))
  ), 
  `BS5ButtonGroup(
     BS5DropdownToggle("dropdownEndAligned", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown right-aligned"),
        BS5DropdownMenu(["dropdown-menu-end"], ["aria-labelledby":"dropdownEndAligned"],
          BS5DropdownLink(["href":"#"], "Item 1"),
          BS5DropdownLink(["href":"#"], "Item 2"),
          BS5DropdownLink(["href":"#"], "Item 3")))`, 
  `H5Div(["btn-group"]
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle" id="dropdownEndAligned" data-bs-toggle="dropdown" aria-expanded="false"]Dropdown right-aligned")
  H5Div(["dropdown-menu dropdown-menu-end" aria-labelledby="dropdownEndAligned"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)`);

auto responsiveExample = demoBs5Example("responsive", "Responsive", 
  H5Div(
    BS5ButtonGroup(
      BS5DropdownToggle("dropdownResponsive", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown responsive alignment"),
        BS5DropdownMenu(["dropdown-menu-lg-end"], ["aria-labelledby":"dropdownResponsive"],
          BS5DropdownLink(["href":"#"], "Item 1"),
          BS5DropdownLink(["href":"#"], "Item 2"),
          BS5DropdownLink(["href":"#"], "Item 3"))),
    H5Br,
    H5Br,
    BS5ButtonGroup(
      BS5DropdownToggle("dropdownResponsive", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown responsive alignment"),
        BS5DropdownMenu(["dropdown-menu-end", "dropdown-menu-lg-start"], ["aria-labelledby":"dropdownResponsive"],
          BS5DropdownLink(["href":"#"], "Item 1"),
          BS5DropdownLink(["href":"#"], "Item 2"),
          BS5DropdownLink(["href":"#"], "Item 3")))
  ), 
  `BS5ButtonGroup(
    BS5DropdownToggle("dropdownResponsive", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown responsive alignment"),
      BS5DropdownMenu(["dropdown-menu-lg-end"], ["aria-labelledby":"dropdownResponsive"],
        BS5DropdownLink(["href":"#"], "Item 1"),
        BS5DropdownLink(["href":"#"], "Item 2"),
        BS5DropdownLink(["href":"#"], "Item 3"))),
  H5Br,
  H5Br,
  BS5ButtonGroup(
    BS5DropdownToggle("dropdownResponsive", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown responsive alignment"),
      BS5DropdownMenu(["dropdown-menu-end", "dropdown-menu-lg-start"], ["aria-labelledby":"dropdownResponsive"],
        BS5DropdownLink(["href":"#"], "Item 1"),
        BS5DropdownLink(["href":"#"], "Item 2"),
        BS5DropdownLink(["href":"#"], "Item 3")))`, 
  `H5Div(["btn-group"]
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle" id="dropdownEndAligned" data-bs-toggle="dropdown" aria-expanded="false"]Dropdown right-aligned")
  H5Div(["dropdown-menu dropdown-menu-end" aria-labelledby="dropdownEndAligned"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)`);
    
auto buttonsExample = demoBs5Example("buttons", "Button items", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownButtonItems", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownButtonItems"],
        BS5Button(["dropdown-item"], "Item 1"),
        BS5Button(["dropdown-item"], "Item 2"),
        BS5Button(["dropdown-item"], "Item 3")))
  ), 
  `BS5Dropdown(
  BS5DropdownToggle("dropdownButtonItems", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownButtonItems"],
    BS5Button(["dropdown-item"], "Item 1"),
    BS5Button(["dropdown-item"], "Item 2"),
    BS5Button(["dropdown-item"], "Item 3")))`, 
  `H5Div(["dropdown"]
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle" id="dropdownButtonItems" data-bs-toggle="dropdown" aria-expanded="false"]Dropdown button")
  H5Div(["dropdown-menu" aria-labelledby="dropdownButtonItems"]
    H5Button(["type":"button" ["dropdown-item"]First button")
    H5Button(["type":"button" ["dropdown-item"]Second button")
    H5Button(["type":"button" ["dropdown-item"]Third button")
  )
)`);

auto activeExample = demoBs5Example("active", "Active item", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownActive", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownActive"],
        BS5DropdownLink(["dropdown-item", "active"], ["href":"#"], "Item 1"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 2"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 3")))
  ), 
  `BS5Dropdown(
  BS5DropdownToggle("dropdownActive", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownActive"],
    BS5DropdownLink(["dropdown-item", "active"], ["href":"#"], "Item 1"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 2"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 3")))`, 
  `H5Div(["dropdown"]
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle" id="dropdownActive" data-bs-toggle="dropdown" aria-expanded="false"]Dropdown button")
  H5Div(["dropdown-menu" aria-labelledby="dropdownActive"]
    <a href="#" ["dropdown-item active"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)`);

auto disabledExample = demoBs5Example("disabled", "Disabled item", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownDisabled", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownDisabled"],
        BS5DropdownLink(["dropdown-item", "disabled"], ["href":"#"], "Item 1"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 2"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 3")))
  ), 
  `BS5Dropdown(
  BS5DropdownToggle("dropdownDisabled", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownDisabled"],
    BS5DropdownLink(["dropdown-item", "disabled"], ["href":"#"], "Item 1"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 2"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 3")))`, 
  `H5Div(["dropdown"]
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle" id="dropdownDisabled" data-bs-toggle="dropdown" aria-expanded="false"]Dropdown button")
  H5Div(["dropdown-menu" aria-labelledby="dropdownDisabled"]
    <a href="#" ["dropdown-item disabled"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)`);

auto headerExample = demoBs5Example("header", "Header", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownHeader", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownHeader"],
        BS5DropdownHeader("Dropdown header"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 1"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 2"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 3")))
  ), `BS5Dropdown(
  BS5DropdownToggle("dropdownHeader", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownHeader"],
    BS5DropdownHeader("Dropdown header"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 1"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 2"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 3")))`, 
    `H5Div(["dropdown"]
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle" id="dropdownHeader" data-bs-toggle="dropdown" aria-expanded="false"]Dropdown button")
  H5Div(["dropdown-menu" aria-labelledby="dropdownHeader"]
    <h6 ["dropdown-header"]Dropdown header</h6>
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)`);

auto dividerExample = demoBs5Example("divider", "Divider", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownDivider", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownDivider"],
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 1"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 2"),
        BS5DropdownDivider,
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 3")))
  ), 
  `BS5Dropdown(
  BS5DropdownToggle("dropdownDivider", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownDivider"],
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 1"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 2"),
    BS5DropdownDivider,
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 3")))`, 
  `H5Div(["dropdown"]
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle" id="dropdownDivider" data-bs-toggle="dropdown" aria-expanded="false"]Dropdown button")
  H5Div(["dropdown-menu" aria-labelledby="dropdownDivider"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    H5Div(["dropdown-divider"])
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)`);

auto textExample = demoBs5Example("text", "Text item", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownText", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownText"],
        H5Span(["dropdown-item-text"], "Dropdown text item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 2"),
        BS5DropdownDivider,
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 3")))
  ), 
  `BS5Dropdown(
  BS5DropdownToggle("dropdownText", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownText"],
    H5Span(["dropdown-item-text"], "Dropdown text item"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 2"),
    BS5DropdownDivider,
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Item 3")))`, 
  `H5Div(["dropdown"]
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle" id="dropdownText" data-bs-toggle="dropdown" aria-expanded="false"]Dropdown button")
  H5Div(["dropdown-menu" aria-labelledby="dropdownText"]
    H5Span(["dropdown-item-text"]Dropdown text item")
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)`);

auto referenceExample = demoBs5Example("reference", "Reference", 
  H5Div(
    BS5ButtonGroup(
      BS5Button(["btn-secondary"], "Dropdown split button"),
      BS5DropdownToggle("dropdownReference", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown", "data-bs-reference":"parent"], H5Span(["visually-hidden"],"Toggle dropdown")),
      BS5DropdownMenu(["aria-labelledby":"dropdownReference"],
        BS5DropdownLink(["href":"#"], "Item 1"),
        BS5DropdownLink(["href":"#"], "Item 2"),
        BS5DropdownLink(["href":"#"], "Item 3")))
  ), 
  `BS5ButtonGroup(
  BS5Button(["btn-secondary"], "Dropdown split button"),
  BS5DropdownToggle("dropdownReference", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown", "data-bs-reference":"parent"], H5Span(["visually-hidden"],"Toggle dropdown")),
  BS5DropdownMenu(["aria-labelledby":"dropdownReference"],
    BS5DropdownLink(["href":"#"], "Item 1"),
    BS5DropdownLink(["href":"#"], "Item 2"),
    BS5DropdownLink(["href":"#"], "Item 3")))`, 
  `H5Div(["btn-group"]
  H5Button(["type":"button" ["btn btn-secondary"]Dropdown split button")
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle dropdown-toggle-split" id="dropdownReference" data-bs-toggle="dropdown" aria-expanded="false" data-bs-reference="parent"]H5Span(["visually-hidden"]Toggle dropdown")")
  H5Div(["dropdown-menu" aria-labelledby="dropdownReference"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)`);

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Components"], "Dropdowns")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "components"),
      listSections("basic", "components", "dropdowns")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
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
      responsiveExample,
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