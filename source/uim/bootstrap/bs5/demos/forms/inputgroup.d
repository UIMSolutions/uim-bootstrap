module source.uim.bootstrap.bs5.demos.forms.inputgroup;

import uim.bootstrap;

static this() {
	demoBS5.pages("forms/inputgroup", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Input Group - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
       return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/forms"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Forms"], "Input Group")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Input Group"),
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
        <h2 class="component display-4">Input Group</h2>
        <hr>

        <div class="mb-5">
          <h3 class="text-muted">Default</h3>
          <div>
            <figure class="figure">
              <img src="../img/600x400.png" class="figure-img img-fluid" alt="Figure image">
              <figcaption class="figure-caption">Caption for the figure.</figcaption>
            </figure>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Alignment</h3>
          <div>
            <h4 class="h5 text-muted mt-3">Center</h4>
            <figure class="figure">
              <img src="../img/600x400.png" class="figure-img img-fluid" alt="Figure image">
              <figcaption class="figure-caption text-center">Caption for the figure.</figcaption>
            </figure>
            <h4 class="h5 text-muted mt-3">Right</h4>
            <figure class="figure">
              <img src="../img/600x400.png" class="figure-img img-fluid" alt="Figure image">
              <figcaption class="figure-caption text-end">Caption for the figure.</figcaption>
            </figure>
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