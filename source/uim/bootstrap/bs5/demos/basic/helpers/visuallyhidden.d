module source.uim.bootstrap.bs5.demos.helpers.visuallyhidden;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/helpers/visuallyhidden", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Visually Hidden - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/basic", "/demos/uim-bootstrap/5/basic/basic/helpers"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Basic", "Helpers"], "Visually Hidden")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "helpers"),
      listSections("basic", "helpers", "visuallyhidden")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Visually Hidden"),
      H5Hr,

      demoBs5Example("default", "Default",
        H5Div(
          H5H4(["visually-hidden"], "Title for screen readers")
        ), ``, ``),

      demoBs5Example("focusable", "Focusable",
        H5Div(
          H5A(["visually-hidden-focusable"], ["href":"#main"], "Skip to main content")
        ), ``, ``)

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 
      