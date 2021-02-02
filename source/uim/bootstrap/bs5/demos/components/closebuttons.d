module uim.bootstrap.bs5.demos.components.closebuttons;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/closebuttons", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Close Buttons - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto defaultExample = demoBs5Example("default", "Default", 
  H5Div(
    BS5Alert(["alert-success"], 
      H5Button(["btn-close"], ["type":"button", "aria-label":"Close"]))
  ), 
`BS5Alert(["alert-success"], 
  H5Button(["btn-close"], ["type":"button", "aria-label":"Close"]))`, 
`<div ["alert alert-success" role="alert"]
  <button type="button" ["btn-close" aria-label="Close"]</button>
)`);

auto disabledExample = demoBs5Example("disabled", "Disabled", 
  H5Div(
    BS5Alert(["alert-success"], 
      H5Button(["btn-close"], ["type":"button", "aria-label":"Close", "disabled":"disabled"]))
      ), 
`BS5Alert(["alert-success"], 
  H5Button(["btn-close"], ["type":"button", "aria-label":"Close", "disabled":"disabled"]))`, 
            `<div ["alert alert-success" role="alert"]
  <button type="button" ["btn-close" aria-label="Close" disabled=""]</button>
)`);

auto darkExample = demoBs5Example("dark", "Disabled", 
  H5Div(
    BS5Alert(["bg-dark"], 
      H5Button(["btn-close", "btn-close-white"], ["type":"button", "aria-label":"Close", "disabled":"disabled"]), 
      H5Button(["btn-close", "btn-close-white"], ["type":"button", "aria-label":"Close", "disabled":"disabled"]))
      ), 
      `BS5Alert(["bg-dark"], 
  H5Button(["btn-close", "btn-close-white"], ["type":"button", "aria-label":"Close", "disabled":"disabled"]), 
  H5Button(["btn-close", "btn-close-white"], ["type":"button", "aria-label":"Close", "disabled":"disabled"]))`, 
      `<div ["alert bg-dark" role="alert"]
  <button type="button" ["btn-close btn-close-white" aria-label="Close"]</button>
  <button type="button" ["btn-close btn-close-white" aria-label="Close" disabled=""]</button>
)`);

      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Components"], "Close Buttons")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Close Buttons"),
      H5Hr,

      defaultExample,
      disabledExample,
      darkExample

    ))).toString;
    }
  });
}