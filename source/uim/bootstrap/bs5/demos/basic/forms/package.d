module source.uim.bootstrap.bs5.demos.forms;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/forms", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Forms - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content(string[string] someParameters = null) {  
            return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic"], "Forms")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "forms")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Bootstrap 5 Demo <small>Using Forms</small>"),
      H5Hr,

      listSections("basic", "forms")
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}         