module source.uim.bootstrap.bs5.demos.utilities.text;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/text", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Text - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
            return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Utilities"], "Text")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Text"),
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
        <h2 class="component display-4">Text</h2>
        <hr>

       <div class="mb-5">
              <h3 class="text-muted">Alignment</h3>
              <div>
                <h4 class="h5 text-muted mt-3">All breakpoints</h4>
                <p class="text-start">Left-aligned text.</p>
                <p class="text-center">Center-aligned text.</p>
                <p class="text-end">Right-aligned text.</p>
                <h4 class="h5 text-muted mt-3">Responsive</h4>
                <p class="text-sm-end">Right-aligned text for breakpoint sm and up.</p>
                <p class="text-md-end">Right-aligned text for breakpoint md and up.</p>
                <p class="text-lg-end">Right-aligned text for breakpoint lg and up.</p>
                <p class="text-xl-end">Right-aligned text for breakpoint xl and up.</p>
                <p class="text-xxl-end">Right-aligned text for breakpoint xxl and up.</p>
                <p class="text-sm-center">Center-aligned text for breakpoint sm and up.</p>
                <p class="text-md-center">Center-aligned text for breakpoint md and up.</p>
                <p class="text-lg-center">Center-aligned text for breakpoint lg and up.</p>
                <p class="text-xl-center">Center-aligned text for breakpoint xl and up.</p>
                <p class="text-xxl-center">Center-aligned text for breakpoint xxl and up.</p>
                <p class="text-end text-sm-start">Right-aligned text as default. Left-aligned text for breakpoint sm and up.</p>
                <p class="text-end text-md-start">Right-aligned text as default. Left-aligned text for breakpoint md and up.</p>
                <p class="text-end text-lg-start">Right-aligned text as default. Left-aligned text for breakpoint lg and up.</p>
                <p class="text-end text-xl-start">Right-aligned text as default. Left-aligned text for breakpoint xl and up.</p>
                <p class="text-end text-xxl-start">Right-aligned text as default. Left-aligned text for breakpoint xxl and up.</p>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Wrapping</h3>
              <div>
                <div class="badge bg-secondary text-wrap" style="width: 10rem;">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
                <p class="text-nowrap">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui. Nam ultrices rhoncus sodales. Maecenas a ante turpis. Suspendisse at mauris ex. Cras quis lacus sit amet lacus iaculis vulputate ac id nibh. Vestibulum consectetur porta ante vitae iaculis. Sed pretium euismod arcu, ut aliquet ipsum rutrum venenatis.</p>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Word break</h3>
              <div>
                <p class="text-break">abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789</p>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Transform</h3>
              <div>
                <p class="text-lowercase">Lowercased text</p>
                <p class="text-uppercase">Uppercased text</p>
                <p class="text-capitalize">Capitalized text</p>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Font size</h3>
              <div>
                <p class="fs-1">Font size 1</p>
                <p class="fs-2">Font size 2</p>
                <p class="fs-3">Font size 3</p>
                <p class="fs-4">Font size 4</p>
                <p class="fs-5">Font size 5</p>
                <p class="fs-6">Font size 6</p>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Font weight and italics</h3>
              <div>
                <p class="fw-bold">Bold text</p>
                <p class="fw-bolder">Bolder text</p>
                <p><strong class="fw-normal">Normal weight text</strong></p>
                <p class="fw-light">Light text</p>
                <p class="fw-lighter">Lighter text</p>
                <p class="fst-italic">Italic text</p>
                <p><em class="fst-normal">Normal text</em></p>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Line height</h3>
              <div>
                <h4 class="h5 text-muted mt-3">1</h4>
                <p class="lh-1">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui. Nam ultrices rhoncus sodales. Maecenas a ante turpis. Suspendisse at mauris ex. Cras quis lacus sit amet lacus iaculis vulputate ac id nibh. Vestibulum consectetur porta ante vitae iaculis. Sed pretium euismod arcu, ut aliquet ipsum rutrum venenatis.</p>
                <h4 class="h5 text-muted mt-3">Small</h4>
                <p class="lh-sm">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui. Nam ultrices rhoncus sodales. Maecenas a ante turpis. Suspendisse at mauris ex. Cras quis lacus sit amet lacus iaculis vulputate ac id nibh. Vestibulum consectetur porta ante vitae iaculis. Sed pretium euismod arcu, ut aliquet ipsum rutrum venenatis.</p>
                <h4 class="h5 text-muted mt-3">Base</h4>
                <p class="lh-base">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui. Nam ultrices rhoncus sodales. Maecenas a ante turpis. Suspendisse at mauris ex. Cras quis lacus sit amet lacus iaculis vulputate ac id nibh. Vestibulum consectetur porta ante vitae iaculis. Sed pretium euismod arcu, ut aliquet ipsum rutrum venenatis.</p>
                <h4 class="h5 text-muted mt-3">Large</h4>
                <p class="lh-lg">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui. Nam ultrices rhoncus sodales. Maecenas a ante turpis. Suspendisse at mauris ex. Cras quis lacus sit amet lacus iaculis vulputate ac id nibh. Vestibulum consectetur porta ante vitae iaculis. Sed pretium euismod arcu, ut aliquet ipsum rutrum venenatis.</p>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Monospace</h3>
              <div>
                <p class="font-monospace">Monospace text</p>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Reset color</h3>
              <div>
                <p>Reset <a href="#" class="text-reset">link</a> color</p>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Text decoration</h3>
              <div>
                <p class="text-decoration-underline">Text with text line underneath it</p>
                <p class="text-decoration-line-through">Text with text line going through it</p>
                <a href="#" class="text-decoration-none">Link without text decoration</a>
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