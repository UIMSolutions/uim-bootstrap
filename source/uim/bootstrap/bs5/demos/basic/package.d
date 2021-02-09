module uim.bootstrap.bs5.demos.basic;

import uim.bootstrap; 

static this() {
	demoBS5.pages("basic", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
            return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5"], "Basic")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"],
      listLevels("basic")
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Bootstrap 5 Demo - Basic"),
      H5Hr,

      listAreas("basic")

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}          
