module source.uim.bootstrap.bs5.demos.forms.validation;

import uim.bootstrap;

static this() {
	demoBS5.pages("forms/validation", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Validation - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
        return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/forms"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Forms"], "Validation")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Validation"),
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
        <h2 class="component display-4">Validation</h2>
        <hr>

        <div class="mb-5">
          <h3 class="text-muted">Browser defaults</h3>
          <div>
            <form id="formValidationDefault">
              <div class="mb-3">
                <label for="validationDefaultText">Text input</label>
                <input type="text" class="form-control" id="validationDefaultText" required>
              </div>
              <div class="mb-3">
                <div class="input-group">
                  <span class="input-group-text" id="validationDefaultInputGroup">$</span>
                  <input type="number" class="form-control" aria-label="Amount" aria-describedby="validationDefaultInputGroup" required>
                </div>
              </div>
              <div class="mb-3">
                <label for="validationDefaultTextarea">Textarea</label>
                <textarea class="form-control" id="validationDefaultTextarea" rows="5" placeholder="Write your message here." required></textarea>
              </div>
              <div class="mb-3">
                <label for="validationDefaultSelect">Select one</label>
                <select class="form-select" id="validationDefaultSelect" required>
                  <option value="">Select</option>
                  <option value="1">Option one</option>
                  <option value="2">Option two</option>
                  <option value="3">Option three</option>
                </select>
              </div>
              <div class="mb-3">
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="validationDefaultCheck" required>
                  <label class="form-check-label" for="validationDefaultCheck">Checkbox</label>
                </div>
              </div>
              <div class="mb-3">
                <div class="form-check">
                  <input type="radio" class="form-check-input" name="validationDefaultRadio" id="validationDefaultRadio1" required>
                  <label class="form-check-label" for="validationDefaultRadio1">Radio</label>
                </div>
                <div class="form-check">
                  <input type="radio" class="form-check-input" name="validationDefaultRadio" id="validationDefaultRadio2" required>
                  <label class="form-check-label" for="validationDefaultRadio2">Radio</label>
                </div>
              </div>
              <div class="mb-3">
                <div class="form-check form-switch">
                  <input type="checkbox" class="form-check-input" id="validationDefaultSwitch" required>
                  <label class="form-check-label" for="validationDefaultSwitch">Switch</label>
                </div>
              </div>
              <div class="mb-3">
                <div class="form-file">
                  <input type="file" class="form-file-input" id="validationDefaultFile" required>
                  <label class="form-file-label" for="validationDefaultFile">
                    <span class="form-file-text">Choose file...</span>
                    <span class="form-file-button">Browse</span>
                  </label>
                </div>
              </div>
              <button type="submit" class="btn btn-primary">Submit form</button>
            </form>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Client side</h3>
          <div>
            <form id="formValidationClient" class="needs-validation" novalidate>
              <div class="mb-3">
                <label for="validationClientText">Text input</label>
                <input type="text" class="form-control" id="validationClientText" required>
                <p class="valid-feedback">Valid feedback text</p>
                <p class="invalid-feedback">Invalid feedback text</p>
              </div>
              <div class="mb-3">
                <div class="input-group">
                  <span class="input-group-text" id="validationClientInputGroup">$</span>
                  <input type="number" class="form-control" aria-label="Amount" aria-describedby="validationClientInputGroup" required>
                  <p class="valid-feedback">Valid feedback text</p>
                  <p class="invalid-feedback">Invalid feedback text</p>
                </div>
              </div>
              <div class="mb-3">
                <label for="validationClientTextarea">Textarea</label>
                <textarea class="form-control" id="validationClientTextarea" rows="5" placeholder="Write your message here." required></textarea>
                <p class="valid-feedback">Valid feedback text</p>
                <p class="invalid-feedback">Invalid feedback text</p>
              </div>
              <div class="mb-3">
                <label for="validationClientSelect">Select one</label>
                <select class="form-select" id="validationClientSelect" required>
                  <option value="">Select</option>
                  <option value="1">Option one</option>
                  <option value="2">Option two</option>
                  <option value="3">Option three</option>
                </select>
                <p class="valid-feedback">Valid feedback text</p>
                <p class="invalid-feedback">Invalid feedback text</p>
              </div>
              <div class="mb-3">
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="validationClientCheck" required>
                  <label class="form-check-label" for="validationClientCheck">Checkbox</label>
                  <p class="valid-feedback">Valid feedback text</p>
                  <p class="invalid-feedback">Invalid feedback text</p>
                </div>
              </div>
              <div class="mb-3">
                <div class="form-check">
                  <input type="radio" class="form-check-input" name="validationClientRadio" id="validationClientRadio1" required>
                  <label class="form-check-label" for="validationClientRadio1">Radio</label>
                </div>
                <div class="form-check">
                  <input type="radio" class="form-check-input" name="validationClientRadio" id="validationClientRadio2" required>
                  <label class="form-check-label" for="validationClientRadio2">Radio</label>
                  <p class="valid-feedback">Valid feedback text</p>
                  <p class="invalid-feedback">Invalid feedback text</p>
                </div>
              </div>
              <div class="mb-3">
                <div class="form-check form-switch">
                  <input type="checkbox" class="form-check-input" id="validationClientSwitch" required>
                  <label class="form-check-label" for="validationClientSwitch">Switch</label>
                  <p class="valid-feedback">Valid feedback text</p>
                  <p class="invalid-feedback">Invalid feedback text</p>
                </div>
              </div>
              <div class="mb-3">
                <div class="form-file">
                  <input type="file" class="form-file-input" id="validationClientFile" required>
                  <label class="form-file-label" for="validationClientFile">
                    <span class="form-file-text">Choose file...</span>
                    <span class="form-file-button">Browse</span>
                  </label>
                  <p class="valid-feedback">Valid feedback text</p>
                  <p class="invalid-feedback">Invalid feedback text</p>
                </div>
              </div>
              <button type="submit" class="btn btn-primary">Submit form</button>
            </form>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Server side</h3>
          <div>
            <form id="formValidationServer">
              <div class="mb-3">
                <label for="validationServerText">Text input</label>
                <input type="text" class="form-control is-valid" id="validationServerText">
                <p class="valid-feedback">Valid feedback text</p>
                <p class="invalid-feedback">Invalid feedback text</p>
              </div>
              <div class="mb-3">
                <div class="input-group">
                  <span class="input-group-text" id="validationServerInputGroup">$</span>
                  <input type="number" class="form-control is-invalid" aria-label="Amount" aria-describedby="validationServerInputGroup">
                  <p class="valid-feedback">Valid feedback text</p>
                  <p class="invalid-feedback">Invalid feedback text</p>
                </div>
              </div>
              <div class="mb-3">
                <label for="validationServerTextarea">Textarea</label>
                <textarea class="form-control is-valid" id="validationServerTextarea" rows="5" placeholder="Write your message here."></textarea>
                <p class="valid-feedback">Valid feedback text</p>
                <p class="invalid-feedback">Invalid feedback text</p>
              </div>
              <div class="mb-3">
                <label for="validationServerSelect">Select one</label>
                <select class="form-select is-invalid" id="validationServerSelect">
                  <option value="">Select</option>
                  <option value="1">Option one</option>
                  <option value="2">Option two</option>
                  <option value="3">Option three</option>
                </select>
                <p class="valid-feedback">Valid feedback text</p>
                <p class="invalid-feedback">Invalid feedback text</p>
              </div>
              <div class="mb-3">
                <div class="form-check">
                  <input type="checkbox" class="form-check-input is-valid" id="validationServerCheck">
                  <label class="form-check-label" for="validationServerCheck">Checkbox</label>
                  <p class="valid-feedback">Valid feedback text</p>
                  <p class="invalid-feedback">Invalid feedback text</p>
                </div>
              </div>
              <div class="mb-3">
                <div class="form-check">
                  <input type="radio" class="form-check-input is-invalid" name="validationServerRadio" id="validationServerRadio1">
                  <label class="form-check-label" for="validationServerRadio1">Radio</label>
                </div>
                <div class="form-check">
                  <input type="radio" class="form-check-input is-invalid" name="validationServerRadio" id="validationServerRadio2">
                  <label class="form-check-label" for="validationServerRadio2">Radio</label>
                  <p class="valid-feedback">Valid feedback text</p>
                  <p class="invalid-feedback">Invalid feedback text</p>
                </div>
              </div>
              <div class="mb-3">
                <div class="form-check form-switch">
                  <input type="checkbox" class="form-check-input is-valid" id="validationServerSwitch">
                  <label class="form-check-label" for="validationServerSwitch">Switch</label>
                  <p class="valid-feedback">Valid feedback text</p>
                  <p class="invalid-feedback">Invalid feedback text</p>
                </div>
              </div>
              <div class="mb-3">
                <div class="form-file">
                  <input type="file" class="form-file-input is-invalid" id="validationServerFile">
                  <label class="form-file-label" for="validationServerFile">
                    <span class="form-file-text">Choose file...</span>
                    <span class="form-file-button">Browse</span>
                  </label>
                  <p class="valid-feedback">Valid feedback text</p>
                  <p class="invalid-feedback">Invalid feedback text</p>
                </div>
              </div>
              <button type="submit" class="btn btn-primary">Submit form</button>
            </form>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Tooltips</h3>
          <div>
            <form id="formValidationTooltips" class="needs-validation" novalidate>
              <div class="mb-3 position-relative">
                <label for="validationTooltipsText">Text input</label>
                <input type="text" class="form-control" id="validationTooltipsText" required>
                <p class="valid-tooltip">Valid feedback text</p>
                <p class="invalid-tooltip">Invalid feedback text</p>
              </div>
              <div class="mb-3 position-relative">
                <div class="input-group">
                  <span class="input-group-text" id="validationTooltipsInputGroup">$</span>
                  <input type="number" class="form-control" aria-label="Amount" aria-describedby="validationTooltipsInputGroup" required>
                  <p class="valid-tooltip">Valid feedback text</p>
                  <p class="invalid-tooltip">Invalid feedback text</p>
                </div>
              </div>
              <div class="mb-3 position-relative">
                <label for="validationTooltipsTextarea">Textarea</label>
                <textarea class="form-control" id="validationTooltipsTextarea" rows="5" placeholder="Write your message here." required></textarea>
                <p class="valid-tooltip">Valid feedback text</p>
                <p class="invalid-tooltip">Invalid feedback text</p>
              </div>
              <div class="mb-3 position-relative">
                <label for="validationTooltipsSelect">Select one</label>
                <select class="form-select" id="validationTooltipsSelect" required>
                  <option value="">Select</option>
                  <option value="1">Option one</option>
                  <option value="2">Option two</option>
                  <option value="3">Option three</option>
                </select>
                <p class="valid-tooltip">Valid feedback text</p>
                <p class="invalid-tooltip">Invalid feedback text</p>
              </div>
              <div class="mb-3 position-relative">
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="validationTooltipsCheck" required>
                  <label class="form-check-label" for="validationTooltipsCheck">Checkbox</label>
                  <p class="valid-tooltip">Valid feedback text</p>
                  <p class="invalid-tooltip">Invalid feedback text</p>
                </div>
              </div>
              <div class="mb-3 position-relative">
                <div class="form-check">
                  <input type="radio" class="form-check-input" name="validationTooltipsRadio" id="validationTooltipsRadio1" required>
                  <label class="form-check-label" for="validationTooltipsRadio1">Radio</label>
                </div>
                <div class="form-check">
                  <input type="radio" class="form-check-input" name="validationTooltipsRadio" id="validationTooltipsRadio2" required>
                  <label class="form-check-label" for="validationTooltipsRadio2">Radio</label>
                  <p class="valid-tooltip">Valid feedback text</p>
                  <p class="invalid-tooltip">Invalid feedback text</p>
                </div>
              </div>
              <div class="mb-3 position-relative">
                <div class="form-check form-switch">
                  <input type="checkbox" class="form-check-input" id="validationTooltipsSwitch" required>
                  <label class="form-check-label" for="validationTooltipsSwitch">Switch</label>
                  <p class="valid-tooltip">Valid feedback text</p>
                  <p class="invalid-tooltip">Invalid feedback text</p>
                </div>
              </div>
              <div class="mb-3 position-relative">
                <div class="form-file">
                  <input type="file" class="form-file-input" id="validationTooltipsFile" required>
                  <label class="form-file-label" for="validationTooltipsFile">
                    <span class="form-file-text">Choose file...</span>
                    <span class="form-file-button">Browse</span>
                  </label>
                  <p class="valid-tooltip">Valid feedback text</p>
                  <p class="invalid-tooltip">Invalid feedback text</p>
                </div>
              </div>
              <button type="submit" class="btn btn-primary">Submit form</button>
            </form>
          </div>
        </div>
      </div>
*/