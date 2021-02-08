module uim.bootstrap.bs5.demos.components;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/components", new class DH5AppPage {
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
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic"], "Components")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Bootstrap 5 Demo <small>Using Components</small>"),
      H5Hr,

      H5Div(["mb-5"],
        H5H3(["text-muted"], "Areas"), 
        H5Ul(["list-group"],
          H5Li(["list-group-item active"], "Components"),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents"], "Contents")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/forms"], "Forms")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers"], "Helpers")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/layouts"], "Layouts")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities"], "Utilities"))
        )
      ),

      H5Div(["mb-5"],
        H5H3(["text-muted"], "Sections"), 
        H5Ul(["list-group"],
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/accordions"], "Accordions")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/alerts"], "Alerts")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/badges"], "Badges")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/breadcrumbs"], "Breadcrumbs")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/buttongroups"], "Button Groups")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/buttons"], "Buttons")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/cards"], "Cards")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/carousels"], "Carousels")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/closebuttons"], "Close Buttons")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/collapses"], "Collapses")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/dropdowns"], "Dropdowns")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/listgroups"], "List Groups")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/modals"], "Modals")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/navbars"], "Navbars")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/navs"], "Navs")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/paginations"], "Paginations")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/popovers"], "Popovers")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/progresses"], "Progresses")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/scrollspies"], "Scrollspies")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/spinners"], "Spinners")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/toasts"], "Toasts")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/tooltips"], "Tooltips"))
        )
      )
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}  