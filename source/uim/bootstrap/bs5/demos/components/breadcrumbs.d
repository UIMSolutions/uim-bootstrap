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
      return `
<main>
  <div class="container-fluid mt-3 bg-light m-1">
    <nav aria-label="Breadcrumb" >
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
        <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/components">Components</a></li>
        <li class="breadcrumb-item active" aria-current="page">Breadcrumbs</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Breadcrumbs</h2>
        <hr>`~

demoExample("default", "Default", 
BS5Breadcrumb.list(  
  BS5BreadcrumbItem.link(["href":"#"], "Start"),
  BS5BreadcrumbItem.link(["href":"#"], "Engineering"),
  BS5BreadcrumbItem.link(["href":"#"], "Robots"),
  BS5BreadcrumbItem(["active"], ["aria-current":"page"], "R2D2")).toString, 
`BS5Breadcrumb(
  BS5BreadcrumbList(  
    BS5BreadcrumbItem(
      H5A(["href":"#"], "Start")),
    BS5BreadcrumbItem(
      H5A(["href":"#"], "Engineering")),
    BS5BreadcrumbItem(
      H5A(["href":"#"], "Robots")),
    BS5BreadcrumbItem(["active"], ["aria-current":"page"], "R2D2")))

- Weitere (kompaktere) Möglichkeit -

BS5Breadcrumb.list(  
  BS5BreadcrumbItem.link(["href":"#"], "Start"),
  BS5BreadcrumbItem.link(["href":"#"], "Engineering"),
  BS5BreadcrumbItem.link(["href":"#"], "Robots"),
  BS5BreadcrumbItem(["active"], ["aria-current":"page"], "R2D2"))
`,
`<nav aria-label="Breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Start</a></li>
    <li class="breadcrumb-item"><a href="#">Engineering</a></li>
    <li class="breadcrumb-item"><a href="#">Robots</a></li>
    <li class="breadcrumb-item active" aria-current="page">R2D2</li>
  </ol>
</nav>`
)~ 

      `</div>
    </div>
  </div>
</main>
      `;
    }
  });
}