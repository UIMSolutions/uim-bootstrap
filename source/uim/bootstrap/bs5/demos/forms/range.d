module source.uim.bootstrap.bs5.demos.forms.range;

import uim.bootstrap;

static this() {
	demoBS5.pages("forms/range", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Range - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/contents">Contents</a></li>
        <li class="breadcrumb-item active" aria-current="page">Range</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Range</h2>
        <hr>

          <div class="mb-5">
              <h3 class="text-muted">Default</h3>
              <div>
                <label for="inputRange" class="form-label">Range input label</label>
                <input type="range" class="form-range" id="inputRange">
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Min and max</h3>
              <div>
                <label for="inputRangeMinMax" class="form-label">Range input label</label>
                <input type="range" class="form-range" id="inputRangeMinMax" min="0" max="10">
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Steps</h3>
              <div>
                <label for="inputRangeSteps" class="form-label">Range input label</label>
                <input type="range" class="form-range" id="inputRangeSteps" min="0" max="10" step="0.5">
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