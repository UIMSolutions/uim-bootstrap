module source.uim.bootstrap.bs5.demos.helpers.visuallyhidden;

import uim.bootstrap;

static this() {
	demoBS5.pages("helpers/visuallyhidden", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Visually Hidden - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/helpers">Helpers</a></li>
        <li class="breadcrumb-item active" aria-current="page">Visually Hidden</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Visually Hidden</h2>
        <hr>

        <div class="mb-5">
          <h3 class="text-muted">Default</h3>
          <div>
            <h4 class="visually-hidden">Title for screen readers</h4>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Focusable</h3>
          <div>
            <a href="#main" class="visually-hidden-focusable">Skip to main content</a>
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