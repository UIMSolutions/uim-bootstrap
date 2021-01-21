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
        BS5DropdownLink(["href":"#"], "Third item")))
        ), 
        `BS5Dropdown(
  BS5DropdownToggle("dropdownButton", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownButton"],
    BS5DropdownLink(["href":"#"], "First item"),
    BS5DropdownLink(["href":"#"], "Second item"),
    BS5DropdownLink(["href":"#"], "Third item")))`, 
        `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownButton" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownButton">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto linkExample = demoBs5Example("link", "Link", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggleLink("dropdownLink", ["btn-secondary"], ["href":"#", "data-bs-toggle":"dropdown"], "Dropdown Link"),
      BS5DropdownMenu(["aria-labelledby":"dropdownLink"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item")))
        ), 
        `BS5Dropdown(
  BS5DropdownToggleLink("dropdownLink", ["btn-secondary"], ["href":"#", "data-bs-toggle":"dropdown"], "Dropdown Link"),
  BS5DropdownMenu(["aria-labelledby":"dropdownLink"],
    BS5DropdownLink(["href":"#"], "First item"),
    BS5DropdownLink(["href":"#"], "Second item"),
    BS5DropdownLink(["href":"#"], "Third item")))`, 
        `<div class="dropdown">
  <a class="btn btn-secondary dropdown-toggle" href="#" id="dropdownLink" data-bs-toggle="dropdown" aria-expanded="false">Dropdown link</a>
  <div class="dropdown-menu" aria-labelledby="dropdownLink">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto splitExample = demoBs5Example("split", "Split button", 
  H5Div(
    BS5ButtonGroup(
      BS5Button(["btn-secondary"], "Dropdown split button"),
      BS5DropdownToggle("dropdownSplit", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown"], H5Span(["visually-hidden"],"Toggle dropdown")),
      BS5DropdownMenu(["aria-labelledby":"dropdownSplit"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item")))
        ), 
        `BS5ButtonGroup(
  BS5Button(["btn-secondary"], "Dropdown split button"),
  BS5DropdownToggle("dropdownSplit", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown"], H5Span(["visually-hidden"],"Toggle dropdown")),
  BS5DropdownMenu(["aria-labelledby":"dropdownSplit"],
    BS5DropdownLink(["href":"#"], "First item"),
    BS5DropdownLink(["href":"#"], "Second item"),
    BS5DropdownLink(["href":"#"], "Third item")))`, 
        `<div class="btn-group">
  <button type="button" class="btn btn-secondary">Dropdown split button</button>
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" id="dropdownSplit" data-bs-toggle="dropdown" aria-expanded="false"><span class="visually-hidden">Toggle dropdown</span></button>
  <div class="dropdown-menu" aria-labelledby="dropdownSplit">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto sizingExample = demoBs5Example("sizing", "Sizing", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownSmall", ["btn-secondary", "btn-sm"], ["data-bs-toggle":"dropdown"], "Small button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownSmall"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item"))),
    H5Br,
    BS5Dropdown(
      BS5DropdownToggle("dropdownMedium", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Medium button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownMedium"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item"))),
    H5Br,
    BS5Dropdown(
      BS5DropdownToggle("dropdownLarge", ["btn-secondary", "btn-lg"], ["data-bs-toggle":"dropdown"], "Large button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownLarge"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item")))
  ), 
  `BS5Dropdown(
  BS5DropdownToggle("dropdownSmall", ["btn-secondary", "btn-sm"], ["data-bs-toggle":"dropdown"], "Small button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownSmall"],
    BS5DropdownLink(["href":"#"], "First item"),
    BS5DropdownLink(["href":"#"], "Second item"),
    BS5DropdownLink(["href":"#"], "Third item"))),
H5Br,
BS5Dropdown(
  BS5DropdownToggle("dropdownMedium", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Medium button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownMedium"],
    BS5DropdownLink(["href":"#"], "First item"),
    BS5DropdownLink(["href":"#"], "Second item"),
    BS5DropdownLink(["href":"#"], "Third item"))),
H5Br,
BS5Dropdown(
  BS5DropdownToggle("dropdownLarge", ["btn-secondary", "btn-lg"], ["data-bs-toggle":"dropdown"], "Large button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownLarge"],
    BS5DropdownLink(["href":"#"], "First item"),
    BS5DropdownLink(["href":"#"], "Second item"),
    BS5DropdownLink(["href":"#"], "Third item")))`, 
  `<div class="dropdown">
  <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" id="dropdownSmall" data-bs-toggle="dropdown" aria-expanded="false">Small button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownSmall">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>
<br>
<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownMedium" data-bs-toggle="dropdown" aria-expanded="false">Medium button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownMedium">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>
<br>
<div class="dropdown">
  <button type="button" class="btn btn-secondary btn-lg dropdown-toggle" id="dropdownLarge" data-bs-toggle="dropdown" aria-expanded="false">Large button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownLarge">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto darkExample = demoBs5Example("dark", "Dark", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownDark", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown dark"),
      BS5DropdownMenu(["aria-labelledby":"dropdownDark"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item")))
  ), 
  `BS5Dropdown(
  BS5DropdownToggle("dropdownDark", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown dark"),
  BS5DropdownMenu(["aria-labelledby":"dropdownDark"],
    BS5DropdownLink(["href":"#"], "First item"),
    BS5DropdownLink(["href":"#"], "Second item"),
    BS5DropdownLink(["href":"#"], "Third item")))`, 
  `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownDark" data-bs-toggle="dropdown" aria-expanded="false">Dropdown dark</button>
  <div class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownDark">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>
<h4 class="h5 text-muted mt-3">In navbar component</h4>
<nav class="navbar navbar-dark bg-dark navbar-expand">
  <div class="container">
    <a href="#" class="navbar-brand">Navbar</a>
    <div class="collapse navbar-collapse">
      <ul class="navbar-nav">
        <li class="nav-item dropdown">
          <a href="#" class="nav-link dropdown-toggle" id="navbarDropdownDark" data-bs-toggle="dropdown" role="button" aria-expanded="false">Dropdown dark</a>
          <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDropdownDark">
            <li>
              <a href="#" class="dropdown-item">First item</a>
            </li>
            <li>
              <a href="#" class="dropdown-item">Second item</a>
            </li>
            <li>
              <a href="#" class="dropdown-item">Third item</a>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>`);

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
                H5Li(BS5DropdownLink(["href":"#"], "Third item")))))))
  ), 
  `BS5Navbar(["navbar-dark", "bg-dark", "navbar-expand"], 
  BS5Container, 
    BS5NavbarBrand(["href":"#"], "Navbar"),
    BS5NavbarCollapse(
      BS5NavbarNav(
        BS5NavItem(["dropdown"], 
          BS5NavLink("navbarDropdownDark", ["dropdown-toggle"], ["href":"#", "data-bs-toggle":"dropdown", "role":"button", "aria-expanded":"false"], "Dropdown dark"),
          BS5DropdownMenu(["dropdown-menu-dark"], ["aria-labelledby":"navbarDropdownDark"], 
            H5Li(BS5DropdownLink(["href":"#"], "First item")),
            H5Li(BS5DropdownLink(["href":"#"], "Second item")),
            H5Li(BS5DropdownLink(["href":"#"], "Third item")))))))`, 
  ``);

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
        BS5DropdownLink(["href":"#"], "Third item")))
  ), 
  `BS5ButtonGroup(["dropup"],
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
    BS5DropdownLink(["href":"#"], "Third item")))`, 
  `<div class="btn-group dropup">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropup" data-bs-toggle="dropdown" aria-expanded="false">Dropup</button>
  <div class="dropdown-menu" aria-labelledby="dropup">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>
<br><br>
<div class="btn-group dropend">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropend" data-bs-toggle="dropdown" aria-expanded="false">Dropright</button>
  <div class="dropdown-menu" aria-labelledby="dropend">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>
<br><br>
<div class="btn-group dropstart">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropstart" data-bs-toggle="dropdown" aria-expanded="false">Dropleft</button>
  <div class="dropdown-menu" aria-labelledby="dropstart">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto alignmentExample = demoBs5Example("alignment", "Alignment", 
  H5Div(
    BS5ButtonGroup(
     BS5DropdownToggle("dropdownEndAligned", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown right-aligned"),
        BS5DropdownMenu(["dropdown-menu-end"], ["aria-labelledby":"dropdownEndAligned"],
          BS5DropdownLink(["href":"#"], "First item"),
          BS5DropdownLink(["href":"#"], "Second item"),
          BS5DropdownLink(["href":"#"], "Third item")))
  ), 
  `BS5ButtonGroup(
     BS5DropdownToggle("dropdownEndAligned", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown right-aligned"),
        BS5DropdownMenu(["dropdown-menu-end"], ["aria-labelledby":"dropdownEndAligned"],
          BS5DropdownLink(["href":"#"], "First item"),
          BS5DropdownLink(["href":"#"], "Second item"),
          BS5DropdownLink(["href":"#"], "Third item")))`, 
  `<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownEndAligned" data-bs-toggle="dropdown" aria-expanded="false">Dropdown right-aligned</button>
  <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownEndAligned">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto responsiveExample = demoBs5Example("responsive", "Responsive", 
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
          BS5DropdownLink(["href":"#"], "Third item")))
  ), 
  `BS5ButtonGroup(
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
        BS5DropdownLink(["href":"#"], "Third item")))`, 
  `<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownEndAligned" data-bs-toggle="dropdown" aria-expanded="false">Dropdown right-aligned</button>
  <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownEndAligned">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);
    
auto buttonsExample = demoBs5Example("buttons", "Button items", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownButtonItems", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownButtonItems"],
        BS5Button(["dropdown-item"], "First item"),
        BS5Button(["dropdown-item"], "Second item"),
        BS5Button(["dropdown-item"], "Third item")))
  ), 
  `BS5Dropdown(
  BS5DropdownToggle("dropdownButtonItems", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownButtonItems"],
    BS5Button(["dropdown-item"], "First item"),
    BS5Button(["dropdown-item"], "Second item"),
    BS5Button(["dropdown-item"], "Third item")))`, 
  `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownButtonItems" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownButtonItems">
    <button type="button" class="dropdown-item">First button</button>
    <button type="button" class="dropdown-item">Second button</button>
    <button type="button" class="dropdown-item">Third button</button>
  </div>
</div>`);

auto activeExample = demoBs5Example("active", "Active item", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownActive", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownActive"],
        BS5DropdownLink(["dropdown-item", "active"], ["href":"#"], "First item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Third item")))
  ), 
  `BS5Dropdown(
  BS5DropdownToggle("dropdownActive", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownActive"],
    BS5DropdownLink(["dropdown-item", "active"], ["href":"#"], "First item"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Third item")))`, 
  `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownActive" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownActive">
    <a href="#" class="dropdown-item active">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto disabledExample = demoBs5Example("disabled", "Disabled item", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownDisabled", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownDisabled"],
        BS5DropdownLink(["dropdown-item", "disabled"], ["href":"#"], "First item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Third item")))
  ), 
  `BS5Dropdown(
  BS5DropdownToggle("dropdownDisabled", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownDisabled"],
    BS5DropdownLink(["dropdown-item", "disabled"], ["href":"#"], "First item"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Third item")))`, 
  `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownDisabled" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownDisabled">
    <a href="#" class="dropdown-item disabled">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto headerExample = demoBs5Example("header", "Header", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownHeader", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownHeader"],
        BS5DropdownHeader("Dropdown header"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "First item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Third item")))
  ), `BS5Dropdown(
  BS5DropdownToggle("dropdownHeader", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownHeader"],
    BS5DropdownHeader("Dropdown header"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "First item"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Third item")))`, 
    `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownHeader" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownHeader">
    <h6 class="dropdown-header">Dropdown header</h6>
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto dividerExample = demoBs5Example("divider", "Divider", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownDivider", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownDivider"],
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "First item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
        BS5DropdownDivider,
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Third item")))
  ), 
  `BS5Dropdown(
  BS5DropdownToggle("dropdownDivider", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownDivider"],
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "First item"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
    BS5DropdownDivider,
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Third item")))`, 
  `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownDivider" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownDivider">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <div class="dropdown-divider"></div>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto textExample = demoBs5Example("text", "Text item", 
  H5Div(
    BS5Dropdown(
      BS5DropdownToggle("dropdownText", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      BS5DropdownMenu(["aria-labelledby":"dropdownText"],
        H5Span(["dropdown-item-text"], "Dropdown text item"),
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
        BS5DropdownDivider,
        BS5DropdownLink(["dropdown-item"], ["href":"#"], "Third item")))
  ), 
  `BS5Dropdown(
  BS5DropdownToggle("dropdownText", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  BS5DropdownMenu(["aria-labelledby":"dropdownText"],
    H5Span(["dropdown-item-text"], "Dropdown text item"),
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
    BS5DropdownDivider,
    BS5DropdownLink(["dropdown-item"], ["href":"#"], "Third item")))`, 
  `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownText" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownText">
    <span class="dropdown-item-text">Dropdown text item</span>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto referenceExample = demoBs5Example("reference", "Reference", 
  H5Div(
    BS5ButtonGroup(
      BS5Button(["btn-secondary"], "Dropdown split button"),
      BS5DropdownToggle("dropdownReference", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown", "data-bs-reference":"parent"], H5Span(["visually-hidden"],"Toggle dropdown")),
      BS5DropdownMenu(["aria-labelledby":"dropdownReference"],
        BS5DropdownLink(["href":"#"], "First item"),
        BS5DropdownLink(["href":"#"], "Second item"),
        BS5DropdownLink(["href":"#"], "Third item")))
  ), 
  `BS5ButtonGroup(
  BS5Button(["btn-secondary"], "Dropdown split button"),
  BS5DropdownToggle("dropdownReference", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown", "data-bs-reference":"parent"], H5Span(["visually-hidden"],"Toggle dropdown")),
  BS5DropdownMenu(["aria-labelledby":"dropdownReference"],
    BS5DropdownLink(["href":"#"], "First item"),
    BS5DropdownLink(["href":"#"], "Second item"),
    BS5DropdownLink(["href":"#"], "Third item")))`, 
  `<div class="btn-group">
  <button type="button" class="btn btn-secondary">Dropdown split button</button>
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" id="dropdownReference" data-bs-toggle="dropdown" aria-expanded="false" data-bs-reference="parent"><span class="visually-hidden">Toggle dropdown</span></button>
  <div class="dropdown-menu" aria-labelledby="dropdownReference">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

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