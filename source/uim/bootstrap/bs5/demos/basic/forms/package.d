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
			
    override string content() { 
            return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic"], "Forms")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Bootstrap 5 Demo <small>Using Forms</small>"),
      H5Hr,

      H5Div(["mb-5"],
        H5H3(["text-muted"], "Areas"), 
        H5Ul(["list-group"],
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components"], "Components")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents"], "Contents")),
          H5Li(["list-group-item active"], "Forms"),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers"], "Helpers")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/layouts"], "Layouts")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities"], "Utilities"))
        )
      ),
      
      H5Div(["mb-5"],
        H5H3(["text-muted"], "Sections"), 
        H5Ul(["list-group"],
          H5Li(["list-group-item"], H5A(["/demos/uim-bootstrap/5/basic/forms/checks_radios"], "Checks und Radios")),
          H5Li(["list-group-item"], H5A(["/demos/uim-bootstrap/5/basic/forms/floatinglabels"], "Floating Labels")),
          H5Li(["list-group-item"], H5A(["/demos/uim-bootstrap/5/basic/forms/formcontrol"], "Form Control")),
          H5Li(["list-group-item"], H5A(["/demos/uim-bootstrap/5/basic/forms/inputgroup"], "Input Group")),
          H5Li(["list-group-item"], H5A(["/demos/uim-bootstrap/5/basic/forms/layout"], "Layout")),
          H5Li(["list-group-item"], H5A(["/demos/uim-bootstrap/5/basic/forms/overview"], "Overview")),
          H5Li(["list-group-item"], H5A(["/demos/uim-bootstrap/5/basic/forms/range"], "Range")),
          H5Li(["list-group-item"], H5A(["/demos/uim-bootstrap/5/basic/forms/select"], "Select"))
        )
      )
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}         