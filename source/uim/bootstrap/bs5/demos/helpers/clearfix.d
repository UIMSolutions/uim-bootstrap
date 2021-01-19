module uim.bootstrap.bs5.demos.helpers.clearfix;

import uim.bootstrap;

static this() {
	demoBS5.pages("helpers/clearfix", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Clearfix - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/helpers"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Helpers"], "Clearfix")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Clearfix"),
      H5Hr,

      demoBs5Example("clearfix", "Using Clearfix",
        H5Div(
          H5Div(["bg-light", "clearfix"], 
            BS5Button(["btn-primary", "float-start"], "Button floated left"),
            BS5Button(["btn-primary", "float-end"], "Button floated right"))), ``, ``)

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 
