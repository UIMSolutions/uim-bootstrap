module uim.bootstrap.bs5.demos.components.buttons;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/buttons", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Buttons - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto defaultExample = demoBs5Example("default", "Default", 
  H5Div(
    BS5Button(["btn-primary"], "Primary"), 
    BS5Button(["btn-secondary"], "Secondary"),
    BS5Button(["btn-success"], "Success"),
    BS5Button(["btn-danger"], "Danger"),
    BS5Button(["btn-warning"], "Warning"),
    BS5Button(["btn-info"], "Info"),
    BS5Button(["btn-light"], "Light"),
    BS5Button(["btn-dark"], "Dark")
  ), ``, ``);

auto linksExample = demoBs5Example("links", "Links", 
  H5Div(
    BS5Button(["btn-link"], "Link")
  ), ``, ``);
    
auto classesExample = demoBs5Example("classes", `Button class<p>Default button styles applied to <code>&lt;a&gt;</code> and <code>&lt;input&gt;</code> elements")`, 
  H5Div(
    BS5ButtonLink(["btn-primary"], ["href":"#", "role":"button"], "Link"), 
    H5Input(["btn", "btn-success"], ["type":"button", "value":"Input"]),
    H5Input(["btn", "btn-danger"], ["type":"submit", "value":"Submit"]),
    H5Input(["btn", "btn-warning"], ["type":"reset", "value":"Reset"])
    ), ``, ``);

auto outlinesExample = demoBs5Example("outlines", "Outline styles", 
  H5Div(
    BS5Button(["btn-outline-primary"], "Primary"), 
    BS5Button(["btn-outline-secondary"], "Secondary"), 
    BS5Button(["btn-outline-success"], "Success"), 
    BS5Button(["btn-outline-danger"], "Danger"), 
    BS5Button(["btn-outline-warning"], "Warning"), 
    BS5Button(["btn-outline-info"], "Info"), 
    BS5Button(["btn-outline-light"], "Light"), 
    BS5Button(["btn-outline-dark"], "Dark")), 
    ``, ``);

auto sizingExample = demoBs5Example("sizing", "Unterschiedliche Größen", 
  H5Div(
    BS5Button(["btn-secondary", "btn-sm"], "Small"), 
    BS5Button(["btn-secondary"], "Default"), 
    BS5Button(["btn-secondary", "btn-lg"], "Large")
    ), ``, ``);

auto blockExample = demoBs5Example("block", "Block", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Full width using sizing utility"), 
    BS5Button(["btn-secondary", "w-100"], "Block button"), 
    H5H4(["h5", "text-muted", "mt-3"], "Full width using display utility"),
    H5Div(["d-grid"], 
      BS5Button(["btn-secondary"], "Block button")),
    H5H4(["h5", "text-muted", "mt-3"], "Column width"), 
    H5Div(["d-grid", "col-6", "mx-auto"], 
      BS5Button(["btn-secondary"], "Block button")),
    H5H4(["h5", "text-muted", "mt-3"], "Multiple block buttons"), 
    H5Div(["d-grid", "gap-2"], 
      BS5Button(["btn-secondary"], "Block button"),
      BS5Button(["btn-secondary"], "Block button")),
    H5H4(["h5", "text-muted", "mt-3"], "Responsive"), 
    H5Div(["d-grid", "gap-2", "d-lg-block"], 
      BS5Button(["btn-secondary"], "Block button"),
      BS5Button(["btn-secondary"], "Block button"))
  ), ``, ``); 

auto blockExample2 = demoBs5Example("block", "Block", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Active"), 
    BS5Button(["btn-primary"], "Not active"),
    BS5Button(["btn-primary", "active"], "Active"),
    H5H4(["h5", "text-muted", "mt-3"], "Disabled"),
    BS5Button(["btn-primary"], ["disabled":"disabled"], "Disabled button"),
    H5A(["btn", "btn-secondary", "disabled"], ["href":"#", "tabindex":"-1", "role":"button", "aria-disabled":"true"], "Disabled link")
  ), ``, ``);

auto pluginExample = demoBs5Example("plugin", "Button Plugin", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Toggle buttons"),
    BS5Button(["btn-primary"], ["data-bs-toggle":"button", "autocomplete":"off"], "Not active"),
    BS5Button(["btn-primary", "active"], ["data-bs-toggle":"button", "autocomplete":"off", "aria-pressed":"true"], "Active"),
    BS5Button(["btn-primary"], ["data-bs-toggle":"button", "autocomplete":"off","disabled":"disabled"], "Disabled"),
    H5H4(["h5", "text-muted", "mt-3"], "Toggle links"),
    H5A(["btn", "btn-primary"], ["href":"#", "role":"button", "data-bs-toggle":"button"], "Not active"),
    H5A(["btn", "btn-primary", "active"], ["href":"#", "role":"button", "data-bs-toggle":"button", "aria-pressed":"true"], "Active"),
    H5A(["btn", "btn-primary", "disabled"], ["href":"#", "role":"button", "data-bs-toggle":"button"], "Disabled")
    ), 
    `BS5Button(["btn-primary"], ["data-bs-toggle":"button", "autocomplete":"off"], "Not active"),
    BS5Button(["btn-primary", "active"], ["data-bs-toggle":"button", "autocomplete":"off", "aria-pressed":"true"], "Active"),
    BS5Button(["btn-primary"], ["data-bs-toggle":"button", "autocomplete":"off","disabled":"disabled"], "Disabled"),
    H5A(["btn", "btn-primary"], ["href":"#", "role":"button", "data-bs-toggle":"button"], "Not active"),
    H5A(["btn", "btn-primary", "active"], ["href":"#", "role":"button", "data-bs-toggle":"button", "aria-pressed":"true"], "Active"),
    H5A(["btn", "btn-primary", "disabled"], ["href":"#", "role":"button", "data-bs-toggle":"button"], "Disabled")`, ``);

      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic", "/demos/uim-bootstrap/5/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Components"], "Buttons")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Buttons"),
      H5Hr,

      defaultExample, 
      linksExample, 
      classesExample, 
      outlinesExample, 
      sizingExample, 
      blockExample,
      blockExample2,
      pluginExample

    ))).toString;

    }
  });
}