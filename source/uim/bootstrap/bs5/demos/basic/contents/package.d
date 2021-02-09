module source.uim.bootstrap.bs5.demos.contents;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/contents", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Contents - Bootstrap 5 Demo",
          ]);
		} 
			
        override string content() { 
            return 
  H5Main(["style":"margin-top:70px;"], 
    H5Div(["container-fluid", "mt-3", "bg-light"],
      bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/"], 
      ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic"], "Contents")),
    BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic")),
      H5Div(["col-12", "col-lg-8"], 
        dateInfo(this),
      H5H2(["display-4"], "Bootstrap 5 Demo <small>Using Contents</small>"),
        H5Hr,

        H5Div(["mb-5"],
          H5H3(["text-muted"], "Areas"), 
          H5Ul(["list-group"],
            H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components"], "Components")),
            H5Li(["list-group-item active"], "Contents"),
            H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/forms"], "Forms")),
            H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers"], "Helpers")),
            H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/layouts"], "Layouts")),
            H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities"], "Utilities"))
          )
        ),

        H5Div(["mb-5"],
          H5H3(["text-muted"], "Sections"), 
          H5Ul(["list-group"],
            H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents/figures"], "Figures")),
            H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents/images"], "Images")),
            H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents/tables"], "Tables")),
            H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents/typography"], "Typography"))
          )
        )
      ),
      H5Div(["col-12", "col-lg-2"])
    )).toString;
    }
  });
}  