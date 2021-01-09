module uim.bootstrap.bs5.demos.components.progresses;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/progresses", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Progresses - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item active" aria-current="page">Progresses</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Progresses</h2>
        <hr>

        <div class="mb-5">
          <h3 class="text-muted">No progress</h3>
          <div>
            <div class="progress">
              <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Width using inline styles</h3>
          <div>
            <div class="progress">
              <div class="progress-bar" role="progressbar" style="width: 17%" aria-valuenow="17" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <br>
            <div class="progress">
              <div class="progress-bar" role="progressbar" style="width: 33%" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <br>
            <div class="progress">
              <div class="progress-bar" role="progressbar" style="width: 62%" aria-valuenow="62" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <br>
            <div class="progress">
              <div class="progress-bar" role="progressbar" style="width: 86%" aria-valuenow="86" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Width using sizing classes</h3>
          <div>
            <div class="progress">
              <div class="progress-bar w-25" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <br>
            <div class="progress">
              <div class="progress-bar w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <br>
            <div class="progress">
              <div class="progress-bar w-75" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <br>
            <div class="progress">
              <div class="progress-bar w-100" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Label</h3>
          <div>
            <div class="progress">
              <div class="progress-bar w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">50%</div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Height using inline styles</h3>
          <div>
            <div class="progress" style="height: 0.5rem;">
              <div class="progress-bar w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <br>
            <div class="progress" style="height: 2rem;">
              <div class="progress-bar w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Background colors</h3>
          <div>
            <div class="progress">
              <div class="progress-bar bg-primary w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <br>
            <div class="progress">
              <div class="progress-bar bg-secondary w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <br>
            <div class="progress">
              <div class="progress-bar bg-success w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <br>
            <div class="progress">
              <div class="progress-bar bg-danger w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <br>
            <div class="progress">
              <div class="progress-bar bg-warning w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <br>
            <div class="progress">
              <div class="progress-bar bg-info w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <br>
            <div class="progress">
              <div class="progress-bar bg-light text-dark w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <br>
            <div class="progress">
              <div class="progress-bar bg-dark w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Stripes</h3>
          <div>
            <div class="progress">
              <div class="progress-bar progress-bar-striped w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Animated stripes</h3>
          <div>
            <div class="progress">
              <div class="progress-bar progress-bar-striped progress-bar-animated w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Multiple progress bars</h3>
          <div>
            <div class="progress">
              <div class="progress-bar bg-info w-25" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
              <div class="progress-bar bg-warning w-25" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
              <div class="progress-bar bg-danger w-25" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
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