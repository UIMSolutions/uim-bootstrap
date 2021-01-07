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
        <hr>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Default</h3>
          <div class="code-live">
            <nav aria-label="Breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Sports</a></li>
                <li class="breadcrumb-item"><a href="#">Ball games</a></li>
                <li class="breadcrumb-item active" aria-current="page">Baseball</li>
              </ol>
            </nav>
          </div>
        </div>

      </div>
    </div>
  </div>
</main>
      `;
    }
  });
}