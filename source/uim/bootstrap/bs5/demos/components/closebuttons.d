module uim.bootstrap.bs5.demos.components.closebuttons;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/closebuttons", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Close Buttons - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item active" aria-current="page">Close Buttons</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Close Buttons</h2>
        <hr>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Default</h3>
          <div class="code-live">
            <div class="alert alert-success" role="alert">
              <button type="button" class="btn-close" aria-label="Close"></button>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Disabled</h3>
          <div class="code-live">
            <div class="alert alert-success" role="alert">
              <button type="button" class="btn-close" aria-label="Close" disabled></button>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">White</h3>
          <div class="code-live">
            <div class="alert bg-dark" role="alert">
              <button type="button" class="btn-close btn-close-white" aria-label="Close"></button>
              <button type="button" class="btn-close btn-close-white" aria-label="Close" disabled></button>
            </div>
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