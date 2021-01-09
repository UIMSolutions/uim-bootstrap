module source.uim.bootstrap.bs5.demos.utilities;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Utilities - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/">Bootstrap 5</a></li>
        <li class="breadcrumb-item active" aria-current="page">Utilities</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Bootstrap 5 Demo</h2>
        <hr>

        <div class="mb-5">
          <h3 class="text-muted">Themenbereiche</h3>
          <ul class="list-group">
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/components">Components</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/contents">Contents</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/forms">Forms</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/helpers">Helpers</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/layouts">Layouts</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/utilities">Utilities</a></li>
          </ul>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Forms</h3>
          <ul class="list-group">
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/utilities/borders">Borders</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/utilities/colors">Colors</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/utilities/display">Display</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/utilities/flex">Flex</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/utilities/float">Float</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/utilities/interactions">Interactions</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/utilities/overflow">Overflow</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/utilities/positionutilities">Position Utilities</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/utilities/shadows">Shadows</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/utilities/sizing">Sizing</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/utilities/text">Text</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/utilities/verticalalign">Vertical Align</a></li>
            <li class="list-group-item"><a href="/demos/uim-bootstrap/5/utilities/visibility">Visibility</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</main>

      `;
    }
  });
}