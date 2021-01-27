module source.uim.bootstrap.bs5.demos.helpers.texttruncation;

import uim.bootstrap;

static this() {
	demoBS5.pages("helpers/texttruncation", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Text Truncation - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
     return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/helpers"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Helpers"], "Text Truncation")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Text Truncation"),
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
        <h2 class="component display-4">Text Truncation</h2>
        <hr>

        <div class="mb-5">
          <div>
            <h4 class="h5 text-muted mt-3">Block</h4>
            <p class="text-truncate">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui.</p>
            <h4 class="h5 text-muted mt-3">Inline-block</h4>
            <span class="text-truncate d-inline-block w-100">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui.</span>
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