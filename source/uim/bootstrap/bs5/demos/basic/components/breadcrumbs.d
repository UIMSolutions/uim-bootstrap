module uim.bootstrap.bs5.demos.components.breadcrumbs;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/components/breadcrumbs", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Breadcrumbs - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/basic", "/demos/uim-bootstrap/5/basic/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Basic", "Components"], "Breadcrumbs")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "components"),
      listSections("basic", "components", "breadcrumbs")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Breadcrumbs"),
      H5Hr,

demoBs5Example("default", "Default", 
BS5Breadcrumb.list(  
  BS5BreadcrumbItem.link(["href":"#"], "Start"),
  BS5BreadcrumbItem.link(["href":"#"], "Engineering"),
  BS5BreadcrumbItem.link(["href":"#"], "Robots"),
  BS5BreadcrumbItem(["active"], ["aria-current":"page"], "R2D2")), 
`BS5Breadcrumb(
  BS5BreadcrumbList(  
    BS5BreadcrumbItem(
      H5A(["href":"#"], "Start")),
    BS5BreadcrumbItem(
      H5A(["href":"#"], "Engineering")),
    BS5BreadcrumbItem(
      H5A(["href":"#"], "Robots")),
    BS5BreadcrumbItem(["active"], ["aria-current":"page"], "R2D2")))

</code></pre><p>Weitere (kompaktere) Möglichkeit")<pre><code>

BS5Breadcrumb.list(  
  BS5BreadcrumbItem.link(["href":"#"], "Start"),
  BS5BreadcrumbItem.link(["href":"#"], "Engineering"),
  BS5BreadcrumbItem.link(["href":"#"], "Robots"),
  BS5BreadcrumbItem(["active"], ["aria-current":"page"], "R2D2"))
`,
`<nav "aria-label":"Breadcrumb"]
  H5Ol(["breadcrumb"]
    H5Li(["breadcrumb-item"]H5A(["href":"#", >Start</a>")
    H5Li(["breadcrumb-item"]H5A(["href":"#", >Engineering</a>")
    H5Li(["breadcrumb-item"]H5A(["href":"#", >Robots</a>")
    H5Li(["breadcrumb-item active" aria-current="page"]R2D2")
  )
</nav>`
)
    )
  )
).toString;
    }
  });
}