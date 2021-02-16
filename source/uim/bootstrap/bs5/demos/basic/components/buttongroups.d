module uim.bootstrap.bs5.demos.components.buttongroups;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/components/buttongroups", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Buttongroups - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Components"], "Button Groups")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "components"),
      listSections("basic", "components", "buttongroups")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Button Groups"),
      H5Hr,

demoBs5Example("default", "Default",  
  H5Div(
    BS5ButtonGroup(["aria-label":"Default button group"], 
      BS5Button(["btn-secondary"], "Home"), 
      BS5Button(["btn-secondary"], "Profile"),
      BS5Button(["btn-secondary"], "Settings"))
      ), 
      `BS5ButtonGroup(["aria-label":"Default button group"], 
      BS5Button(["btn-secondary"], "Home"), 
      BS5Button(["btn-secondary"], "Profile"),
      BS5Button(["btn-secondary"], "Settings"))`, ``),

demoBs5Example("states", "States",  
  H5Div(
    BS5ButtonGroup(["aria-label":"Default button group"], 
      BS5Button(["btn-secondary", "active"], "Home"), 
      BS5Button(["btn-secondary"], "Profile"),
      BS5Button(["btn-secondary"], "Settings"))
      ), 
      `BS5ButtonGroup(["aria-label":"Default button group"], 
      BS5Button(["btn-secondary", "active"], "Home"), 
      BS5Button(["btn-secondary"], "Profile"),
      BS5Button(["btn-secondary"], "Settings"))`, ``),

demoBs5Example("outlined", "Outlined",  
  H5Div(
    BS5ButtonGroup(["aria-label":"Default button group"], 
      BS5Button(["btn-outline-secondary"], "Home"), 
      BS5Button(["btn-outline-secondary"], "Profile"),
      BS5Button(["btn-outline-secondary"], "Settings"))
      ), 
      `BS5ButtonGroup(["aria-label":"Default button group"], 
      BS5Button(["btn-outline-secondary"], "Home"), 
      BS5Button(["btn-outline-secondary"], "Profile"),
      BS5Button(["btn-outline-secondary"], "Settings"))`, ``),


demoBs5Example("links", "Links",  
  H5Div(
    BS5ButtonGroup(["aria-label":"Default button group"], 
      BS5ButtonLink(["btn-secondary"], ["href":"#"], "Home"), 
      BS5ButtonLink(["btn-secondary"], ["href":"#"], "Profile"),
      BS5ButtonLink(["btn-secondary"], ["href":"#"], "Settings"))), 
      `BS5ButtonGroup(["aria-label":"Default button group"], 
      BS5ButtonLink(["btn-secondary"], ["href":"#"], "Home"), 
      BS5ButtonLink(["btn-secondary"], ["href":"#"], "Profile"),
      BS5ButtonLink(["btn-secondary"], ["href":"#"], "Settings"))`, ``),

demoBs5Example("toolbar", "Toolbar",  
  H5Div(
    BS5ButtonToolbar(["aria-label":"Toolbar button group"], 
      BS5ButtonGroup(["aria-label":"First group"], 
        BS5Button(["btn-secondary"], "1"), 
        BS5Button(["btn-secondary"], "2"),
        BS5Button(["btn-secondary"], "3")),
      BS5ButtonGroup(["aria-label":"Second group"], 
        BS5Button(["btn-secondary"], "4"), 
        BS5Button(["btn-secondary"], "5"),
        BS5Button(["btn-secondary"], "6")),
      BS5ButtonGroup(["aria-label":"Third group"], 
        BS5Button(["btn-secondary"], "7"), 
        BS5Button(["btn-secondary"], "8"),
        BS5Button(["btn-secondary"], "9")))), 
        `BS5ButtonToolbar(["aria-label":"Toolbar button group"], 
      BS5ButtonGroup(["aria-label":"First group"], 
        BS5Button(["btn-secondary"], "1"), 
        BS5Button(["btn-secondary"], "2"),
        BS5Button(["btn-secondary"], "3")),
      BS5ButtonGroup(["aria-label":"Second group"], 
        BS5Button(["btn-secondary"], "4"), 
        BS5Button(["btn-secondary"], "5"),
        BS5Button(["btn-secondary"], "6")),
      BS5ButtonGroup(["aria-label":"Third group"], 
        BS5Button(["btn-secondary"], "7"), 
        BS5Button(["btn-secondary"], "8"),
        BS5Button(["btn-secondary"], "9")))`, ``),

demoBs5Example("sizing", "Sizing",  
  H5Div(
    BS5ButtonGroup(["btn-group-sm"], ["aria-label":"Small button group"], 
      BS5Button(["btn-secondary"], "Home"), 
      BS5Button(["btn-secondary"], "Profile"),
      BS5Button(["btn-secondary"], "Settings")),
    BS5ButtonGroup(["aria-label":"Default button group"], 
      BS5Button(["btn-secondary"], "Home"), 
      BS5Button(["btn-secondary"], "Profile"),
      BS5Button(["btn-secondary"], "Settings")),
    BS5ButtonGroup(["btn-group-lg"], ["aria-label":"Large button group"], 
      BS5Button(["btn-secondary"], "Home"), 
      BS5Button(["btn-secondary"], "Profile"),
      BS5Button(["btn-secondary"], "Settings"))
      ), 
      `BS5ButtonGroup(["btn-group-sm"], ["aria-label":"Small button group"], 
      BS5Button(["btn-secondary"], "Home"), 
      BS5Button(["btn-secondary"], "Profile"),
      BS5Button(["btn-secondary"], "Settings")),
    BS5ButtonGroup(["aria-label":"Default button group"], 
      BS5Button(["btn-secondary"], "Home"), 
      BS5Button(["btn-secondary"], "Profile"),
      BS5Button(["btn-secondary"], "Settings")),
    BS5ButtonGroup(["btn-group-lg"], ["aria-label":"Large button group"], 
      BS5Button(["btn-secondary"], "Home"), 
      BS5Button(["btn-secondary"], "Profile"),
      BS5Button(["btn-secondary"], "Settings"))`, ``),

demoBs5Example("nesting", "Nesting",  
  H5Div(
    BS5ButtonGroup(["aria-label":"Button group with nested dropdown"], 
      BS5Button(["btn-secondary"], "Home"), 
      BS5Button(["btn-secondary"], "Profile"),
      BS5ButtonGroup( 
        BS5Button("btnGroupNesting", ["btn-secondary", "dropdown-toggle"], ["data-bs-toggle":"dropdown", "aria-expanded":"false"], "Settings"),
        H5Div(["dropdown-menu"], ["aria-labelledby":"btnGroupNesting"], 
          H5A(["dropdown-item"], ["href":"#"], "Dropdown link"),
          H5A(["dropdown-item"], ["href":"#"], "Dropdown link"))))
  ), 
  `BS5ButtonGroup(["aria-label":"Button group with nested dropdown"], 
      BS5Button(["btn-secondary"], "Home"), 
      BS5Button(["btn-secondary"], "Profile"),
      BS5ButtonGroup( 
        BS5Button("btnGroupNesting", ["btn-secondary", "dropdown-toggle"], ["data-bs-toggle":"dropdown", "aria-expanded":"false"], "Settings"),
        H5Div(["dropdown-menu"], ["aria-labelledby":"btnGroupNesting"], 
          H5A(["dropdown-item"], ["href":"#"], "Dropdown link"),
          H5A(["dropdown-item"], ["href":"#"], "Dropdown link"))))`, ``),

demoBs5Example("vertical", "Vertical",  
  H5Div(
    H5Div(["btn-group-vertical"], ["role":"group", "aria-label":"Vertical button group"],
      BS5Button(["btn-secondary"], "Home"), 
      BS5Button(["btn-secondary"], "Profile"),
      BS5Button(["btn-secondary"], "Settings"))
      ), 
      `H5Div(["btn-group-vertical"], ["role":"group", "aria-label":"Vertical button group"],
      BS5Button(["btn-secondary"], "Home"), 
      BS5Button(["btn-secondary"], "Profile"),
      BS5Button(["btn-secondary"], "Settings"))`, ``)
    )
  )
).toString;

    }
  });
}