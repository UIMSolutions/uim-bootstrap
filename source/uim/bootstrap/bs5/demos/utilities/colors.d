module source.uim.bootstrap.bs5.demos.utilities.colors;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/colors", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Colors - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Utilities"], "colors")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Colors"),
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
        <h2 class="component display-4">Colors</h2>
        <hr>

        <div class="mb-5">
          <h3 class="text-muted">Color</h3>
          <div>
            <p class="text-primary">Text primary color.</p>
            <p class="text-secondary">Text secondary color.</p>
            <p class="text-success">Text success color.</p>
            <p class="text-danger">Text danger color.</p>
            <p class="text-warning">Text warning color.</p>
            <p class="text-info">Text info color.</p>
            <p class="text-light bg-dark">Text light color with background dark color.</p>
            <p class="text-dark">Text dark color.</p>
            <p class="text-body">Text body color.</p>
            <p class="text-muted">Text muted color.</p>
            <p class="text-white bg-dark">Text white color with background dark color.</p>
            <p class="text-white-50 bg-dark">Text white-50 color with background dark color.</p>
            <p class="text-black-50">Text black-50 color.</p>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Background color</h3>
          <div>
            <p class="bg-primary text-white p-3">Background primary color with text white color.</p>
            <p class="bg-secondary text-white p-3">Background secondary color with text white color.</p>
            <p class="bg-success text-white p-3">Background success color with text white color.</p>
            <p class="bg-danger text-white p-3">Background danger color with text white color.</p>
            <p class="bg-warning text-white p-3">Background warning color with text white color.</p>
            <p class="bg-info text-white p-3">Background info color with text white color.</p>
            <p class="bg-light text-dark p-3">Background light color with text dark color.</p>
            <p class="bg-dark text-white p-3">Background dark color with text white color.</p>
            <p class="bg-white text-dark p-3">Background white color with text dark color.</p>
            <p class="bg-transparent text-dark p-3">Background transparent with text dark color.</p>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Background gradient</h3>
          <div>
            <p class="bg-primary bg-gradient text-white p-3">Background primary color with text white color.</p>
            <p class="bg-secondary bg-gradient text-white p-3">Background secondary color with text white color.</p>
            <p class="bg-success bg-gradient text-white p-3">Background success color with text white color.</p>
            <p class="bg-danger bg-gradient text-white p-3">Background danger color with text white color.</p>
            <p class="bg-warning bg-gradient text-white p-3">Background warning color with text white color.</p>
            <p class="bg-info bg-gradient text-white p-3">Background info color with text white color.</p>
            <p class="bg-light bg-gradient text-dark p-3">Background light color with text dark color.</p>
            <p class="bg-dark bg-gradient text-white p-3">Background dark color with text white color.</p>
          </div>
        </div>

      </div>
    </div>
  </div>
</main>
      `;
    }
  });
} */