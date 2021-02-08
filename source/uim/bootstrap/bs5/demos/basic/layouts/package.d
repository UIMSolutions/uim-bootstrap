module source.uim.bootstrap.bs5.demos.layouts;

import uim.bootstrap;

static this() {
	demoBS5.pages("layouts", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Layouts - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
            return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5"], "Layouts")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Bootstrap 5 Demo <small>Using Layouts</small>"),
      H5Hr,

      H5Div(["mb-5"],
        H5H3(["text-muted"], "Areas"), 
        H5Ul(["list-group"],
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components"], "Components")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/contents"], "Contents")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/forms"], "Forms")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/helpers"], "Helpers")),
          H5Li(["list-group-item active"], "Layouts"),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities"], "Utilities"))
        )
      ),

      H5Div(["mb-5"],
        H5H3(["text-muted"], "Sections"), 
        H5Ul(["list-group"],
          H5Li(["list-group-item"], H5A(["/demos/uim-bootstrap/5/layouts/columns"], "Columns")),
          H5Li(["list-group-item"], H5A(["/demos/uim-bootstrap/5/layouts/container"], "Container")),
          H5Li(["list-group-item"], H5A(["/demos/uim-bootstrap/5/layouts/grid"], "Grid")),
          H5Li(["list-group-item"], H5A(["/demos/uim-bootstrap/5/layouts/gutters"], "Gutters")),
        )
      )
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}         