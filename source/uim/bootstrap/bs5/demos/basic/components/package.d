module uim.bootstrap.bs5.demos.components;

import uim.bootstrap;

static this() {
	demoBS5.pages("components", new class DH5AppPage {
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
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5"], "Components")),
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
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/contents"], "Contents")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/forms"], "Forms")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/helpers"], "Helpers")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/layouts"], "Layouts")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/utilities"], "Utilities"))
        )
      ),

      H5Div(["mb-5"],
        H5H3(["text-muted"], "Sections"), 
        H5Ul(["list-group"],
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/accordions"], "Accordions")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/alerts"], "Alerts")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/badges"], "Badges")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/breadcrumbs"], "Breadcrumbs")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/buttongroups"], "Button Groups")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/buttons"], "Buttons")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/cards"], "Cards")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/carousels"], "Carousels")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/closebuttons"], "Close Buttons")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/collapses"], "Collapses")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/dropdowns"], "Dropdowns")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/listgroups"], "List Groups")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/modals"], "Modals")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/navbars"], "Navbars")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/navs"], "Navs")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/paginations"], "Paginations")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/popovers"], "Popovers")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/progresses"], "Progresses")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/scrollspies"], "Scrollspies")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/spinners"], "Spinners")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/toasts"], "Toasts")),
          H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/components/tooltips"], "Tooltips"))
        )
      )
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}  