module source.uim.bootstrap.bs5.demos.utilities;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Utilities - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
            return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5"], "Utilities")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Bootstrap 5 Demo <small>Using Utilities</small>"),
      H5Hr,

      H5Div(["mb-5"],
        H5H3(["text-muted"], "Areas"), 
        H5Ul(["list-group"],
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components"], "Components")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/contents"], "Contents")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/forms"], "Forms")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/helpers"], "Helpers")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/layouts"], "Layouts")),
          H5Li(["list-group-item active"], "Utilities")
        )
      ),

      H5Div(["mb-5"],
        H5H3(["text-muted"], "Sections"), 
        H5Ul(["list-group"],
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities/borders"], "Borders")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities/colors"], "Colors")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities/display"], "Display")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities/flex"], "Flex")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities/float"], "Float")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities/interactions"], "Interactions")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities/overflow"], "Overflow")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities/positionutilities"], "Position Utilities")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities/shadows"], "Shadows")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities/sizing"], "Sizing")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities/text"], "Text")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities/verticalalign"], "Vertical Align")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities/visibility"], "Visibility")),
        )
      )
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}  