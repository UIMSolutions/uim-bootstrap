module source.uim.bootstrap.bs5.demos.utilities.visibility;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/visibility", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Visibility - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
                  return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Utilities"], "Visibility")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Visibility"),
      H5Hr,
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   /*
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Visibility</h2>
        <hr>

        <div class="mb-5">
              <div>
                <div class="card p-3 mb-3 visible" style="visibility: hidden;">Visible card</div>
                <div class="card p-3 invisible">Invisible card</div>
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