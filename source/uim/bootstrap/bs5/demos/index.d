module uim.bootstrap.bs5.demos.index;

import uim.bootstrap;

static this() {
	demoBS5.index(new class DH5AppPage {
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
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap"], "Bootstrap 5")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Bootstrap 5 Demo"),
      H5Hr,

      H5Div(["mb-5"],
        H5H3(["text-muted"], "Levels"), 
        BS5List
        .item(H5A(["href":"/demos/uim-bootstrap/5/basic"], "Basic"))
        .item(H5A(["href":"/demos/uim-bootstrap/5/complex"], "Complex"))
        .item(H5A(["href":"/demos/uim-bootstrap/5/examples"], "Example Pages"))
      )

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}          



