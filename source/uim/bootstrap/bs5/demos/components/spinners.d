module uim.bootstrap.bs5.demos.components.spinners;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/spinners", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Spinners - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
      <div class="container-fluid mt-3 bg-light">
        <nav aria-label="Breadcrumb" >
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
            <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/components">Components</a></li>
            <li class="breadcrumb-item active" aria-current="page">Spinners</li>
          </ol>
        </nav>
      </div>
      <div class="container mt-3">
        <div class="row">
          <div class="col-12 col-lg-2">
          </div>
          <div class="col-12 col-lg-8">
            <h2 class="component display-4">Spinners</h2>
            <hr>

            <div class="mb-5">
              <h3 class="text-muted">Border spinner</h3>
              <div>
                <div class="spinner-border" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Growing spinner</h3>
              <div>
                <div class="spinner-grow" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Colors</h3>
              <div>
                <div class="spinner-border text-primary" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-border text-secondary" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-border text-success" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-border text-danger" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-border text-warning" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-border text-info" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-border text-light" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-border text-dark" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <br><br>
                <div class="spinner-grow text-primary" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-grow text-secondary" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-grow text-success" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-grow text-danger" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-grow text-warning" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-grow text-info" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-grow text-light" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-grow text-dark" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Sizing</h3>
              <div>
                <div class="spinner-border spinner-border-sm" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-border" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-border" role="status" style="width: 3rem; height: 3rem;">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <br><br>
                <div class="spinner-grow spinner-grow-sm" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-grow" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <div class="spinner-grow" role="status" style="width: 3rem; height: 3rem;">
                  <span class="visually-hidden">Loading...</span>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">In buttons</h3>
              <div>
                <button type="button" class="btn btn-primary" disabled>
                  <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                  <span class="visually-hidden">Loading...</span>
                </button>
                <button type="button" class="btn btn-primary" disabled>
                  <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                  Loading...
                </button>
                <br><br>
                <button type="button" class="btn btn-primary" disabled>
                  <span class="spinner-grow spinner-grow-sm" role="status" aria-hidden="true"></span>
                  <span class="visually-hidden">Loading...</span>
                </button>
                <button type="button" class="btn btn-primary" disabled>
                  <span class="spinner-grow spinner-grow-sm" role="status" aria-hidden="true"></span>
                  Loading...
                </button>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Alignment</h3>
              <p>Use <a href="spacing.html">spacing</a>, <a href="flex.html">flex</a>, <a href="float.html">float</a> and <a href="text.html">text</a> utilities to align and place your spinner as needed.</p>
              <div>
                <h4 class="h5 text-muted mt-3">Margin</h4>
                <div class="spinner-border m-3" role="status">
                  <span class="visually-hidden">Loading...</span>
                </div>
                <h4 class="h5 text-muted mt-3">Flex</h4>
                <div class="d-flex justify-content-center">
                  <div class="spinner-border" role="status">
                    <span class="visually-hidden">Loading...</span>
                  </div>
                </div>
                <div class="d-flex align-items-center">
                  <strong>Loading...</strong>
                  <div class="spinner-border ms-auto" role="status" aria-hidden="true"></div>
                </div>
                <h4 class="h5 text-muted mt-3">Float</h4>
                <div class="clearfix">
                  <div class="spinner-border float-end" role="status">
                    <span class="visually-hidden">Loading...</span>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">Text align</h4>
                <div class="text-center">
                  <div class="spinner-border" role="status">
                    <span class="visually-hidden">Loading...</span>
                  </div>
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