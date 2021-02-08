module source.uim.bootstrap.bs5.demos.helpers;

import uim.bootstrap;

static this() {
	demoBS5.pages("helpers", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Helpers - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
            return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5"], "Helpers")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Bootstrap 5 Demo <small>Using Helpers</small>"),
      H5Hr,

      H5Div(["mb-5"],
        H5H3(["text-muted"], "Areas"), 
        H5Ul(["list-group"],
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components"], "Components")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/contents"], "Contents")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/forms"], "Forms")),
          H5Li(["list-group-item active"], "Helpers"),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/layouts"], "Layouts")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities"], "Utilities"))
        )
      ),

      H5Div(["mb-5"],
        H5H3(["text-muted"], "Sections"), 
        H5Ul(["list-group"],
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/helpers/clearfix"], "Clearfix")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/helpers/coloredlinks"], "Colored Links")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/helpers/positionhelpers"], "Position Helpers")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/helpers/ratio"], "Ratio")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/helpers/stretchedlink"], "Stretched Link")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/helpers/texttruncation"], "Text Truncation")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/helpers/visuallyhidden"], "Visually Hidden")),
        )
      )
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}         