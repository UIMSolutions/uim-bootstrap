module source.uim.bootstrap.bs5.demos.examples;


import uim.bootstrap; 

static this() {
	demoBS5.pages("5/examples", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Examples - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5"], "Examples")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Examples - Bootstrap 5 Demo"),
      H5Hr,

      listLevels("examples"),
      listAreas("examples")

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}          
