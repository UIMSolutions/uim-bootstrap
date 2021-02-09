module source.uim.bootstrap.bs5.demos.utilities;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/utilities", new class DH5AppPage {
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
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic"], "Utilities")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Bootstrap 5 Demo <small>Using Utilities</small>"),
      H5Hr,

      H5Div(["mb-5"],
        H5H3(["text-muted"], "Areas"), 
        H5Ul(["list-group"],
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components"], "Components")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents"], "Contents")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/forms"], "Forms")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers"], "Helpers")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/layouts"], "Layouts")),
          H5Li(["list-group-item active"], "Utilities")
        )
      ),

      H5Div(["mb-5"],
        H5H3(["text-muted"], "Sections"), 
        H5Ul(["list-group"],
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/borders"], "Borders")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/colors"], "Colors")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/display"], "Display")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/flex"], "Flex")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/float"], "Float")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/interactions"], "Interactions")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/overflow"], "Overflow")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/positionutilities"], "Position Utilities")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/shadows"], "Shadows")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/sizing"], "Sizing")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/text"], "Text")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/verticalalign"], "Vertical Align")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/visibility"], "Visibility")),
        )
      )
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}  