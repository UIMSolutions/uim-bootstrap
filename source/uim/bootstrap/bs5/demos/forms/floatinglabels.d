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
       return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/forms"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Forms"], "Floating Labels")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Floating Labels"),
      H5Hr,

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 
/*
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
 */