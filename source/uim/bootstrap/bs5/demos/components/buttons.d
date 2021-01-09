module uim.bootstrap.bs5.demos.components.buttons;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/buttons", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Buttons - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
      <div class="container-fluid mt-3 bg-light">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
            <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/components">Components</a></li>
            <li class="breadcrumb-item active" aria-current="page">Buttons</li>
          </ol>
        </nav>
      </div>
      <div class="container mt-3">
        <div class="row">
          <div class="col-12 col-lg-2">
          </div>
          <div class="col-12 col-lg-8">
            <h2 class="component display-4">Buttons</h2>
            <hr>

            <div class="mb-5">
              <h3 class="text-muted">Default</h3>
              <div>
                <button type="button" class="btn btn-primary">Primary</button>
                <button type="button" class="btn btn-secondary">Secondary</button>
                <button type="button" class="btn btn-success">Success</button>
                <button type="button" class="btn btn-danger">Danger</button>
                <button type="button" class="btn btn-warning">Warning</button>
                <button type="button" class="btn btn-info">Info</button>
                <button type="button" class="btn btn-light">Light</button>
                <button type="button" class="btn btn-dark">Dark</button>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Link style</h3>
              <div>
                <button type="button" class="btn btn-link">Link</button>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Button class</h3>
              <p>Default button styles applied to <code>&lt;a&gt;</code> and <code>&lt;input&gt;</code> elements</p>
              <div>
                <a href="#" class="btn btn-primary" role="button">Link</a>
                <input type="button" class="btn btn-success" value="Input">
                <input type="submit" class="btn btn-danger" value="Submit">
                <input type="reset" class="btn btn-warning" value="Reset">
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Outline style</h3>
              <div>
                <button type="button" class="btn btn-outline-primary">Primary</button>
                <button type="button" class="btn btn-outline-secondary">Secondary</button>
                <button type="button" class="btn btn-outline-success">Success</button>
                <button type="button" class="btn btn-outline-danger">Danger</button>
                <button type="button" class="btn btn-outline-warning">Warning</button>
                <button type="button" class="btn btn-outline-info">Info</button>
                <button type="button" class="btn btn-outline-light">Light</button>
                <button type="button" class="btn btn-outline-dark">Dark</button>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Sizing</h3>
              <div>
                <button type="button" class="btn btn-secondary btn-sm">Small</button>
                <button type="button" class="btn btn-secondary">Default</button>
                <button type="button" class="btn btn-secondary btn-lg">Large</button>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Block</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Full width using sizing utility</h4>
                <button type="button" class="btn btn-secondary w-100">Block button</button>
                <h4 class="h5 text-muted mt-3">Full width using display utility</h4>
                <div class="d-grid">
                  <button type="button" class="btn btn-secondary">Block button</button>
                </div>
                <h4 class="h5 text-muted mt-3">Column width</h4>
                <div class="d-grid col-6 mx-auto">
                  <button type="button" class="btn btn-secondary">Block button</button>
                </div>
                <h4 class="h5 text-muted mt-3">Multiple block buttons</h4>
                <div class="d-grid gap-2">
                  <button type="button" class="btn btn-secondary">Block button</button>
                  <button type="button" class="btn btn-secondary">Block button</button>
                </div>
                <h4 class="h5 text-muted mt-3">Responsive</h4>
                <div class="d-grid gap-2 d-lg-block">
                  <button type="button" class="btn btn-secondary">Block button</button>
                  <button type="button" class="btn btn-secondary">Block button</button>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">States</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Active</h4>
                <button type="button" class="btn btn-primary">Not active</button>
                <button type="button" class="btn btn-primary active">Active</button>
                <h4 class="h5 text-muted mt-3">Disabled</h4>
                <button type="button" class="btn btn-primary" disabled>Disabled button</button>
                <a href="#" class="btn btn-secondary disabled" tabindex="-1" role="button" aria-disabled="true">Disabled link</a>
              </div>
            </div>
            
            <div class="mb-5">
              <h3 class="text-muted">Button plugin</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Toggle buttons</h4>
                <button type="button" class="btn btn-primary" data-bs-toggle="button" autocomplete="off">Not active</button>
                <button type="button" class="btn btn-primary active" data-bs-toggle="button" autocomplete="off" aria-pressed="true">Active</button>
                <button type="button" class="btn btn-primary" data-bs-toggle="button" autocomplete="off" disabled>Disabled</button>
                <h4 class="h5 text-muted mt-3">Toggle links</h4>
                <a href="#" class="btn btn-primary" role="button" data-bs-toggle="button">Not active</a>
                <a href="#" class="btn btn-primary active" role="button" data-bs-toggle="button" aria-pressed="true">Active</a>
                <a href="#" class="btn btn-primary disabled" role="button" data-bs-toggle="button">Disabled</a>
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