module source.uim.bootstrap.bs5.demos.utilities.positionutilities;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/positionutilities", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Position Utilities - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Utilities"], "Position Utilities")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Position Utilities"),
      H5Hr,
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
/*  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Position Utilities</h2>
        <hr>

        <div class="mb-5">
              <h3 class="text-muted">Position values</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Static</h4>
                <div class="position-static">Position static</div>
                <h4 class="h5 text-muted mt-3">Relative</h4>
                <div class="position-relative">Position relative</div>
                <h4 class="h5 text-muted mt-3">Absolute</h4>
                <div class="position-absolute">Position absolute</div>
                <h4 class="h5 text-muted mt-3">Fixed</h4>
                <div class="position-fixed">Position fixed</div>
                <h4 class="h5 text-muted mt-3">Sticky</h4>
                <div class="position-sticky">Position sticky</div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Arrange elements</h3>
              <div>
                <div class="position-relative border m-5 w-50" style="height: 300px;">
                  <div class="p-2 text-white bg-dark position-absolute top-0 left-0">Top left</div>
                  <div class="p-2 text-white bg-dark position-absolute top-0 right-0">Top right</div>
                  <div class="p-2 text-white bg-dark position-absolute top-50 left-50">Center (top left)</div>
                  <div class="p-2 text-white bg-dark position-absolute bottom-50 right-50">Center (bottom right)</div>
                  <div class="p-2 text-white bg-dark position-absolute bottom-0 left-0">Bottom left</div>
                  <div class="p-2 text-white bg-dark position-absolute bottom-0 right-0">Bottom right</div>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Center elements</h3>
              <div>
                <div class="position-relative border m-5 w-50" style="height: 300px;">
                  <div class="p-2 text-white bg-dark position-absolute top-0 left-0 translate-middle">Top left</div>
                  <div class="p-2 text-white bg-dark position-absolute top-0 left-50 translate-middle">Top center</div>
                  <div class="p-2 text-white bg-dark position-absolute top-0 left-100 translate-middle">Top right</div>
                  <div class="p-2 text-white bg-dark position-absolute top-50 left-0 translate-middle">Middle left</div>
                  <div class="p-2 text-white bg-dark position-absolute top-50 left-50 translate-middle">Middle center</div>
                  <div class="p-2 text-white bg-dark position-absolute top-50 left-100 translate-middle">Middle right</div>
                  <div class="p-2 text-white bg-dark position-absolute top-100 left-0 translate-middle">Bottom left</div>
                  <div class="p-2 text-white bg-dark position-absolute top-100 left-50 translate-middle">Bottom center</div>
                  <div class="p-2 text-white bg-dark position-absolute top-100 left-100 translate-middle">Bottom right</div>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Examples</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Notification number</h4>
                <button type="button" class="btn btn-primary position-relative">
                  Messages <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-secondary">3 <span class="visually-hidden">unread messages</span></span>
                </button>
                <h4 class="h5 text-muted mt-3">Notification circle</h4>
                <button type="button" class="btn btn-primary position-relative">
                  Messages <span class="position-absolute top-0 left-100 translate-middle badge border border-light rounded-circle bg-danger p-2"><span class="visually-hidden">unread messages</span></span>
                </button>
                <h4 class="h5 text-muted mt-3">Progress with steps</h4>
                <div class="position-relative m-4">
                  <div class="progress" style="height: 1px;">
                    <div class="progress-bar" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="position-absolute top-0 left-0 translate-middle badge bg-primary rounded-pill d-flex justify-content-center align-items-center" style="width: 2rem; height: 2rem;">1</div>
                  <div class="position-absolute top-0 left-50 translate-middle badge bg-primary rounded-pill d-flex justify-content-center align-items-center" style="width: 2rem; height: 2rem;">2</div>
                  <div class="position-absolute top-0 left-100 translate-middle badge bg-secondary rounded-pill d-flex justify-content-center align-items-center" style="width: 2rem; height: 2rem;">3</div>
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
}*/