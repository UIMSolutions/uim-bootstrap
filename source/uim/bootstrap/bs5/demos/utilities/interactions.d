module source.uim.bootstrap.bs5.demos.utilities.interactions;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/interactions", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Interactions - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Utilities"], "Interactions")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Interactions"),
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
        <h2 class="component display-4">Interactions</h2>
        <hr>

        <div class="mb-5">
              <h3 class="text-muted">Text selection</h3>
              <div>
                <h4 class="h5 text-muted mt-3">All</h4>
                <p class="user-select-all">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                <h4 class="h5 text-muted mt-3">Auto</h4>
                <p class="user-select-auto" style="user-select: none;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                <h4 class="h5 text-muted mt-3">None</h4>
                <p class="user-select-none">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Pointer events</h3>
              <div>
                <h4 class="h5 text-muted mt-3">None</h4>
                <p><a href="#" class="pe-none">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a>. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                <h4 class="h5 text-muted mt-3">Auto</h4>
                <p><a href="#" class="pe-auto" style="pointer-events: none;">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a>. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                <h4 class="h5 text-muted mt-3">None for parent, auto for second child</h4>
                <p class="pe-none"><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a>. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. <a href="#" class="pe-auto">Etiam eleifend velit leo</a>.</p>
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