module source.uim.bootstrap.bs5.demos.utilities.float_;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/float", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Float - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/utilities">Utilities</a></li>
        <li class="breadcrumb-item active" aria-current="page">Float</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Float</h2>
        <hr>

        <div class="mb-5">
              <h3 class="text-muted">Default</h3>
              <div>
                <div class="float-start">Float left</div><br>
                <div class="float-end">Float right</div><br>
                <div class="float-none">Don't float</div><br>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Responsive</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Float left</h4>
                <div class="float-sm-start">Float left for breakpoints sm and up</div><br>
                <div class="float-md-start">Float left for breakpoints md and up</div><br>
                <div class="float-lg-start">Float left for breakpoints lg and up</div><br>
                <div class="float-xl-start">Float left for breakpoints xl and up</div><br>
                <div class="float-xxl-start">Float left for breakpoints xxl and up</div><br>
                <h4 class="h5 text-muted mt-3">Float right</h4>
                <div class="float-sm-end">Float right for breakpoints sm and up</div><br>
                <div class="float-md-end">Float right for breakpoints md and up</div><br>
                <div class="float-lg-end">Float right for breakpoints lg and up</div><br>
                <div class="float-xl-end">Float right for breakpoints xl and up</div><br>
                <div class="float-xxl-end">Float right for breakpoints xxl and up</div><br>
                <h4 class="h5 text-muted mt-3">Float none</h4>
                <div class="float-sm-none">Don't float for breakpoints sm and up</div><br>
                <div class="float-md-none">Don't float for breakpoints md and up</div><br>
                <div class="float-lg-none">Don't float for breakpoints lg and up</div><br>
                <div class="float-xl-none">Don't float for breakpoints xl and up</div><br>
                <div class="float-xxl-none">Don't float for breakpoints xxl and up</div><br>
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