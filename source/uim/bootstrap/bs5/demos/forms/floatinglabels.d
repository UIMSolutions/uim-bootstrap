module source.uim.bootstrap.bs5.demos.forms.floatinglabels;

import uim.bootstrap;

static this() {
	demoBS5.pages("forms/floatinglabels", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Floating Labels - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item active" aria-current="page">Floating Labels</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Floating Labels</h2>
        <hr>

        <div class="mb-5">
          <h3 class="text-muted">Default</h3>
          <div>
            <div class="form-floating">
              <input type="text" class="form-control" placeholder="Text input placeholder" id="floatingLabelDefault">
              <label for="floatingLabelDefault" class="form-label">Text input label</label>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">With value</h3>
          <div>
            <div class="form-floating">
              <input type="text" class="form-control" placeholder="Text input placeholder" id="floatingLabelValue" value="Text input value">
              <label for="floatingLabelValue" class="form-label">Text input label</label>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Validation</h3>
          <div>
            <div class="form-floating">
              <input type="text" class="form-control is-valid" placeholder="Text input placeholder" id="floatingLabelValidation" value="Text input value">
              <label for="floatingLabelValidation" class="form-label">Text input label</label>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Textarea</h3>
          <div>
            <h4 class="h5 text-muted mt-3">Default</h4>
            <div class="form-floating">
              <textarea class="form-control" placeholder="Textarea placeholder" id="floatingLabelTextareaDefault"></textarea>
              <label for="floatingLabelTextareaDefault" class="form-label">Textarea label</label>
            </div>
            <h4 class="h5 text-muted mt-3">Custom height</h4>
            <div class="form-floating">
              <textarea class="form-control" placeholder="Textarea placeholder" id="floatingLabelTextareaHeight" style="height: 100px;"></textarea>
              <label for="floatingLabelTextareaHeight" class="form-label">Textarea label</label>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Select</h3>
          <div>
            <div class="form-floating">
              <select class="form-select" aria-label="Select" id="floatingLabelSelect">
                <option selected>Select option</option>
                <option value="1">Option one</option>
                <option value="2">Option two</option>
                <option value="3">Option three</option>
                <option value="4">Option four</option>
                <option value="5">Option five</option>
              </select>
              <label for="floatingLabelSelect" class="form-label">Select label</label>
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