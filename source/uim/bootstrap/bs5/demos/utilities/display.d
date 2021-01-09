module source.uim.bootstrap.bs5.demos.utilities.display;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/display", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Display - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item active" aria-current="page">Display</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Display</h2>
        <hr>

        <div class="mb-5">
          <h3 class="text-muted">None</h3>
          <div>
            <div class="d-none">Display none</div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Inline and block</h3>
          <div>
            <div class="d-inline bg-secondary text-white p-2">Display inline</div>
            <div class="d-inline bg-secondary text-white p-2">Display inline</div>
            <br><br>
            <span class="d-block bg-secondary text-white p-2">Display block</span>
            <br>
            <div class="d-inline-block bg-secondary text-white p-2">
              <h4>Inline-block</h4>
              Display inline-block
            </div>
            <div class="d-inline-block bg-secondary text-white p-2">
              <h4>Inline-block</h4>
              Display inline-block
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Grid</h3>
          <div>
            <div class="d-grid">Display grid</div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Table</h3>
          <div>
            <div class="d-table">Display table</div>
            <div class="d-table-row">Display table-row</div>
            <div class="d-table-cell">Display table-cell</div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Flex</h3>
          <div>
            <div class="d-flex">Display flex</div>
            <div class="d-inline-flex">Display inline-flex</div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Responsive display none</h3>
          <div>
            <p>Example: Responsive variations of display none</p>
            <div class="d-sm-none">Display none for breakpoints sm and up</div>
            <div class="d-md-none">Display none for breakpoints md and up</div>
            <div class="d-lg-none">Display none for breakpoints lg and up</div>
            <div class="d-xl-none">Display none for breakpoints xl and up</div>
            <div class="d-xxl-none">Display none for breakpoints xxl and up</div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Print</h3>
          <div>
            <div class="d-print-none">Display none for print</div>
            <div class="d-print-inline">Display inline for print</div>
            <div class="d-print-block">Display block for print</div>
            <div class="d-print-inline-block">Display inline-block for print</div>
            <div class="d-print-grid">Display grid for print</div>
            <div class="d-print-table">Display table for print</div>
            <div class="d-print-table-row">Display table-row for print</div>
            <div class="d-print-table-cell">Display table-cell for print</div>
            <div class="d-print-flex">Display flex for print</div>
            <div class="d-print-inline-flex">Display inline-flex for print</div>
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