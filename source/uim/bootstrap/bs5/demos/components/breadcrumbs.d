module uim.bootstrap.bs5.demos.components.breadcrumbs;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/breadcrumbs", new class DH5AppPage {
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
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Components"], "Breadcrumbs")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
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

</code></pre><p>Weitere (kompaktere) Möglichkeit</p><pre><code>

BS5Breadcrumb.list(  
  BS5BreadcrumbItem.link(["href":"#"], "Start"),
  BS5BreadcrumbItem.link(["href":"#"], "Engineering"),
  BS5BreadcrumbItem.link(["href":"#"], "Robots"),
  BS5BreadcrumbItem(["active"], ["aria-current":"page"], "R2D2"))
`,
`<nav aria-label="Breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item">H5A(["href":"#", >Start</a></li>
    <li class="breadcrumb-item">H5A(["href":"#", >Engineering</a></li>
    <li class="breadcrumb-item">H5A(["href":"#", >Robots</a></li>
    <li class="breadcrumb-item active" aria-current="page">R2D2</li>
  </ol>
</nav>`
)
    )
  )
).toString;
    }
  });
}